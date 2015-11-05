package com.nezip.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nezip.dao.ZipRegDTO;


@WebServlet("/SaveInsert4ByAjaxServlet")
public class SaveInsert4ByAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String[] facilities = request.getParameterValues("install");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String[] photos = request.getParameterValues("photo");
		phone1 = phone1 + "-" + phone2 + "-" + phone3;
		HttpSession session = request.getSession();
		session.setAttribute("safetyList", facilities);
		session.setAttribute("photos", photos);
		ZipRegDTO dto = (ZipRegDTO)session.getAttribute("ZipRegDTO"); 
		if(dto == null){
			dto = new ZipRegDTO();
			dto.setH_Phone(phone1);
			session.setAttribute("ZipRegDTO", dto);
		} else {
			dto.setH_Phone(phone1);
		}
	}

}
