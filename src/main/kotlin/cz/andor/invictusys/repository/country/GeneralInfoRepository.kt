package cz.andor.invictusys.repository.country

import cz.andor.invictusys.model.country.GeneralInfo
import org.springframework.data.jpa.repository.JpaRepository

interface GeneralInfoRepository : JpaRepository<GeneralInfo, Long> {
}