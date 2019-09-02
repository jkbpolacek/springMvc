package cz.andor.invictusys.repository.country

import cz.andor.invictusys.model.access.User
import cz.andor.invictusys.model.country.Country
import org.springframework.data.jpa.repository.JpaRepository

interface CountryRepository : JpaRepository<Country, Long> {
    fun findByName(name: String): Country?

    fun findByOwner(owner: User): Country?
}