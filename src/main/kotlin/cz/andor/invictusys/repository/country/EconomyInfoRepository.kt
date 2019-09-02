package cz.andor.invictusys.repository.country

import cz.andor.invictusys.model.country.EconomyInfo
import org.springframework.data.jpa.repository.JpaRepository

interface EconomyInfoRepository : JpaRepository<EconomyInfo, Long> {
}