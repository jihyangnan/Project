package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;

public class BoardUpdateModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		String strNo=req.getParameter("b_no");
		String strPage=req.getParameter("page");
		
		System.out.println("UpdateModel="+strNo+","+strPage);
		String b_content=req.getParameter("b_content");
		BoardDTO d = BoardDAO.boardUpdateData(Integer.parseInt(strNo));
		/*req.setAttribute("b_no", strNo);*/
		req.setAttribute("b_content", b_content);
		req.setAttribute("page", strPage);
		req.setAttribute("dto", d);
		
		req.setAttribute("jsp", "../board/board_update.jsp");
		return "main/index.jsp";
	}

}
