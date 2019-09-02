package cz.andor.invictusys.model.access

import cz.andor.invictusys.model.AbstractEntity
import cz.andor.invictusys.model.country.Country
import javax.persistence.*

@Entity
@Table(name = "invictuser")
class User: AbstractEntity() {

    var username: String? = null

    var password: String? = null

    @OneToOne
    var country: Country? = null

    @Transient
    var passwordConfirm: String? = null

    @Enumerated(EnumType.STRING)
    var role: Role? = Role.ROLE_GUEST
}


enum class Role {
    ROLE_ADMIN,
    ROLE_USER,
    ROLE_GUEST
}