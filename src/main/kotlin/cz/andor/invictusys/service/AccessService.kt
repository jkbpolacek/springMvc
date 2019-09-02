package cz.andor.invictusys.service

import cz.andor.invictusys.model.AbstractEntity
import cz.andor.invictusys.model.access.AccessLevel
import cz.andor.invictusys.model.access.Role
import cz.andor.invictusys.model.access.User
import cz.andor.invictusys.repository.AccessRepository
import cz.andor.invictusys.repository.UserRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class AccessService {
    @Autowired
    private lateinit var accessRepository: AccessRepository

    @Autowired
    private lateinit var userRepository: UserRepository

    @Transactional(readOnly = true)
    fun getAccess(abstractEntity: AbstractEntity, user: User): AccessLevel {
        return when (user.role) {

            Role.ROLE_ADMIN -> {
                AccessLevel.ADMIN
            }
            Role.ROLE_USER -> {
                accessRepository.findByUser(user).firstOrNull { it.entity == abstractEntity }?.level
                        ?: AccessLevel.MINIMUM
            }
            else -> {
                AccessLevel.MINIMUM
            }
        }
    }


    @Transactional(readOnly = true)
    fun getAccessByUserName(abstractEntity: AbstractEntity, userName: String): AccessLevel {
        return userRepository.findByUsername(userName)?.let {
            getAccess(abstractEntity, it)
        } ?: AccessLevel.MINIMUM

    }

}