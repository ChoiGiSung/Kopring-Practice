package com.kopring.coco.domain

import org.springframework.data.jpa.repository.JpaRepository

interface ReviewRepository : JpaRepository<Review,Long> {
}
