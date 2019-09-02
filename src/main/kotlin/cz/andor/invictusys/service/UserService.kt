package cz.andor.invictusys.service

import cz.andor.invictusys.model.access.Role
import cz.andor.invictusys.model.access.User
import cz.andor.invictusys.repository.UserRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional


interface UserService {
    fun save(user: User)

    fun findByUsername(username: String): User?
}

@Service
class UserServiceImpl : UserService {
    @Autowired
    private lateinit var userRepository: UserRepository
    @Autowired
    private lateinit var bCryptPasswordEncoder: BCryptPasswordEncoder

    @Transactional
    override fun save(user: User) {
        user.password = bCryptPasswordEncoder.encode(user.password)
        user.role = Role.ROLE_USER
        userRepository.save(user)
    }

    @Transactional
    override fun findByUsername(username: String): User? {
        return userRepository.findByUsername(username)
    }
}