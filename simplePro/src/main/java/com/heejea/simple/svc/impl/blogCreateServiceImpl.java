package com.heejea.simple.svc.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.heejea.simple.entity.blogEntity;
import com.heejea.simple.entity.blogPostEntity;
import com.heejea.simple.repository.blogPostRepository;
import com.heejea.simple.repository.blogRepository;
import com.heejea.simple.svc.blogCreateService;
import com.heejea.simple.vo.blogVo;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class blogCreateServiceImpl implements blogCreateService {
	
	@Autowired
	private blogRepository blogRepository;
	
    @Autowired
	private blogPostRepository blogPostRepository;
	
	/**
	 * Class Name : blogCreateServiceImpl
	 * DATE		  : 2022-02-06
	 * Author 	  : sg-moomin
	 * 
	 * [Ver]		  
	 * ---------------------------------
	 * - 1.0 Version : 최초생성 
	 * 
	 * */
	
	@Override
	public blogVo saveBlog(Map<String, Object> param) {
		
		/* Map -> Object 변환 */
		blogVo vo = new blogVo();
		vo.setBlogMainTitle((String)param.get("blogmaintitle"));
		vo.setBlogSnTitle((String)param.get("blogsntitle"));
		vo.setBlogTag((String)param.get("blogtag"));
		vo.setBlogSn((String)param.get("blogsn"));
		vo.setImgTitle((String)param.get("imgtitle"));
		vo.setPostUrl((String)param.get("posturl"));
		vo.setUsrId("sg-moomin");

		String defCd = "00000000";
		
		// 1. Blog Id 생성(채번)
		String blogCd = blogRepository.selectMaxBlogId();
		String blogSequence = "";
		
		if(blogCd == null || blogCd == "" ) {
			blogSequence = defCd;
		} else {
			blogSequence = blogCd.substring(1);
		}
	
		int blogNo = Integer.parseInt(blogSequence) + 1;
		String blogTmp = String.format("%08d", blogNo);
		String blogId = "B" + blogTmp;
		vo.setBlogId(blogId);
		System.out.println("prints :: " + blogNo);
		
		// 2. Post Id 생성(채번)
		String postCd = blogPostRepository.selectMaxPostId();
		
		String postSequence = "";
		if(postCd == null || postCd == "" ) {
			postSequence = defCd;
		} else {
			postSequence = postCd.substring(1);
		}

		int postNo = Integer.parseInt(postSequence) + 1;
		String postTmp = String.format("%08d", postNo);
		String postId = "P" + postTmp;
		vo.setPostId(postId);
		
		// insert
//		int result = blogRepository.saveBlog();
		
		// 3. Blog 내용 Insert 
		blogEntity blogEty = blogEntity.builder()
				.blogid(vo.getBlogId())
				.blogmaintitle(vo.getBlogMainTitle())
				.blogsn(vo.getBlogSn())
				.blogsntitle(vo.getBlogSnTitle())
				.blogtag(vo.getBlogTag())
				.imgtitle(vo.getImgTitle())
				.postid(vo.getPostId())
				.regid(vo.getUsrId())
				.uptid(vo.getUsrId())
				.build();
		blogRepository.save(blogEty);
		
		// 3. Post 내용 Insert 
		blogPostEntity postEty = blogPostEntity.builder()
				.postid(vo.getPostId())
				.postmaintitle(vo.getBlogMainTitle())
				.postsn(vo.getBlogSn())
				.posturl(vo.getPostUrl())
				.postlvl(vo.getPostLvl())
				.postupperlvl(vo.getPostUpperLvl())
				.regid(vo.getUsrId())
				.uptid(vo.getUsrId())
				.build();
		blogPostRepository.save(postEty);
		
		return vo;
	}

}
