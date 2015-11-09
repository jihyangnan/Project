package com.nezip.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/SaveInsert3ByAjaxServlet")
public class SaveInsert3ByAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String[] facilities = request.getParameterValues("install");
		
		HttpSession session = request.getSession();
		session.setAttribute("facList", facilities);
		boolean[] completeStep =  (boolean[])session.getAttribute("completeStep");
		if(completeStep == null){
			completeStep = new boolean[5];
		}
		if(facilities.length != 0){
			completeStep[2] = true;
		} else {
			completeStep[2] = false;
		}
		session.setAttribute("completeStep", completeStep);
	}

}
