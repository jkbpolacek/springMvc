package cz.andor.invictusys

import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.web.util.UriComponentsBuilder

object Utils {

    fun getCurrentUserName(): String {
        val principal = SecurityContextHolder.getContext().authentication.principal
        return if (principal is UserDetails) {
            principal.username
        } else {
            principal.toString()
        }
    }

    fun getCurrentUserRoles(): Collection<GrantedAuthority> {
        val principal = SecurityContextHolder.getContext().authentication.principal
        return if (principal is UserDetails) {
            principal.authorities
        } else {
            listOf()
        }
    }

    fun isUserAdmin(): Boolean {
        val principal = SecurityContextHolder.getContext().authentication.principal
        return if (principal is UserDetails) {
            principal.authorities.any { it.authority == "ADMIN" }
        } else {
            false
        }
    }

    fun noAccess(uriBuilder: UriComponentsBuilder): String = "redirect:" + uriBuilder.path("noaccess").build().toUriString()
}

/*<td><%--@elvariable id="unitTypeRecruit" type="cz.andor.invictusys.model.AbstractEntity"--%>
                                                      <button class="btn btn-lg btn-primary btn-block" onclick="$.post('/${country.id}/recruit/${army.id}')">Naverbovať</button></td>*/