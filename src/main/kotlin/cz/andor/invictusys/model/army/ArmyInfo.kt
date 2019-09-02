package cz.andor.invictusys.model.army

import cz.andor.invictusys.model.AbstractEntity
import cz.andor.invictusys.model.country.Country
import javax.persistence.Entity
import javax.persistence.OneToOne
import javax.persistence.Table


@Entity
@Table(name = "army")
class ArmyInfo: AbstractEntity() {

    @OneToOne
    var country: Country? = null

}