package cz.andor.invictusys.service

import cz.andor.invictusys.model.people.Person
import cz.andor.invictusys.repository.PersonRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class PersonService {

    @Autowired
    private lateinit var personRepository: PersonRepository

    @Transactional(readOnly = true)
    fun findByName(name: String): Person? {
        return personRepository.findByName(name)
    }

    @Transactional(readOnly = true)
    fun findAll(): MutableList<Person> {
        return personRepository.findAll()
    }

    @Transactional(readOnly = true)
    fun find(id: Long): Person? {
        val person = personRepository.findById(id)
        return if (person.isPresent) person.get() else null
    }

    @Transactional
    fun save(person: Person) {
        personRepository.save(person)
    }

}