package cz.andor.invictusys.repository.army

import cz.andor.invictusys.model.army.Army
import cz.andor.invictusys.model.army.Cohort
import cz.andor.invictusys.model.army.Recruit
import cz.andor.invictusys.model.army.UnitType
import cz.andor.invictusys.model.country.Country
import org.springframework.data.jpa.repository.JpaRepository


interface CohortRepository : JpaRepository<Cohort, Long> {
    fun findByArmy(army: Army): List<Cohort>
}


interface UnitTypeRepository : JpaRepository<UnitType, Long>{
    fun findByCountry(country: Country): List<UnitType>
}



interface ArmyRepository : JpaRepository<Army, Long> {
    fun findByCountry(country: Country): List<Army>
}

interface RecruitRepository : JpaRepository<Recruit, Long> {
    fun findByCountry(country: Country): List<Recruit>
}
