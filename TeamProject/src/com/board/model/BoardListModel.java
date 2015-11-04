package com.board.model;
import com.common.*;
import com.board.dao.*;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class BoardListModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		/*회원 페이지*/
		String strPage=req.getParameter("page");
		if(strPage==null)
		{
			strPage="1";
		}
		int curpage=Integer.parseInt(strPage);
		int rowSize=10;
		
		//map으로 넘겨준다
		int start=(curpage*rowSize)-(rowSize-1);
		int end=curpage*rowSize;
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		List<BoardDTO> list = BoardDAO.baordListData(map);
		for(BoardDTO d:list)
		{
			d.setReplyCount(BoardDAO.boardReplyCount(d.getB_no()));
		}
		int totalpage=BoardDAO.boardTotalPage();
		
		/*관리자 페이지*/
		Map mgmap=new HashMap();
		List<BoardDTO> mlist = BoardDAO.board_mListData(mgmap);
		/*int mcurpage=Integer.parseInt(strPage);
		int mrowSize=5;	
		int mstart=(mcurpage*mrowSize)-(mrowSize-1);
		int mend=mcurpage*mrowSize;
		mgmap.put("mstart", mstart);
		mgmap.put("mend", mend);*/
		//int mcurpage=Integer.parseInt(strPage);
		//int mrowSize=5;	
		

		System.out.println("start="+start);
		System.out.println("end="+end);
	
		req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		req.setAttribute("list", list);
		req.setAttribute("mlist", mlist);
		req.setAttribute("curpage", curpage);
		req.setAttribute("totalpage", totalpage);
		
		req.setAttribute("pageNum", 4); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../board/list.jsp");
		
		HttpSession session = req.getSession();
		session.setAttribute("id", "hong");
		
		return "main/index.jsp";
	}

}
