package cz.andor.invictusys.repository

import cz.andor.invictusys.model.access.Access
import cz.andor.invictusys.model.access.User
import org.springframework.data.jpa.repository.JpaRepository


interface AccessRepository : JpaRepository<Access, Long> {
    fun findByUser(user: User): List<Access>
}