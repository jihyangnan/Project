package com.question.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;
import com.question.dao.QuestionDAO;
import com.question.dao.QuestionDTO;

public class QuestionEmailModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		String strNo=req.getParameter("q_no");
		String strPage=req.getParameter("page");
		
		System.out.println("UpdateModel="+strNo+","+strPage);
		String q_content=req.getParameter("q_content");
		QuestionDTO d = QuestionDAO.questionEmailData(Integer.parseInt(strNo));
		/*req.setAttribute("b_no", strNo);*/
		req.setAttribute("q_content", q_content);
		req.setAttribute("page", strPage);
		req.setAttribute("dto", d);
		
		req.setAttribute("jsp", "../board/q_email.jsp");
		return "main/index.jsp";
	}

}
