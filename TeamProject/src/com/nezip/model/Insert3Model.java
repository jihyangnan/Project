package com.nezip.model;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.nezip.dao.Fac_kindDTO;
import com.nezip.dao.Home_facDTO;
import com.nezip.dao.NezipDAO;
public class Insert3Model implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Fac_kindDTO> facKindList = NezipDAO.facKindList();
		List<Home_facDTO> homeFacList = NezipDAO.homeFacList();

		req.setAttribute("facKindList", facKindList);
		req.setAttribute("homeFacList", homeFacList);
		
		HttpSession session = req.getSession();
		String[] facList = (String[]) session.getAttribute("facList");
		if(facList != null){
			String str = String.join(",", facList);
			req.setAttribute("facList", str);
		}
		
		req.setAttribute("insertStep", 3);
		req.setAttribute("insertPage", "nezipInsert3.jsp");
		req.setAttribute("pageNum", 1); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
		
	}

}