package cz.andor.invictusys.controller

import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.boot.web.servlet.error.ErrorController
import org.springframework.stereotype.Controller


@Controller
class NoAccessController : ErrorController {

    @RequestMapping("/error")
    fun handleError(): String {
        //do something like logging
        return "noaccess"
    }

    override fun getErrorPath(): String {
        return "/error"
    }
}