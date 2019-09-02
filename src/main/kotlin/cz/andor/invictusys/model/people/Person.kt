package cz.andor.invictusys.model.people

import cz.andor.invictusys.model.AbstractEntity
import javax.persistence.Entity
import javax.persistence.Table


@Entity
@Table(name = "person")
class Person: AbstractEntity() {

    var name: String? = null

    var imagePath: String? = null
}