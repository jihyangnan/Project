package com.question.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class QuestionInsertModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		//insert�ϴ� �������� ������
		req.setAttribute("jsp", "../board/inquire.jsp");
		return "main/index.jsp";
	}

}
