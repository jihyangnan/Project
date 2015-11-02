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
		
		if(dto != null){ // 2�ܰ迡�� �ڷ� �°��
			/* String houseStyle = req.getParameter("houseStyle"); //������
			String roomStyle = req.getParameter("roomStyle"); //��������
			String people = req.getParameter("people"); //�����ο�
			String bedroom = req.getParameter("bedroom"); //ħ�Ǽ�
			String bed = req.getParameter("bed"); //ħ���
			String bathroom = req.getParameter("bathroom"); //���
			String city = req.getParameter("city"); //����
			String housename = req.getParameter("housename"); //���� �̸�
			String detail = req.getParameter("detail"); // ���λ��� */			
			req.setAttribute("houseStyle", dto.getH_Type());
			req.setAttribute("roomStyle", dto.getH_rType());
			req.setAttribute("people", dto.getH_nPerson());
			req.setAttribute("bedroom", dto.getH_nRoom());
			req.setAttribute("bed", dto.getH_nBed());
			req.setAttribute("bathroom", dto.getH_nBath());
			/*req.setAttribute("city", dto.getH_Addr1());*/
			req.setAttribute("housename", dto.getH_nHome());
			req.setAttribute("detail", dto.getH_hContent());
		}
		
		req.setAttribute("insertStep", 1);
		req.setAttribute("insertPage", "nezipInsert1.jsp");
		req.setAttribute("pageNum", 1); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
		
	}
	
}
