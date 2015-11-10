
package com.mypage.model;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.mypage.dao.MypageDAO;
import com.nezip.dao.ZipRegDTO;

public class Reg_checkModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		req.setAttribute("pageNum", 5); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
        req.setAttribute("jsp", "../mypage/Reg_check.jsp");
        //HttpSession session = req.getSession();
        //String id = (String)session.getAttribute("id");
	    List<ZipRegDTO> list=MypageDAO.regcheck("");
	    req.setAttribute("list", list);
	    
		return "main/index.jsp";
	}
	
	

}
