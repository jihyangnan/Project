package com.nezip.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.nezip.dao.Home_categoryDTO;
import com.nezip.dao.NezipDAO;
import com.nezip.dao.Room_categoryDTO;

public class Insert1Model implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Home_categoryDTO> homeCateoryList = NezipDAO.homeCategoryList();
		List<Room_categoryDTO> roomCateoryList = NezipDAO.roomCatetoryList();
		req.setAttribute("homeCateoryList", homeCateoryList);	// ����������Ʈ
		req.setAttribute("roomCateoryList", roomCateoryList);	// ������������Ʈ
		
		req.setAttribute("insertStep", 1);
		req.setAttribute("insertPage", "nezipInsert1.jsp");
		req.setAttribute("pageNum", 1); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
	}
	
}
