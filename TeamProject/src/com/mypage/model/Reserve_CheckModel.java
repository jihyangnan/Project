
package com.mypage.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.mypage.dao.MypageDAO;
import com.nezip.dao.ZipRegDTO;

public class Reserve_CheckModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("pageNum", 5); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		
		req.setAttribute("jsp", "../mypage/Reserve_Check.jsp");
		HttpSession session=req.getSession();
		String id=(String)session.getAttribute("id");
		List<ZipRegDTO> list=MypageDAO.regcheck(id);
		req.setAttribute("list", list);
		return "main/index.jsp";
	}

}
