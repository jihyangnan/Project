package com.mypage.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class JimListModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("pageNum", 5); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
       req.setAttribute("jsp", "../mypage/jimList.jsp");
        
		return "main/index.jsp";
	}

}
