package com.heejea.simple.svc.impl;

import java.util.ArrayList;
import java.util.Arrays;
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
	public List<String> searchFindTag(String findId) {
		// TODO Auto-generated method stub
		List<String> result = new ArrayList<String>();
		String tags = blogRepository.searchFindTag(findId);
		
//		System.out.println("test : " + tags);
		
		String[] lists =  tags.split("&");
		
		for(String str : lists) {
			result.add(str);
		}
		
//	Arrays 사용
//		result.add(Arrays.toString(tags.split("&")));
//		System.out.println("test : " + Arrays.toString(tags.split("&")));
//		System.out.println("test : " + result.iterator().next());
//		System.out.println("test : " + result.get(0));
		
		return result;
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
