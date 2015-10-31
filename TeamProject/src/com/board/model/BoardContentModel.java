package com.board.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;

public class BoardContentModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String strNo=req.getParameter("b_no");
		String strPage=req.getParameter("page");
		BoardDTO d = BoardDAO.boardContentData(Integer.parseInt(strNo));
		
		req.setAttribute("page", strPage);
		req.setAttribute("dto", d);
		req.setAttribute("jsp", "board/detail.jsp");
		return "index.jsp";
	}

}
