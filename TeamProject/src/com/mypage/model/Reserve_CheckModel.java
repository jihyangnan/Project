
package com.mypage.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.mypage.dao.MypageDAO;
import com.reserve.dao.ReserveDTO;


public class Reserve_CheckModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("pageNum", 5); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		
		
		HttpSession session = req.getSession();
		
		
		String id=(String)session.getAttribute("id");
		
		List<ReserveDTO> list = MypageDAO.reserveCheck(id);
		for(int i=0; i<list.size(); i++){
			System.out.println(list.get(i).getR_addr());
			System.out.println(list.get(i).getR_member());
		}
		req.setAttribute("list", list);
		req.setAttribute("jsp", "../mypage/Reserve_Check.jsp");
		return "main/index.jsp";
	}

}
