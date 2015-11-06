package com.reserve.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.reserve.dao.*;
import com.common.Model;

public class ReviewUpdateModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("EUC-KR");
		String re_content=req.getParameter("re_content");
		String re_hno=req.getParameter("re_hno");
		String page=req.getParameter("page");
		String re_no=req.getParameter("re_no");
		// DB연동
		ReviewDTO d=new ReviewDTO();/*
		d.setRe_no(Integer.parseInt(re_no));
		d.setRe_content(re_content);*/
		//DB연동
		ReserveDAO.reviewReUpdate(d);
		req.setAttribute("re_hno", re_hno);
		req.setAttribute("page", page);
		return "reserve/review_ok.jsp";
		
	}

}
