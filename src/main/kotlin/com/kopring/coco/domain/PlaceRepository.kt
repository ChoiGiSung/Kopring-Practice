package com.kopring.coco.domain

import org.springframework.data.jpa.repository.JpaRepository

interface PlaceRepository : JpaRepository<Place,Long> {
}
