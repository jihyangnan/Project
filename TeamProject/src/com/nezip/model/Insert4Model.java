package com.nezip.model;
import com.common.*;
import com.nezip.dao.Home_facDTO;
import com.nezip.dao.NezipDAO;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Insert4Model implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Home_facDTO> homeFacList = NezipDAO.homeFacList();
		req.setAttribute("homeFacList", homeFacList);
		
		req.setAttribute("insertStep", 4);
		req.setAttribute("insertPage", "nezipInsert4.jsp");
		req.setAttribute("pageNum", 1); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
	}

}