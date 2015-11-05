package com.nezip.model;
import com.common.*;
import com.nezip.dao.Home_facDTO;
import com.nezip.dao.NezipDAO;
import com.nezip.dao.ZipRegDTO;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Insert4Model implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Home_facDTO> homeFacList = NezipDAO.homeFacList();
		req.setAttribute("homeFacList", homeFacList);
		
		HttpSession session = req.getSession();
		String[] safetyList = (String[]) session.getAttribute("safetyList");
		if(safetyList != null){
			String str = String.join(",", safetyList);
			req.setAttribute("safetyList", str);
		}
		ZipRegDTO dto = (ZipRegDTO)session.getAttribute("ZipRegDTO");
		if(dto != null){ 
			String phone = dto.getH_Phone();
			if(phone != null){
				String[] phones = phone.split("-");
				for(int i=0; i<phones.length; i++){
					req.setAttribute("phone" + (i+1), phones[i]);
				}
			}
		}
		String[] photos = (String[])session.getAttribute("photos");
		if(photos != null){
			req.setAttribute("photos", photos);
		}
		
		req.setAttribute("insertStep", 4);
		req.setAttribute("insertPage", "nezipInsert4.jsp");
		req.setAttribute("pageNum", 1); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
	}

}