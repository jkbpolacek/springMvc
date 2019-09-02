package cz.andor.invictusys.model.economy

import cz.andor.invictusys.model.AbstractEntity
import cz.andor.invictusys.model.country.Country
import cz.andor.invictusys.model.people.Person
import javax.persistence.Entity
import javax.persistence.ManyToOne
import javax.persistence.OneToOne


@Entity
class Holding : AbstractEntity() {

    @OneToOne
    var country: Country? = null

    @ManyToOne
    var owner: Person? = null
}