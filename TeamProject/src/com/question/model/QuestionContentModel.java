package com.question.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.board.dao.ReBoardDTO;
import com.common.Model;
import com.question.dao.QuestionDAO;
import com.question.dao.QuestionDTO;

public class QuestionContentModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String strNo=req.getParameter("q_no");
		String strPage=req.getParameter("page");
		
		HttpSession session=req.getSession();
		String q_id=(String)session.getAttribute("id");
		System.out.println("questionContent_id="+q_id);
		
		QuestionDTO d = QuestionDAO.questionContentData(Integer.parseInt(strNo));
	// 세션에 아이디 등록

		req.setAttribute("page", strPage);
		req.setAttribute("dto", d);
		req.setAttribute("jsp", "../board/q_content.jsp");
		return "main/index.jsp";
	}
}
