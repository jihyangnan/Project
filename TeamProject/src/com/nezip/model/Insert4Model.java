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
		req.setAttribute("pageNum", 1); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
	}

}