package com.kopring.coco.domain

import org.assertj.core.api.Assertions
import org.assertj.core.api.Assertions.assertThat
import org.junit.jupiter.api.Assertions.assertTrue
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.transaction.annotation.Transactional

@Transactional
@SpringBootTest
class PlaceRepositoryTest{

    @Autowired
    lateinit var placeRepository: PlaceRepository

    @Test
    fun save(){
        var place = Place("뉴욕")

        placeRepository.save(place)

        val dbPlaceObtional = placeRepository.findById(place.id)
        val dbplace = dbPlaceObtional.get()

        assertTrue(dbPlaceObtional.isPresent)

        assertThat(dbplace.id).isEqualTo(place.id)
        assertThat(dbplace.title).isEqualTo(place.title)

    }
}
