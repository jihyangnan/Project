package com.nezip.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nezip.dao.ZipRegDTO;


@WebServlet("/SaveInsert5ByAjaxServlet")
public class SaveInsert5ByAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		ZipRegDTO dto = (ZipRegDTO)session.getAttribute("ZipRegDTO"); 
		
		if(dto == null){ // 세션에 ZipRegDTO가 없다면
			dto = new ZipRegDTO();
			setZipRegDTO(dto, request);
			session.setAttribute("ZipRegDTO", dto);
		} else {
			setZipRegDTO(dto, request);
		}
		
		
	}

	private void setZipRegDTO(ZipRegDTO dto, HttpServletRequest request) {
		String price = request.getParameter("price");
		String startDay = request.getParameter("startDay");
		String endDay = request.getParameter("endDay");
		if(price != null && !price.trim().equals("")){
			dto.setH_Money(Integer.parseInt(price));
		}
		dto.setH_Startday(startDay);
		dto.setH_Endday(endDay);
	}

}
