package cz.andor.invictusys.security

import cz.andor.invictusys.model.access.User
import cz.andor.invictusys.service.UserService
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
class UserValidator : Validator {
    @Autowired
    private lateinit var userService: UserService

    override fun supports(aClass: Class<*>): Boolean {
        return User::class.java == aClass
    }

    override fun validate(o: Any, errors: Errors) {
        val user = o as User

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty")
        if (user.username!!.length > 32) {
            errors.rejectValue("username", "Size.userForm.username")
        }
        if (userService.findByUsername(user.username!!) != null) {
            errors.rejectValue("username", "Duplicate.userForm.username")
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty")
        if (user.password!!.length < 8 || user.password!!.length > 32) {
            errors.rejectValue("password", "Size.userForm.password")
        }

        if (!user.passwordConfirm.equals(user.password)) {
            errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm")
        }
    }
}