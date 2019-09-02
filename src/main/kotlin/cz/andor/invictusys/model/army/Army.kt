package cz.andor.invictusys.model.army

import cz.andor.invictusys.model.AbstractEntity
import cz.andor.invictusys.model.country.Country
import cz.andor.invictusys.model.people.Person
import javax.persistence.*

@Entity
class Army : AbstractEntity() {

    @OneToOne
    var country: Country? = null

    @OneToOne
    var owner: Person? = null

    @OneToOne
    var commander: Person? = null

    var morale: Int = 0

    var discipline: Int = 0

    var loyalty: Int = 0

    var name: String = ""

    @OneToMany(mappedBy="army", fetch = FetchType.EAGER) // som lazy
    var units: List<Cohort> = listOf()
}