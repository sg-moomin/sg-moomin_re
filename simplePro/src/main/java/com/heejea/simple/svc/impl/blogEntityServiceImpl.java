package com.heejea.simple.svc.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.heejea.simple.entity.blogEntity;
import com.heejea.simple.repository.blogRepository;
import com.heejea.simple.svc.blogEntityService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class blogEntityServiceImpl implements blogEntityService {
	
	@Autowired
	private blogRepository blogRepository;

	@Override
	public List<blogEntity> init() {
		List<blogEntity> blogList = new ArrayList<blogEntity>();
		blogList = blogRepository.init();
		return blogList;
	}

	@Override
	public List<blogEntity> searchFindId(String findId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public blogEntity saveBlog() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteBlog() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String searchImgTitle(String findId) {
		String result = blogRepository.selectImgTitle(findId);
		return result;
	}

	

	
}
