package com.heejea.simple.svc.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.heejea.simple.entity.blogPostEntity;
import com.heejea.simple.entity.noticeboardEntity;
import com.heejea.simple.repository.blogPostRepository;
import com.heejea.simple.repository.noticeboardRepository;
import com.heejea.simple.repository.projectRepository;
import com.heejea.simple.svc.blogPostEntityService;
import com.heejea.simple.svc.profileEntityService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class blogEntityServiceImpl implements blogPostEntityService {
	
	final private blogPostRepository blogPostRepository;
	
	@Override
	public List<blogPostEntity> init() {
		
		List<blogPostEntity> result = this.selectFindAllData();
		return result;
	}

	@Override
	public List<blogPostEntity> searchFindId(String findId) {
	
		List<blogPostEntity> result = new ArrayList<blogPostEntity>();
		
		List<blogPostEntity> postList = this.selectFindAllData();
		for(blogPostEntity blogPost : postList) {
			if(blogPost.getPostid().equals(findId)) {
				blogPost.getPostsn().replace("\r\n", "<br>");
				System.out.println("blogPost ::::: " + blogPost.getPostsn());
				
				result.add(blogPost);
				break;
			}
		} 
		
		return result;
	}

	@Override
	public blogPostEntity saveBlogPost() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteBlogPost() {
		// TODO Auto-generated method stub
		
	}
	
	
	/**
	 * FindAll 데이터 조회
	 * */
	private List<blogPostEntity> selectFindAllData(){
		List<blogPostEntity> result = blogPostRepository.findAll();
		return result;
	}

	@Override
	public List<blogPostEntity> findByPostMainTitle() {
		
		List<blogPostEntity> postList = new ArrayList<blogPostEntity>();
		postList = blogPostRepository.findByPostMainTitle("2021 티스토리 테스트");
		return postList;
	}

	
}
