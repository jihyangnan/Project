package com.question.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.question.dao.QuestionDAO;
import com.question.dao.QuestionDTO;

public class QuestionInsertOkModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		req.setCharacterEncoding("UTF-8");
		HttpSession session=req.getSession();
		String q_id=(String)session.getAttribute("id");
		
		String q_title=req.getParameter("q_title");
		String q_content=req.getParameter("q_content");
		String q_phone=req.getParameter("q_phone");
		String q_qtno=req.getParameter("q_qtno");
		String q_email=req.getParameter("q_email");
		
		
		QuestionDTO d=new QuestionDTO();
		d.setQ_id(q_id);
		d.setQ_content(q_content);
		d.setQ_email(q_email);
		d.setQ_title(q_title);
		d.setQ_phone(q_phone);
		d.setQ_qtno(Integer.parseInt(q_qtno));
		
		QuestionDAO.questionInsert(d);
		return "index.do";
	}

}
