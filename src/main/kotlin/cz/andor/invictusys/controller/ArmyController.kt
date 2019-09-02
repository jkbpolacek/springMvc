package cz.andor.invictusys.controller

import cz.andor.invictusys.Utils
import cz.andor.invictusys.service.AccessService
import cz.andor.invictusys.service.ArmyService
import cz.andor.invictusys.service.CountryService
import cz.andor.invictusys.service.PersonService
import org.slf4j.LoggerFactory
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.servlet.mvc.support.RedirectAttributes
import org.springframework.web.util.UriComponentsBuilder

@Controller
@RequestMapping("army")
class ArmyController {
    @Value("\${spring.application.name}")
    internal var appName: String? = null

    @Autowired
    private lateinit var countryService: CountryService

    @Autowired
    private lateinit var armyService: ArmyService

    @Autowired
    private lateinit var accessService: AccessService

    @Autowired
    private lateinit var personService: PersonService

    @GetMapping("/my")
    fun myArmyPage(model: Model,
                   uriBuilder: UriComponentsBuilder): String {
        val country = countryService.findByUserName(Utils.getCurrentUserName())
        return if (country == null) {
            Utils.noAccess(uriBuilder)
        } else {
            "redirect:" + uriBuilder.path("army/${country.id}").build().toUriString()
        }
    }


    @GetMapping("/{countryId}")
    fun armyPage(model: Model,
                 uriBuilder: UriComponentsBuilder,
                 @PathVariable countryId: Long): String {


        val country = countryService.findById(countryId) ?: return Utils.noAccess(uriBuilder)

        model.addAttribute("appName", appName)
        model.addAttribute("country", country)

        model.addAttribute("armies", armyService.getArmiesByCountry(country))
        model.addAttribute("recruits", armyService.getRecruitsForCountry(country))
        model.addAttribute("unitTypes", armyService.getUnitTypesForCountry(country))

        model.addAttribute("accessLevel", 1)



        return "army/armyinfo"

    }


    @PostMapping("/{countryId}/recruit/{recruitId}")
    fun recruit(uriBuilder: UriComponentsBuilder,
                redirectAttributes: RedirectAttributes,
                @PathVariable countryId: Long,
                @PathVariable recruitId: Long): String {


        redirectAttributes.addFlashAttribute(
                "alert_success",
                "Unit nakrerutovaný.")


        return "redirect:" + uriBuilder.path("/army/$countryId").build().toUriString()
    }

    @GetMapping("/detail/{armyid}")
    fun armyDetailPage(model: Model,
                       uriBuilder: UriComponentsBuilder,
                       @PathVariable armyid: Long): String {


        return "army/armyinfo"
    }


    companion object {
        private val log = LoggerFactory.getLogger(ArmyController::class.java)
    }
}