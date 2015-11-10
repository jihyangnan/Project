
package com.mypage.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.mypage.dao.MypageDAO;

import com.reserve.dao.ReserveDTO;


import com.nezip.dao.ZipRegDTO;

public class Reserve_CheckModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("pageNum", 5); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		

		
		HttpSession session = req.getSession();
		
		
		String id=(String)session.getAttribute("id");
		
		List<ReserveDTO> list = MypageDAO.reserveCheck(id);
		
		req.setAttribute("list", list);
		req.setAttribute("jsp", "../mypage/Reserve_Check.jsp");

		return "main/index.jsp";
	}

}
