package cz.andor.invictusys.model.army

import cz.andor.invictusys.model.AbstractEntity
import cz.andor.invictusys.model.country.Country
import javax.persistence.Entity
import javax.persistence.OneToOne

@Entity
class Recruit : AbstractEntity() {

    @OneToOne
    var unitType: UnitType? = null

    @OneToOne
    var country: Country? = null

    var monthsToFinish: Int = 0
}