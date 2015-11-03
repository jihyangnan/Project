package com.nezip.model;
import com.common.*;
import com.nezip.dao.ZipRegDTO;
import com.board.dao.*;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Insert5ProcessModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		
		String price1 = req.getParameter("price1"); // 세부사항
		HttpSession session = req.getSession();
		
		ZipRegDTO dto = new ZipRegDTO();
		dto.setH_Money(Integer.parseInt(price1));
		
		session.setAttribute("ZipRegDTO", dto);
		
		return "nezip_insert6.do";
	}

}