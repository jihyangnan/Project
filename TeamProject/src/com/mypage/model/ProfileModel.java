package com.mypage.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;
import com.member.dao.MemberDTO;
import com.mypage.dao.MypageDAO;

public class ProfileModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String id=req.getParameter("id");
		MemberDTO d = MypageDAO.prifileData(id);
		req.setAttribute("id", id);
		req.setAttribute("dto", d);
		req.setAttribute("pageNum", 5); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../mypage/profile.jsp");
		return "main/index.jsp";
	}
}
