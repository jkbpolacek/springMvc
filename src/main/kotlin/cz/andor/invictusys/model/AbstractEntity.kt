package cz.andor.invictusys.model

import javax.persistence.*

@Entity
@Inheritance(strategy=InheritanceType.JOINED)
abstract class AbstractEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @SequenceGenerator(name = "idSequenceGenerator", sequenceName = "ID_GEN", allocationSize = 1000)
    var id: Long? = null

    override fun hashCode(): Int {
        val thisId = id
        return thisId?.hashCode() ?: super.hashCode()
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other == null) {
            return false
        }
        return if (other !is AbstractEntity) {
            false
        } else {
            this.id == other.id
        }
    }


    override fun toString(): String {
        return this.javaClass.name + ", id=" + this.id
    }
}