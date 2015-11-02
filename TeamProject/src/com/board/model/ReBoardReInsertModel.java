package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.dao.BoardDAO;
import com.board.dao.ReBoardDTO;
import com.common.Model;

public class ReBoardReInsertModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String rw_content=req.getParameter("rw_content");
		System.out.println("RE_RE_IN(rw_content)="+rw_content);
		
		String rw_bno=req.getParameter("rw_bno");
		String page=req.getParameter("page");
		String root=req.getParameter("rw_no");
		HttpSession session=req.getSession();
		String id=(String)session.getAttribute("id");
		
		//디비연동
		ReBoardDTO d=new ReBoardDTO();
		d.setRw_bno(Integer.parseInt(rw_bno));
		d.setRw_id(id);
		d.setRw_content(rw_content);
		
		ReBoardDTO prd=BoardDAO.reboardParentInfo(Integer.parseInt(root));
		BoardDAO.reboardStepIncrement(prd);
		d.setGroup_id(prd.getGroup_id());
		d.setGroup_step(prd.getGroup_step()+1);
		d.setGroup_tab(prd.getGroup_tab()+1);
		BoardDAO.reboardReInsert(d);
		BoardDAO.reboardDethIncrement(Integer.parseInt(root));
		req.setAttribute("rw_bno", rw_bno);
		req.setAttribute("page", page);
		return "board_content.do?b_no=" + rw_bno + "&page=" + page ;
	}

}
