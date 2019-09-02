package cz.andor.invictusys.repository.country

import cz.andor.invictusys.model.country.DiplomacyInfo
import org.springframework.data.jpa.repository.JpaRepository

interface DiplomacyInfoRepository : JpaRepository<DiplomacyInfo, Long> {
}