package com.nezip.model;
import com.common.*;
import com.nezip.dao.ZipRegDTO;
import com.board.dao.*;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Insert1ProcessModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		req.setCharacterEncoding("utf-8");
		String houseStyle = req.getParameter("houseStyle"); //집유형
		String roomStyle = req.getParameter("roomStyle"); //숙소유형
		String people = req.getParameter("people"); //수용인원
		String bedroom = req.getParameter("bedroom"); //침실수
		String bed = req.getParameter("bed"); //침대수
		String bathroom = req.getParameter("bathroom"); //욕실
		String city = req.getParameter("city"); //도시
		String housename = req.getParameter("housename"); //숙소 이름
		String detail = req.getParameter("detail"); // 세부사항
		HttpSession session = req.getSession();
		
		ZipRegDTO dto = new ZipRegDTO();
		dto.setH_Type(Integer.parseInt(houseStyle));
		dto.setH_rType(Integer.parseInt(roomStyle));
		dto.setH_nPerson(Integer.parseInt(people));
		dto.setH_nRoom(Integer.parseInt(bedroom));
		dto.setH_nBed(Integer.parseInt(bed));
		dto.setH_nBath(Integer.parseInt(bathroom));
		dto.setH_Addr1 (city);
		dto.setH_nHome(housename);
		dto.setH_hContent(detail);
		
		session.setAttribute("ZipRegDTO", dto);
		
		
		/*req.setAttribute("insertStep", 2);
		req.setAttribute("insertPage", "nezipInsert2.jsp");
		req.setAttribute("pageNum", 1); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";*/
		return "nezip_insert2.do";
		
	}

}