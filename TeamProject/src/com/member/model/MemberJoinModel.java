package com.member.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class MemberJoinModel implements Model {
	
	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setAttribute("pageNum", 5);
		req.setAttribute("jsp", "../join/join.jsp");
		return "main/index.jsp";
	}
}
