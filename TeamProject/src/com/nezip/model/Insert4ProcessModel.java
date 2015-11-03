package com.nezip.model;
import com.common.*;
import com.nezip.dao.Fac_regDTO;
import com.nezip.dao.Home_facDTO;
import com.nezip.dao.ZipRegDTO;
import com.board.dao.*;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Insert4ProcessModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		req.setCharacterEncoding("utf-8");
		List<Home_facDTO> homeList = new ArrayList<>();
		
		String[] aa = req.getParameterValues("install1");
		for (String s : aa) {
			Home_facDTO dto = new Home_facDTO();
			dto.setHs_No((Integer.parseInt(s)));
			homeList.add(dto);
		}
		
		String phone1 = req.getParameter("phone1");
		String phone2 = req.getParameter("phone2");
		String phone3 = req.getParameter("phone3");
		
		
	
		
		HttpSession session = req.getSession();
		
		session.setAttribute("homeList", homeList);
		return "nezip_insert5.do";
	}

}