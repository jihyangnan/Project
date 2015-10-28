package com.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//공통 사용
public interface Model {
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res)
		throws Exception;
}
