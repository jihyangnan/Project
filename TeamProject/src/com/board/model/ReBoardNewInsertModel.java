package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.dao.BoardDAO;
import com.board.dao.ReBoardDTO;
import com.common.Model;

public class ReBoardNewInsertModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String rw_content=req.getParameter("rw_content");
		String rw_bno=req.getParameter("rw_bno");
		String page=req.getParameter("page");
		HttpSession session=req.getSession();
		String rw_id=(String)session.getAttribute("id");
		
		//디비연동
		ReBoardDTO d=new ReBoardDTO();
		d.setRw_bno(Integer.parseInt(rw_bno));
		d.setRw_id(rw_id);
		d.setRw_content(rw_content);
		
		BoardDAO.reboardNewInsert(d);
		req.setAttribute("rw_bno", rw_bno);
		req.setAttribute("page", page);
		
		return "board_content.do?b_no=" + rw_bno + "&page=" + page ;
	}

}
