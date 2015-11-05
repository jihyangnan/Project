package com.nezip.model;
import com.common.*;
import com.nezip.dao.ZipRegDTO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Insert1ProcessModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		req.setCharacterEncoding("utf-8");
		String houseStyle = req.getParameter("houseStyle"); //������
		String roomStyle = req.getParameter("roomStyle"); //��������
		String people = req.getParameter("people"); //�����ο�
		String bedroom = req.getParameter("bedroom"); //ħ�Ǽ�
		String bed = req.getParameter("bed"); //ħ���
		String bathroom = req.getParameter("bathroom"); //���
		String housename = req.getParameter("housename"); //���� �̸�
		String detail = req.getParameter("detail"); // ���λ���
		HttpSession session = req.getSession();
		
		ZipRegDTO dto = new ZipRegDTO();
		dto.setH_Type(Integer.parseInt(houseStyle));
		dto.setH_rType(Integer.parseInt(roomStyle));
		dto.setH_nPerson(Integer.parseInt(people));
		dto.setH_nRoom(Integer.parseInt(bedroom));
		dto.setH_nBed(Integer.parseInt(bed));
		dto.setH_nBath(Integer.parseInt(bathroom));
		//dto.setH_Addr1 (city);
		dto.setH_nHome(housename);
		dto.setH_hContent(detail);
		
		session.setAttribute("ZipRegDTO", dto);
		
		return "nezip_insert2.do";
		
	}

}