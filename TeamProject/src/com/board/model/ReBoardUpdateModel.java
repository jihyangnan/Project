package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.ReBoardDTO;
import com.common.Model;

public class ReBoardUpdateModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String rw_content=req.getParameter("rw_content");
		String rw_bno=req.getParameter("rw_bno");
		String page=req.getParameter("page");
		String rw_no=req.getParameter("rw_no");
		System.out.println("page(model)="+page);
		System.out.println("rw_content(model)="+rw_content);
		System.out.println("rw_bno(model)="+rw_bno);
		System.out.println("rw_no(model)="+rw_no);
		//db¿¬µ¿
		ReBoardDTO d=new ReBoardDTO();
		d.setRw_no(Integer.parseInt(rw_no));
		d.setRw_content(rw_content);
		BoardDAO.reboardReUpdate(d);
		req.setAttribute("rw_bno", rw_bno);
		req.setAttribute("page", page);
		
		return "board_content.do?b_no=" + rw_bno + "&page=" + page ;
	}

}
