package com.heejea.simple.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.heejea.simple.entity.*;
import com.heejea.simple.repository.blogPostRepository;
import com.heejea.simple.repository.myServiceRepository;
import com.heejea.simple.repository.noticeboardRepository;
import com.heejea.simple.repository.projectRepository;
import com.heejea.simple.svc.blogPostEntityService;
import com.heejea.simple.svc.myServiceEntityService;
import com.heejea.simple.svc.profileEntityService;

import lombok.Builder;
import lombok.RequiredArgsConstructor;

@Controller
@RestController	
@RequiredArgsConstructor
public class blogCtl {

	private projectRepository pRepository;
	private noticeboardRepository nRepository;
	private myServiceRepository myRepository;
	private blogPostRepository blogPostRepository;
	
	
	@Autowired
	public profileEntityService profileEntitySvc;
	
	@Autowired
	public myServiceEntityService myServiceEntitySvc;
	

	@Autowired
	public blogPostEntityService blogPostEntitySvc;
	
	
	
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
	
	
	@RequestMapping(value="/blog", method=RequestMethod.POST)
	public ModelAndView blog(ModelAndView M, @RequestParam Map<String, Object> param) {
		System.out.println("blog test : " + param.toString());
		M.setViewName("blogDetail");
		
		return M;
	}
	
	@RequestMapping(value="/blog", method=RequestMethod.GET)
	public ModelAndView blog(ModelAndView M) {
		
		System.out.println("blog page");
		M.setViewName("blog");
		
		return M;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/blogPost", method=RequestMethod.GET)
	public ModelAndView blogPost(ModelAndView M, String findPostId) {
			
		// List<blogPostEntity> result = blogPostEntitySvc.init();
		List<blogPostEntity> result = blogPostEntitySvc.searchFindId(findPostId);
		List<blogPostEntity> titles = blogPostEntitySvc.findByPostMainTitle();
	
		
		M.addObject("myPost", result);
		M.setViewName("blogPost");
		
		
		return M;
	}
}
