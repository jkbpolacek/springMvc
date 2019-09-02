package cz.andor.invictusys.controller

import cz.andor.invictusys.model.people.Person
import cz.andor.invictusys.service.PersonService
import org.slf4j.LoggerFactory
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping


@Controller
@RequestMapping("people")
class PeopleController {
    @Value("\${spring.application.name}")
    internal var appName: String? = null

    @Autowired
    private lateinit var personService: PersonService

    @GetMapping("")
    fun peoplePage(model: Model): String {

        model.addAttribute("appName", appName)
        model.addAttribute("people1", personService.findAll())

        return "people"

    }

    companion object {
        private val log = LoggerFactory.getLogger(PersonController::class.java)
    }
}