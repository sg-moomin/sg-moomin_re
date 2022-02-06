package com.heejea.simple.svc;

import java.util.Map;

import com.heejea.simple.vo.blogVo;

public interface blogCreateService {
	
	public blogVo saveBlog(Map<String, Object> param);
	
}
