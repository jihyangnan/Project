package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.common.Model;

public class ReBoardDeleteModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		String strPage=req.getParameter("page");
		String b_no=req.getParameter("b_no");
		String rw_no=req.getParameter("rw_no");
		
		System.out.println("page: "+strPage);
		System.out.println("strNo: "+rw_no);
		
		BoardDAO.reboardDelete(Integer.parseInt(rw_no));
		
		//return "board/board_update_ok.jsp"; ok페이지 안만들어도 되넹 근데요저게 정상?
		return "board_content.do?b_no=" + b_no + "&page=" + strPage ;
	}

}
