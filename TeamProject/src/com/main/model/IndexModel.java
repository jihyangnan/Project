package com.main.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;
import com.nezip.dao.NezipDAO;
import com.nezip.dao.ZipRegDTO;

public class IndexModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String strPage=req.getParameter("page");
		if(strPage==null)
		{
			strPage="1";
		}
		Map mgmap=new HashMap();
		List<BoardDTO> mlist = BoardDAO.board_mListData(mgmap);
		
		List<ZipRegDTO> zipList = NezipDAO.ZipListForIndex();
		
		req.setAttribute("zipList", zipList);
		req.setAttribute("mlist", mlist);
		req.setAttribute("pageNum", 0); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "main.jsp");

		req.getSession().setAttribute("id", "admin");


		return "main/index.jsp";
	}
	
}
