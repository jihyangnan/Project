package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;

public class BoardInsertModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String b_title=req.getParameter("b_title");
		String b_content=req.getParameter("b_content");
		String b_id=req.getParameter("b_id");
		String b_sano=req.getParameter("b_sano");
		
		
		
		BoardDTO d=new BoardDTO();
		d.setB_title(b_title);
		d.setB_content(b_content);
		d.setB_id(b_id);
		//d.setB_sano((b_sano==null) ? 4 : Integer.parseInt(b_sano));
		if(b_sano == null){
			d.setB_sano(4);
		} else {
			d.setB_no(Integer.parseInt(b_sano));
		}
		//db¿¬µ¿
		System.out.println("insertModel");
		BoardDAO.boardInsert(d);
		return "board_list.do";
	}
	
}
