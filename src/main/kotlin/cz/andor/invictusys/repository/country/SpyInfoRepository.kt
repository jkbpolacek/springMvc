package cz.andor.invictusys.repository.country

import cz.andor.invictusys.model.country.SpyInfo
import org.springframework.data.jpa.repository.JpaRepository

interface SpyInfoRepository : JpaRepository<SpyInfo, Long> {
}