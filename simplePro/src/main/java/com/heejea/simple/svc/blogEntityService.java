package com.heejea.simple.svc;

import java.util.List;

import com.heejea.simple.entity.blogEntity;
import com.heejea.simple.entity.myServiceEntity;

public interface blogEntityService {

	
	// 전체 조회 
	public List<blogEntity> init();
	// ID 조회
	public List<blogEntity> searchFindId(String findId);
	// 저장
	public blogEntity saveBlog();
	// 삭제
	public void deleteBlog();
	//
	
}
