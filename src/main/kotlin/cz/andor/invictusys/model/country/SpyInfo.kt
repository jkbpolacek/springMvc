package cz.andor.invictusys.model.country

import cz.andor.invictusys.model.AbstractEntity
import javax.persistence.Entity
import javax.persistence.OneToOne
import javax.persistence.Table


@Entity
class SpyInfo: AbstractEntity() {

    @OneToOne
    var country: Country? = null

}