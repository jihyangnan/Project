package com.nezip.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class NezipInsertModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String step = req.getParameter("step");
		if(step == null){
			step = "1";
		}
		req.setAttribute("insertStep", step);
		req.setAttribute("insertPage", "nezipInsert" + step + ".jsp");
		req.setAttribute("pageNum", 1); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
	}
	
}
