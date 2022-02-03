package com.heejea.simple.svc;

import java.util.List;

import com.heejea.simple.entity.blogPostEntity;
import com.heejea.simple.entity.myServiceEntity;

public interface blogPostEntityService {

	
	// 전체 조회 
	public List<blogPostEntity> init();
	// ID 조회
	public List<blogPostEntity> searchFindId(String findId);
	// 저장
	public blogPostEntity saveBlogPost();
	// 삭제
	public void deleteBlogPost();
	//
	public List<blogPostEntity> findByPostMainTitle();
	
}
