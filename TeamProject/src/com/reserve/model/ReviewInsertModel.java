package com.reserve.model;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.common.Model;
import com.reserve.dao.*;
public class ReviewInsertModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String re_Content=req.getParameter("review_content");
		//String re_no=req.getParameter("re_no");
		String re_hNo=req.getParameter("re_hNo");
		String page=req.getParameter("page");
		HttpSession session=req.getSession();
		String re_Id=(String)session.getAttribute("id");
		// DB¿¬µ¿
		ReviewDTO d=new ReviewDTO();
		//d.setRe_no(Integer.parseInt(re_no));
		d.setRe_Id(re_Id);
		d.setRe_hNo(Integer.parseInt(re_hNo));
		d.setRe_Content(re_Content);
		ReserveDAO.reviewNewInsert(d);
		req.setAttribute("no", re_hNo);
		req.setAttribute("page", page);
		return "reserve_detail.do?no=" + re_hNo + "&page="+page;
	}

}


//page==hno content==msg  bno==no 