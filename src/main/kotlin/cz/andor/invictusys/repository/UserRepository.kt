package cz.andor.invictusys.repository

import cz.andor.invictusys.model.access.User
import org.springframework.data.jpa.repository.JpaRepository

interface UserRepository : JpaRepository<User, Long> {
    fun findByUsername(username: String): User?
}
