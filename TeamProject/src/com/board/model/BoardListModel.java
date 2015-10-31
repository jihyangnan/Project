package com.board.model;
import com.common.*;
import com.board.dao.*;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class BoardListModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
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
		int totalpage=BoardDAO.boardTotalPage();
		req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		//req.setAttribute("list", list);
		req.setAttribute("curpage", curpage);
		req.setAttribute("totalpage", totalpage);
		req.setAttribute("pageNum", 4); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../board/list.jsp");
		return "main/index.jsp";
	}

}
