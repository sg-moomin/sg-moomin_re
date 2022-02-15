package com.heejea.simple.svc;

import java.util.List;

import com.heejea.simple.entity.blogEntity;
import com.heejea.simple.entity.myServiceEntity;

public interface blogEntityService {

	
	// 전체 조회 
	public List<blogEntity> init();
	// Tag 조회
	public List<String> searchFindTag(String findId);
	// 저장
	public blogEntity saveBlog();
	// 삭제
	public void deleteBlog();
	// 이미지 파일 찾기 
	public String searchImgTitle(String findId);
	
}
