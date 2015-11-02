package com.zip.model;
import com.common.*;
import com.zip.dao.ZipRegDTO;
import com.board.dao.*;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Insert2Model implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		req.setCharacterEncoding("euc-kr");
		String addr1 = req.getParameter("addr1");
		String addr2 = req.getParameter("addr2");
		HttpSession session = req.getSession();
		
		ZipRegDTO dto = (ZipRegDTO)session.getAttribute("dto");
		dto.setH_Addr1(addr1);
		dto.setH_Addr2(addr2);
		
		req.setAttribute("page", "nezip/nezipInsert3.jsp");
		return "index.jsp";
	}

}