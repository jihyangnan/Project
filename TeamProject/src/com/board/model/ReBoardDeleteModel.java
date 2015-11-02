package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.board.dao.ReBoardDTO;
import com.common.Model;

public class ReBoardDeleteModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		String strPage=req.getParameter("page");
		String b_no=req.getParameter("b_no");
		String rw_no=req.getParameter("rw_no");
		String rw_delete=req.getParameter("rw_delete");
		
		System.out.println("page: "+strPage);
		System.out.println("strNo: "+rw_no);
		System.out.println("b_delete: "+rw_delete);
		
		ReBoardDTO d = new ReBoardDTO();
		d.setRw_no(Integer.parseInt(rw_no));
		d.setRw_Delete(rw_delete);
		req.setAttribute("b_no", b_no);
		req.setAttribute("rw_no", rw_no);
		req.setAttribute("page", strPage);
		BoardDAO.reboardDelete(d);
		//return "board/board_update_ok.jsp"; ok페이지 안만들어도 되넹 근데요저게 정상?
		return "board_content.do?b_no=" + b_no + "&page=" + strPage ;
	}

}
