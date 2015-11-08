package com.nezip.model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nezip.dao.ZipRegDTO;

@WebServlet("/SaveInsert2ByAjaxServlet")
public class SaveInsert2ByAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		ZipRegDTO dto = (ZipRegDTO)session.getAttribute("ZipRegDTO"); 
		
		if(dto == null){ // 세션에 ZipRegDTO가 없다면
			dto = new ZipRegDTO();
			setZipRegDTO(dto, request);
			session.setAttribute("ZipRegDTO", dto);
		} else {
			setZipRegDTO(dto, request);
		}
		
		boolean[] completeStep =  (boolean[])session.getAttribute("completeStep");
		if(completeStep == null){
			completeStep = new boolean[5];
		}
		if(!(dto.getPostcode().equals("") || dto.getH_Addr1().equals("") || dto.getH_Addr2().equals("") || dto.getH_Loc().equals(""))){
			completeStep[1] = true;
		} else {
			completeStep[1] = false;
		}
		session.setAttribute("completeStep", completeStep);
	}
	
	private void setZipRegDTO(ZipRegDTO dto, HttpServletRequest request){
		String postcode = request.getParameter("postcode"); 	//기본주소
		String addr1 = request.getParameter("addr1"); 	//기본주소
		String addr2 = request.getParameter("addr2"); 	//상세주소
		String lat = request.getParameter("lat"); 		//위도
		String lng = request.getParameter("lng"); 		//경도
		
		dto.setPostcode(postcode);
		dto.setH_Addr1(addr1);
		dto.setH_Addr2(addr2.trim());
		dto.setH_Loc(lat + "," + lng);
	}

}
