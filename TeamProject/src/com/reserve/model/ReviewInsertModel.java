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
		req.setCharacterEncoding("EUC-KR");
		String re_content=req.getParameter("re_content");
		String re_no=req.getParameter("re_no");
		String re_hno=req.getParameter("re_hno");
		String page=req.getParameter("page");
		HttpSession session=req.getSession();
		String re_id=(String)session.getAttribute("id");
		// DB¿¬µ¿
		ReviewDTO d=new ReviewDTO();
		d.setRe_no(Integer.parseInt(re_no));
		d.setRe_id(re_id);
		d.setRe_hno(Integer.parseInt(re_hno));
		d.setRe_content(re_content);
		ReserveDAO.reviewNewInsert(d);
		req.setAttribute("no", re_hno);
		req.setAttribute("page", page);
		return "reserve/detail.do?no=" + re_hno + "&page="+page;
	}

}


//page==hno content==msg  bno==no 