package com.nezip.model;
import com.common.*;
import com.nezip.dao.ZipRegDTO;
import com.board.dao.*;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Insert2ProcessModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		req.setCharacterEncoding("utf-8");
		String addr1 = req.getParameter("addr1");
		String addr2 = req.getParameter("addr2");
		HttpSession session = req.getSession();
		
		ZipRegDTO dto = (ZipRegDTO)session.getAttribute("ZipRegDTO");
		dto.setH_Addr1(addr1);
		dto.setH_Addr2(addr2);
		
		session.setAttribute("ZipRegDTO", dto);
		
		/*req.setAttribute("insertStep", 3);
		req.setAttribute("insertPage", "nezipInsert3.jsp");
		req.setAttribute("pageNum", 1); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";*/
		return "nezip_insert3.do";
		
	}

}