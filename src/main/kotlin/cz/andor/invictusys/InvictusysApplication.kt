package cz.andor.invictusys

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.autoconfigure.domain.EntityScan
import org.springframework.boot.builder.SpringApplicationBuilder
import org.springframework.boot.runApplication
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer
import org.springframework.data.jpa.repository.config.EnableJpaAuditing
import org.springframework.data.jpa.repository.config.EnableJpaRepositories


@EnableJpaRepositories("cz.andor.invictusys")
@EntityScan("cz.andor.invictusys")
@SpringBootApplication
class InvictusysApplication: SpringBootServletInitializer() {


    override fun configure(application: SpringApplicationBuilder): SpringApplicationBuilder {
        return application.sources(InvictusysApplication::class.java)
    }


}
fun main(args: Array<String>) {
    runApplication<InvictusysApplication>(*args)
}