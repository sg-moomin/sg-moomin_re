package com.heejea.simple.repository;


import com.heejea.simple.entity.noticeboardEntity;
import com.heejea.simple.entity.profileEntity;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.*;


@Repository
public interface noticeboardRepository extends JpaRepository<noticeboardEntity, Integer>{


}
