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
		/*ȸ�� ������*/
		String strPage=req.getParameter("page");
		if(strPage==null)
		{
			strPage="1";
		}
		int curpage=Integer.parseInt(strPage);
		int rowSize=10;
		
		//map���� �Ѱ��ش�
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
		
		/*������ ������*/
		Map mgmap=new HashMap();
		List<BoardDTO> mlist = BoardDAO.board_mListData(mgmap);
		int mrowSize=5;	
		int mcurpage=Integer.parseInt(strPage);
		
		int mstart=(mcurpage*mrowSize)-(mrowSize-1);
		int mend=mcurpage*mrowSize;
		mgmap.put("mstart", mstart);
		mgmap.put("mend", mend);

		System.out.println("start="+start);
		System.out.println("end="+end);
		System.out.println("mstart="+mstart);
		System.out.println("mend="+mend);
		System.out.println("mlist="+mlist.size());
		req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		req.setAttribute("list", list);
		req.setAttribute("mlist", mlist);
		req.setAttribute("curpage", curpage);
		req.setAttribute("totalpage", totalpage);
		
		req.setAttribute("pageNum", 4); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../board/list.jsp");
		/*req.setAttribute("mjsp", "../main/main.jsp");*/
		HttpSession session = req.getSession();
		
		
		return "main/index.jsp";
	}

}
