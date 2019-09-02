package cz.andor.invictusys.model.access

import cz.andor.invictusys.model.AbstractEntity
import javax.persistence.*


@Entity
@Table(name = "access")
class Access : AbstractEntity() {

    @OneToOne
    var user: User? = null

    @OneToOne
    var entity: AbstractEntity? = null

    @Enumerated(EnumType.STRING)
    var level: AccessLevel? = null
}


enum class AccessLevel(val accessLevel: Int) {
    HIDDEN(0),
    MINIMUM(1),
    LOW(2),
    MEDIUM(3),
    HIGH(4),
    TOTAL(5),
    ADMIN(6)
}
