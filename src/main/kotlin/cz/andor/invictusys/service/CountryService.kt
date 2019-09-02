package cz.andor.invictusys.service

import cz.andor.invictusys.model.country.Country
import cz.andor.invictusys.repository.country.CountryRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class CountryService {

    @Autowired
    private lateinit var countryRepository: CountryRepository

    @Autowired
    private lateinit var userService: UserService

    @Transactional
    fun save(country: Country) {
        countryRepository.save(country)
    }

    @Transactional(readOnly = true)
    fun findByCountryname(name: String): Country? {
        return countryRepository.findByName(name)
    }

    @Transactional(readOnly = true)
    fun findByUserName(name: String): Country? {
        return userService.findByUsername(name)?.let {
            countryRepository.findByOwner(it)
        }
    }

    fun findById(id: Long): Country? {
        val country = countryRepository.findById(id)
        return if (country.isPresent) country.get() else null
    }


}