package com.heejea.simple.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.heejea.simple.entity.myServiceEntity;


@Repository
public interface myServiceRepository extends JpaRepository<myServiceEntity, Integer> {

}
