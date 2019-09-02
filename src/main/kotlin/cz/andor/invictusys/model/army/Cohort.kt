package cz.andor.invictusys.model.army

import cz.andor.invictusys.model.AbstractEntity
import cz.andor.invictusys.model.country.Country
import javax.persistence.Entity
import javax.persistence.ManyToOne
import javax.persistence.OneToOne

@Entity
class Cohort : AbstractEntity() {

    @OneToOne
    var country: Country? = null

    @OneToOne
    var unitType: UnitType? = null

    @ManyToOne
    var army: Army? = null
}