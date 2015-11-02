package com.nezip.model;
import com.common.*;
import com.nezip.dao.ZipRegDTO;
import com.board.dao.*;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Insert5Model implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		/*req.setCharacterEncoding("euc-kr");
		String price = req.getParameter("price");
		int price1=Integer.parseInt(price);
		int price2=Integer.parseInt(price);
		price2=(int)(price2*7*0.95);
		int price3=Integer.parseInt(price);
		price3=(int)(price3*30*0.9);
		HttpSession session = req.getSession();
		
		ZipRegDTO dto = (ZipRegDTO)session.getAttribute("dto");
		dto.setH_Money(price1);
		dto.setH_Money(price2);	
		dto.setH_Money(price3);	
		req.setAttribute("page", "nezip/nezipInsert3.jsp");
		return "index.jsp";*/
		
		
		
		req.setAttribute("insertStep", 5);
		req.setAttribute("insertPage", "nezipInsert5.jsp");
		req.setAttribute("pageNum", 1); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
	}

}