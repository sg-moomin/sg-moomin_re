package com.heejea.simple.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.heejea.simple.entity.*;
import com.heejea.simple.svc.blogCreateService;
import com.heejea.simple.svc.blogEntityService;
import com.heejea.simple.svc.blogPostEntityService;
import com.heejea.simple.svc.myServiceEntityService;
import com.heejea.simple.svc.profileEntityService;
import com.heejea.simple.vo.blogPostVo;
import com.heejea.simple.vo.blogVo;

import lombok.RequiredArgsConstructor;

@Controller
@RestController	
@RequiredArgsConstructor
public class blogCtl {

	@Autowired
	public profileEntityService profileEntitySvc;
	@Autowired
	public myServiceEntityService myServiceEntitySvc;
	@Autowired
	public blogPostEntityService blogPostEntitySvc;
	@Autowired
	public blogEntityService blogEntitySvc;
	@Autowired
	public blogCreateService blogCreateSvc;
	
	
	@RequestMapping(value="/blogDetail", method=RequestMethod.GET)
	public ModelAndView blogDetail(ModelAndView M) {
		System.out.println("blogDetail page");
		M.setViewName("blogDetail");
		
		return M;
	}
	
	@RequestMapping(value="/blogDetail", method=RequestMethod.POST)
	public ModelAndView blogDetail(@RequestParam Map<String, Object> param, ModelAndView M){
		System.out.println("Map test : " + param.toString());
		//		System.out.print("test : " + deleteNumber);
		System.out.println("blogDetail page");
		M.setViewName("blogDetail");
		
		return M;
	}
	
	@ResponseBody
	@RequestMapping(value="/blog", method=RequestMethod.POST)
	public ModelAndView blog(ModelAndView M, @RequestParam Map<String, Object> param) {
		System.out.println("blog test : " + param.toString());
		M.setViewName("blogDetail");
		
		return M;
	}
	
	@ResponseBody
	@RequestMapping(value="/blog", method=RequestMethod.GET)
	public ModelAndView blog(ModelAndView M) {
		List<blogEntity> result = blogEntitySvc.init();
		M.addObject("myBlog", result);
		M.setViewName("blog");
		
		return M;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/blogPost", method=RequestMethod.GET)
	public ModelAndView blogPost(ModelAndView M, String findPostId) {
			
		// List<blogPostEntity> result = blogPostEntitySvc.init();
		blogPostEntity post = blogPostEntitySvc.searchFindId(findPostId);
		String imgtitle = blogEntitySvc.searchImgTitle(findPostId);
		
		String postId = post.getPostid();
		// tage 조회
		List<String> tag = blogEntitySvc.searchFindTag(postId);
		// blogPostVo 추가	
		blogPostVo result = new blogPostVo();
		result.setPostId(post.getPostid());
		result.setPostMainTitle(post.getPostmaintitle());
		result.setPostSn(post.getPostsn());
		result.setPostSnTitle(post.getPostsntitle());
		result.setPostUrl(post.getPosturl());
		result.setImgTitle(imgtitle);
		
		
		M.addObject("myPost", result);
		M.addObject("tag", tag);
		M.setViewName("blogPost");
		
		return M;
	}
	
	@RequestMapping(value="/newPost", method=RequestMethod.GET)
	public ModelAndView newPost(ModelAndView M) {
		M.setViewName("newPost");
		
		return M;
	}
	
	
	@RequestMapping(value="/newPost", method=RequestMethod.POST)
	@ResponseBody
	public String newPost(ModelAndView M, @RequestBody Map<String, Object> param) throws IOException {
		
		blogVo result = blogCreateSvc.saveBlog(param);
		return "blog";
	}
	
	
	
	
}
