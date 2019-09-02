package cz.andor.invictusys.controller

import cz.andor.invictusys.Utils
import cz.andor.invictusys.service.AccessService
import cz.andor.invictusys.service.PersonService
import org.slf4j.LoggerFactory
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.util.UriComponentsBuilder
import javax.rmi.CORBA.Util


@Controller
@RequestMapping("person")
class PersonController {
    @Value("\${spring.application.name}")
    internal var appName: String? = null

    @Autowired
    private lateinit var accessService: AccessService

    @Autowired
    private lateinit var personService: PersonService

    @GetMapping("")
    fun personPage(model: Model): String {

        model.addAttribute("appName", appName)
        model.addAttribute("accessLevel", 1)
        return "person"

    }

    @GetMapping("/{id}")
    fun personPage(model: Model,
                   uriBuilder: UriComponentsBuilder,
                   @PathVariable id: Long): String {

        val person = personService.find(id)

        if (person == null) {
            return "redirect:" + uriBuilder.path("noaccess").build().toUriString();
        }

        model.addAttribute("appName", appName)
        model.addAttribute("accessLevel",  accessService.getAccessByUserName(person, Utils.getCurrentUserName()).accessLevel)
        return "person"

    }


    companion object {
        private val log = LoggerFactory.getLogger(PersonController::class.java)
    }
}