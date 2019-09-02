package cz.andor.invictusys.repository.country

import cz.andor.invictusys.model.country.NobleInfo
import org.springframework.data.jpa.repository.JpaRepository

interface NobleInfoRepository : JpaRepository<NobleInfo, Long> {
}