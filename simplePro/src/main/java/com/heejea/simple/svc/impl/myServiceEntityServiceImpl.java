package com.heejea.simple.svc.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.heejea.simple.entity.myServiceEntity;
import com.heejea.simple.entity.noticeboardEntity;
import com.heejea.simple.repository.myServiceRepository;
import com.heejea.simple.repository.noticeboardRepository;
import com.heejea.simple.repository.projectRepository;
import com.heejea.simple.svc.myServiceEntityService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class myServiceEntityServiceImpl implements myServiceEntityService {

	
	final private myServiceRepository myRepository;
	
	@Override
	public List<myServiceEntity> init() {
		List<myServiceEntity> result = myRepository.findAll();
		return result;
	}

}
