package com.nezip.model;
import com.common.*;
import com.nezip.dao.Fac_regDTO;
import com.nezip.dao.ZipRegDTO;
import com.board.dao.*;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Insert3ProcessModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		req.setCharacterEncoding("utf-8");
		List<Fac_regDTO> facList = new ArrayList<>();
		
		String[] aa = req.getParameterValues("install1");
		for (String s : aa) {
			Fac_regDTO dto = new Fac_regDTO();
			dto.setC_hsNo(Integer.parseInt(s));
			facList.add(dto);
		}
		
		HttpSession session = req.getSession();
		
		session.setAttribute("facList", facList);
		
		return "nezip_insert4.do";
	}

}