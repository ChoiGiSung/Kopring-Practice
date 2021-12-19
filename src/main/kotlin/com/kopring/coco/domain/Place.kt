package com.kopring.coco.domain

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id

@Entity
class Place (var title: String){

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long = 0

}
