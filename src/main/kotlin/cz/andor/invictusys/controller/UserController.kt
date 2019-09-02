package cz.andor.invictusys.controller

import cz.andor.invictusys.model.access.User
import cz.andor.invictusys.security.UserValidator
import cz.andor.invictusys.service.SecurityService
import cz.andor.invictusys.service.UserService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.validation.BindingResult
import org.springframework.web.bind.annotation.*

@Controller
class UserController {
    @Autowired
    private lateinit var userService: UserService

    @Autowired
    private lateinit var securityService: SecurityService

    @Autowired
    private lateinit var userValidator: UserValidator

    @GetMapping("/admin/registration")
    fun registration(model: Model): String {
        model.addAttribute("userForm", User())

        return "registration"
    }

    @PostMapping("/admin/registration")
    fun registration(@ModelAttribute("userForm") userForm: User, bindingResult: BindingResult): String {
        userValidator.validate(userForm, bindingResult)

        if (bindingResult.hasErrors()) {
            return "registration"
        }

        userService.save(userForm)

        return "redirect:/index"
    }


    @GetMapping("/login")
    fun login(model: Model, error: String?, logout: String?): String {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.")

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.")

        return "login"
    }
}