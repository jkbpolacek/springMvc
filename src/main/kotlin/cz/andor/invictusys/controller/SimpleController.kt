package cz.andor.invictusys.controller

import cz.andor.invictusys.repository.country.CountryRepository
import cz.andor.invictusys.service.UserService
import org.slf4j.LoggerFactory
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping


@Controller
@RequestMapping("")
class SimpleController {
    @Value("\${spring.application.name}")
    internal var appName: String? = null

    @Autowired
    private lateinit var countryRepository: CountryRepository

    @Autowired
    private lateinit var userService: UserService

    @GetMapping("", "/index")
    fun homePage(model: Model): String {
        model.addAttribute("appName", appName)
        return "index"
    }

    @GetMapping("/maps")
    fun mapPage(model: Model): String {
        model.addAttribute("appName", appName)
        return "maps"
    }

    @GetMapping("/world")
    fun worldPage(model: Model): String {
        model.addAttribute("appName", appName)
        return "world/world"
    }


    @GetMapping("/countries")
    fun countryPage(model: Model): String {
        model.addAttribute("appName", appName)

        val krajiny = countryRepository.findAll()
        model.addAttribute("countries", krajiny)
        return "countries"
    }


    @GetMapping("/noaccess")
    fun noAccessPage(model: Model): String {
        model.addAttribute("appName", appName)
        return "noaccess"
    }

    @GetMapping("/stats")
    fun statsPage(model: Model): String {
        model.addAttribute("appName", appName)
        return "world/stats"
    }

    @GetMapping("/races")
    fun racesPage(model: Model): String {
        model.addAttribute("appName", appName)
        return "world/races"
    }


    companion object {

        private val log = LoggerFactory.getLogger(SimpleController::class.java)
    }
}