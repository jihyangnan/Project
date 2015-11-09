package com.reserve.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.nezip.dao.Home_categoryDTO;
import com.nezip.dao.NezipDAO;

public class ListModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		req.setAttribute("pageNum", 2); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../reserve/list.jsp");
		return "main/index.jsp";
	}
	
}
