package com.heejea.simple.svc;

import java.util.List;

import com.heejea.simple.entity.blogPostEntity;
import com.heejea.simple.entity.myServiceEntity;

public interface blogEntityService {

	
	// 전체 조회 
	public List<blogPostEntity> init();
	// ID 조회
	public List<blogPostEntity> searchFindId(String findId);
	// 저장
	public blogPostEntity saveBlog();
	// 삭제
	public void deleteBlog();
	//
	
}
