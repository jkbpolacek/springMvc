package cz.andor.invictusys.service

import cz.andor.invictusys.model.army.Army
import cz.andor.invictusys.model.army.Cohort
import cz.andor.invictusys.model.army.Recruit
import cz.andor.invictusys.model.army.UnitType
import cz.andor.invictusys.model.country.Country
import cz.andor.invictusys.repository.army.ArmyRepository
import cz.andor.invictusys.repository.army.CohortRepository
import cz.andor.invictusys.repository.army.RecruitRepository
import cz.andor.invictusys.repository.army.UnitTypeRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional


@Service
class ArmyService {
    @Autowired
    private lateinit var accessService: AccessService

    @Autowired
    private lateinit var armyRepository: ArmyRepository

    @Autowired
    private lateinit var cohortRepository: CohortRepository

    @Autowired
    private lateinit var unitTypeRepository: UnitTypeRepository

    @Autowired
    private lateinit var recruitRepository: RecruitRepository

    @Autowired
    private lateinit var countryService: CountryService

    @Transactional
    fun saveArmy(army: Army) {
        armyRepository.save(army)
    }

    @Transactional
    fun saveUnitType(unitType: UnitType) {
        unitTypeRepository.save(unitType)
    }

    @Transactional(readOnly = true)
    fun getUnitTypesForCountry(country: Country): List<UnitType> {
        return unitTypeRepository.findByCountry(country)
    }

    @Transactional(readOnly = true)
    fun getUnitTypesForCountryId(countryId: Long): List<UnitType> {
        return countryService.findById(countryId)?.let {
            getUnitTypesForCountry(it)
        } ?: listOf()
    }

    @Transactional(readOnly = true)
    fun getUnitsInArmy(army: Army): List<Cohort> {
        return cohortRepository.findByArmy(army)
    }

    @Transactional(readOnly = true)
    fun getRecruitsForCountry(country: Country): List<Recruit> {
        return recruitRepository.findByCountry(country)
    }

    @Transactional(readOnly = true)
    fun getRecruitsForCountryId(countryId: Long): List<Recruit> {
        return countryService.findById(countryId)?.let {
            getRecruitsForCountry(it)
        } ?: listOf()
    }

    @Transactional(readOnly = true)
    fun getArmiesByCountry(country: Country): List<Army> {
        return armyRepository.findByCountry(country)
    }

    @Transactional
    fun processNextMonthRecruits() {
        val recruits = recruitRepository.findAll()
        recruits.onEach {
            it.monthsToFinish -= 1
        }
        recruitRepository.saveAll(recruits.filter { it.monthsToFinish > 0 })

        recruits.filter { it.monthsToFinish == 0 }.forEach {
            val finishedCohort = Cohort()
            finishedCohort.army = null
            finishedCohort.country = it.country
            finishedCohort.unitType = it.unitType
            cohortRepository.save(finishedCohort)
            recruitRepository.delete(it)
        }


    }
}