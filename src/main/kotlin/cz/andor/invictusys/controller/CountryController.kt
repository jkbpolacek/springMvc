package cz.andor.invictusys.controller

import cz.andor.invictusys.Utils
import cz.andor.invictusys.service.AccessService
import cz.andor.invictusys.service.CountryService
import org.slf4j.LoggerFactory
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.util.UriComponentsBuilder


@Controller
@RequestMapping("country")
class CountryController {
    @Value("\${spring.application.name}")
    internal var appName: String? = null

    @Autowired
    private lateinit var countryService: CountryService

    @Autowired
    private lateinit var accessService: AccessService

    @GetMapping("/my")
    fun myCountryPage(model: Model,
                      uriBuilder: UriComponentsBuilder): String {
        val country = countryService.findByUserName(Utils.getCurrentUserName())
        return if (country == null) {
            Utils.noAccess(uriBuilder)
        } else {
            "redirect:" + uriBuilder.path("country/${country.id}").build().toUriString()
        }
    }

    @GetMapping("/{id}")
    fun countryPage(model: Model,
                    uriBuilder: UriComponentsBuilder,
                    @PathVariable id: Long): String {


        val country = countryService.findById(id) ?: return Utils.noAccess(uriBuilder)
        model.addAttribute("appName", appName)
        model.addAttribute("id", id)

        val access = accessService.getAccessByUserName(country, Utils.getCurrentUserName())

        log.info(access.toString())
        model.addAttribute("accessLevel", access.accessLevel)
        model.addAttribute("country", country)
        return "country"

    }


    companion object {
        private val log = LoggerFactory.getLogger(CountryController::class.java)
    }
}