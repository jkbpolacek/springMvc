
package cz.andor.invictusys.model.country

import cz.andor.invictusys.model.AbstractEntity
import cz.andor.invictusys.model.access.User
import javax.persistence.*

@Entity
@Table(name = "country")
class Country: AbstractEntity() {

    var name: String? = null

    var randomText: String ? = null

    @Enumerated(EnumType.STRING)
    var continent: Kontinent ? = null

    @OneToOne
    var owner: User? = null

}

enum class Kontinent(name: String) {
    KONTINENT1(""),
    KONTINENT2(""),
    KONTINENT3("")
}