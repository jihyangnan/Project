package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;

public class BoardDeleteModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		String strPage=req.getParameter("page");
		String strNo=req.getParameter("b_no");
		String b_delete=req.getParameter("b_delete");
		
		System.out.println("page: "+strPage);
		System.out.println("strNo: "+strNo);
		System.out.println("b_delete: "+b_delete);
		
		BoardDTO d=new BoardDTO();
		d.setB_no(Integer.parseInt(strNo));
		d.setB_delete(b_delete);
		
		req.setAttribute("b_no", strNo);
		req.setAttribute("page", strPage);
		BoardDAO.boardDelete(d);
		//return "board/board_update_ok.jsp"; ok페이지 안만들어도 되넹 근데요저게 정상?
		return "board_list.do" ;
	}

}
