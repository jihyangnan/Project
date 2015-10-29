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
		if(b_sano=="1")
		{
			b_id="admin";
		}
		else if(b_sano=="2")
		{
			b_id="admin";
		}
		else if(b_sano=="3")
		{
			b_id="admin";
		}
		
		if(b_id==null)
		{
			b_sano="0";
		}
		System.out.println(b_content);
		BoardDTO d=new BoardDTO();
		d.setB_title(b_title);
		d.setB_content(b_content);
		//db¿¬µ¿
		BoardDAO.boardInsert(d);
		return "list.do";
	}
	
}
