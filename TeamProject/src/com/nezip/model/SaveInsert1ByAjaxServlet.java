package com.nezip.model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nezip.dao.ZipRegDTO;

@WebServlet("/SaveInsert1ByAjaxServlet")
public class SaveInsert1ByAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		ZipRegDTO dto = (ZipRegDTO)session.getAttribute("ZipRegDTO"); 
		
		if(dto == null){ // ���ǿ� ZipRegDTO�� ���ٸ�
			dto = new ZipRegDTO();
			setZipRegDTO(dto, request);
			session.setAttribute("ZipRegDTO", dto);
		} else {
			setZipRegDTO(dto, request);
		}
	}
	
	private void setZipRegDTO(ZipRegDTO dto, HttpServletRequest request){
		String houseStyle = request.getParameter("houseStyle"); //������
		String roomStyle = request.getParameter("roomStyle"); //��������
		String people = request.getParameter("people"); //�����ο�
		String bedroom = request.getParameter("bedroom"); //ħ�Ǽ�
		String bed = request.getParameter("bed"); //ħ���
		String bathroom = request.getParameter("bathroom"); //���
		String housename = request.getParameter("housename"); //���� �̸�
		String detail = request.getParameter("detail"); // ���λ���
		String houserule = request.getParameter("houserule"); // ���ұ�Ģ
		
		dto.setH_Type(houseStyle == null ? 1 : Integer.parseInt(houseStyle));
		dto.setH_rType(roomStyle == null ? 1 : Integer.parseInt(roomStyle));
		dto.setH_nPerson(people == null ? 1 : Integer.parseInt(people));
		dto.setH_nRoom(bedroom == null ? 1 : Integer.parseInt(bedroom));
		dto.setH_nBed(bed == null ? 1 : Integer.parseInt(bed));
		dto.setH_nBath(bathroom == null ? 1 : Integer.parseInt(bathroom));
		dto.setH_nHome(housename.trim());
		dto.setH_hContent(detail.trim());
		dto.setH_Rule(houserule);
	}

}
