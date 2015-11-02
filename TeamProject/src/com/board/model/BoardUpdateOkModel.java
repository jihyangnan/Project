package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;

public class BoardUpdateOkModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		String strPage=req.getParameter("page");
		String strNo=req.getParameter("b_no");
		String b_title=req.getParameter("b_title");
		String b_content=req.getParameter("b_content");
		System.out.println("page: "+strPage);
		System.out.println("strNo: "+strNo);
		System.out.println("b_title: "+b_title);
		System.out.println("b_content: "+b_content);

		BoardDTO d=new BoardDTO();
		d.setB_no(Integer.parseInt(strNo));
		d.setB_title(b_title);
		d.setB_content(b_content.trim());
		
		req.setAttribute("b_no", strNo);
		req.setAttribute("page", strPage);
		BoardDAO.boardUpdate(d);
		//return "board/board_update_ok.jsp"; 
		return "board_content.do?b_no=" + strNo + "&page=" + strPage ;
	}

}
