package com.board.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.dao.*;
import com.common.Model;

public class BoardContentModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String rPage=req.getParameter("rPage");
		int type=0;
		if(rPage==null)
		{
			rPage="1";
			type=1;
		}
		int rcurpage=Integer.parseInt(rPage);
		String strNo=req.getParameter("b_no");
		String strPage=req.getParameter("page");
		
		HttpSession session=req.getSession();
		String rw_id=(String)session.getAttribute("id");
		System.out.println("boardContent_id="+rw_id);
		
		BoardDTO d = BoardDAO.boardContentData(Integer.parseInt(strNo),type);
		
		List<ReBoardDTO> temp=BoardDAO.reboardListData(Integer.parseInt(strNo));
		int rtotal=BoardDAO.reboardPageTotalpage(Integer.parseInt(strNo));
		
		List<ReBoardDTO> list=new ArrayList<ReBoardDTO>();
		
		int j=0;
		int pagecnt=(rcurpage*10)-10;
		for(int i=0; i<temp.size(); i++)
		{
			if(j<10 && i>=pagecnt)
			{
				ReBoardDTO dd=temp.get(i); //레코드 가져오는 것 g(i)
				System.out.println("boardContent_id1="+rw_id);
				list.add(dd);
				System.out.println("rw_id222="+dd.getRw_id());	
				j++;
			}
		}
		// 세션에 아이디 등록
	
		req.setAttribute("rtotal", rtotal);
		req.setAttribute("rcurpage", rcurpage);
		
		req.setAttribute("rlist", list);
		
		req.setAttribute("page", strPage);
		req.setAttribute("dto", d);
		req.setAttribute("jsp", "../board/detail.jsp");
		return "main/index.jsp";
	}

}
