package com.main.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class IndexModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("pageNum", 0); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "main.jsp");
		//req.getSession().setAttribute("id", "shim");
		return "main/index.jsp";
	}
	
}
