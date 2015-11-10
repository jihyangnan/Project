package com.question.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;
import com.question.dao.QuestionDAO;
import com.question.dao.QuestionDTO;

public class QuestionEmailSendModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		String strPage=req.getParameter("page");
		String strNo=req.getParameter("q_no");
		String q_title=req.getParameter("q_title");
		String q_content=req.getParameter("q_content");
		System.out.println("page: "+strPage);
		System.out.println("strNo: "+strNo);
		System.out.println("model-q_title: "+q_title);
		System.out.println("model-q_content: "+q_content);

		QuestionDTO d=new QuestionDTO();
		d.setQ_no(Integer.parseInt(strNo));
		d.setQ_title(q_title);
		d.setQ_content(q_content.trim());
		
		System.out.println("model-q_title2: "+q_title);
		System.out.println("model-q_content2: "+q_content);
		
		req.setAttribute("q_no", strNo);
		req.setAttribute("page", strPage);
		QuestionDAO.questionEmail(d);
		//return "board/board_update_ok.jsp"; 
		return "question_content.do?q_no=" + strNo + "&page=" + strPage ;
	}

}
