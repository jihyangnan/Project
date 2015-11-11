package com.reserve.model;

import java.util.List;

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
		String re_hNo=req.getParameter("re_hNo");
		HttpSession session=req.getSession();
		String re_Id=(String)session.getAttribute("id");
		// DB¿¬µ¿
		ReviewDTO d=new ReviewDTO();
		d.setRe_Id(re_Id);
		d.setRe_hNo(Integer.parseInt(re_hNo));
		d.setRe_Content(re_Content);
		ReserveDAO.reviewNewInsert(d);
		List<ReviewDTO> list= ReserveDAO.reviewListData(Integer.parseInt(re_hNo));
		req.setAttribute("list", list);
//		req.setAttribute("no", re_hNo);
		return "reserve/review.jsp";
	}
}
