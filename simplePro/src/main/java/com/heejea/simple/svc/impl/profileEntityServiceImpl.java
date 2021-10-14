package com.heejea.simple.svc.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.heejea.simple.entity.noticeboardEntity;
import com.heejea.simple.repository.noticeboardRepository;
import com.heejea.simple.repository.projectRepository;
import com.heejea.simple.svc.profileEntityService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class profileEntityServiceImpl implements profileEntityService {


	final private projectRepository pRepository;
	final private noticeboardRepository nRepository;
	
	@Override
	public List<noticeboardEntity> mainInit() {
		List<noticeboardEntity> result = nRepository.findAll();
		return result;

	}

	
}
