package com.mypage.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.mypage.dao.MypageDAO;
import com.nezip.dao.ZipRegDTO;

public class MyResModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session=req.getSession();
		String id=(String)session.getAttribute("id");
		List<ZipRegDTO> list=MypageDAO.regcheck(id);
		req.setAttribute("list", list);
		req.setAttribute("jsp", "../mypage/myReserve.jsp");
		return null;
	}

}
