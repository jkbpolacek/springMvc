package cz.andor.invictusys.repository.country

import cz.andor.invictusys.model.army.ArmyInfo
import org.springframework.data.jpa.repository.JpaRepository

interface ArmyInfoRepository : JpaRepository<ArmyInfo, Long> {
}