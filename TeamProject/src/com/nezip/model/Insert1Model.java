package com.nezip.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.nezip.dao.ZipRegDTO;

public class Insert1Model implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		HttpSession session = req.getSession();
		ZipRegDTO dto = (ZipRegDTO)session.getAttribute("ZipRegDTO");
		
		if(dto != null){ // 2단계에서 뒤로 온경우
			/*String houseStyle = req.getParameter("houseStyle"); //집유형
			String roomStyle = req.getParameter("roomStyle"); //숙소유형
			String people = req.getParameter("people"); //수용인원
			String bedroom = req.getParameter("bedroom"); //침실수
			String bed = req.getParameter("bed"); //침대수
			String bathroom = req.getParameter("bathroom"); //욕실
			String city = req.getParameter("city"); //도시
			String housename = req.getParameter("housename"); //숙소 이름
			String detail = req.getParameter("detail"); // 세부사항
*/			
			req.setAttribute("houseStyle", dto.getH_Type());
		}
		
		
		
		
		req.setAttribute("insertStep", 1);
		req.setAttribute("insertPage", "nezipInsert1.jsp");
		req.setAttribute("pageNum", 1); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
		
	}
	
}
