
package com.mypage.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;
import com.mypage.dao.MypageDAO;
import com.nezip.dao.NezipDAO;
import com.nezip.dao.ZipRegDTO;

public class Reg_checkModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
        String id = (String)session.getAttribute("id");
        System.out.println("id="+id);
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
		map.put("b_id", id);		
		List<ZipRegDTO> mlist = NezipDAO.mybaordListData(map);
		req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		req.setAttribute("mlist", mlist);
		req.setAttribute("curpage", curpage);
		
		req.setAttribute("pageNum", 5); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
        req.setAttribute("jsp", "../mypage/Reg_check.jsp");
        
              
	    List<ZipRegDTO> list=MypageDAO.regcheck(id);
	    req.setAttribute("list", list);
		
		return "main/index.jsp";
	}
	
	

}
