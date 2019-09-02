package cz.andor.invictusys.repository

import cz.andor.invictusys.model.access.User
import cz.andor.invictusys.model.people.Person
import org.springframework.data.jpa.repository.JpaRepository

interface PersonRepository : JpaRepository<Person, Long> {
    fun findByName(name: String): Person?
}
