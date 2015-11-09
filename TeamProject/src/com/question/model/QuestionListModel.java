package com.question.model;

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
import com.question.dao.QuestionDAO;
import com.question.dao.QuestionDTO;

public class QuestionListModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		/*회원 페이지*/
		String strPage=req.getParameter("page");
		if(strPage==null)
		{
			strPage="1";
		}
		int qcurpage=Integer.parseInt(strPage);
		int rowSize=10;
		
		//map으로 넘겨준다
		int start=(qcurpage*rowSize)-(rowSize-1);
		int end=qcurpage*rowSize;
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		int qtotalpage=QuestionDAO.QuestionTotalPage();
		
		List<QuestionDTO> qlist = QuestionDAO.QuestionListData(map);
		System.out.println("qstart="+start);
		System.out.println("qend="+end);
		req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		req.setAttribute("qlist", qlist);
	
		req.setAttribute("qcurpage", qcurpage);
		req.setAttribute("qtotalpage", qtotalpage);
		
		req.setAttribute("pageNum", 4); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../board/m_inquire_list.jsp");
		
		HttpSession session = req.getSession();
		
		
		return "main/index.jsp";
	}

}
