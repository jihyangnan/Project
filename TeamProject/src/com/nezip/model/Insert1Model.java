package com.nezip.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.nezip.dao.Home_categoryDTO;
import com.nezip.dao.NezipDAO;
import com.nezip.dao.Room_categoryDTO;
import com.nezip.dao.ZipRegDTO;


public class Insert1Model implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Home_categoryDTO> homeCateoryList = NezipDAO.homeCategoryList();
		List<Room_categoryDTO> roomCateoryList = NezipDAO.roomCatetoryList();
		req.setAttribute("homeCateoryList", homeCateoryList);	// 집유형리스트
		req.setAttribute("roomCateoryList", roomCateoryList);	// 숙소유형리스트
		
		HttpSession session = req.getSession();
		ZipRegDTO dto = (ZipRegDTO)session.getAttribute("ZipRegDTO");
		
		if(dto != null){ // 접속한 후 처음 등록하는 경우
			req.setAttribute("houseStyle", dto.getH_Type());
			req.setAttribute("roomStyle", dto.getH_rType());
			req.setAttribute("people", dto.getH_nPerson());
			req.setAttribute("bedroom", dto.getH_nRoom());
			req.setAttribute("bed", dto.getH_nBed());
			req.setAttribute("bathroom", dto.getH_nBath());
			req.setAttribute("housename", dto.getH_nHome());
			req.setAttribute("detail", dto.getH_hContent());
		}
		
		req.setAttribute("insertStep", 1);
		req.setAttribute("insertPage", "nezipInsert1.jsp");
		req.setAttribute("pageNum", 1); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
	}
	
}
