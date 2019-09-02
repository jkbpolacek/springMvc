package cz.andor.invictusys.model.army

import cz.andor.invictusys.model.AbstractEntity
import cz.andor.invictusys.model.country.Country
import javax.persistence.Entity
import javax.persistence.OneToOne

@Entity
class UnitType : AbstractEntity() {

    @OneToOne
    var country: Country? = null

    var popis: String = ""

    var name: String = ""

    var gold: Int = 0

    var zbroj: Int = 0

    var trainTime: Int = 0


}