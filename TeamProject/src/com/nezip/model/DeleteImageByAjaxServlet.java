package com.nezip.model;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nezip.dao.ZipRegDTO;


@WebServlet("/deleteImage")
public class DeleteImageByAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileName = request.getParameter("name");
		String contextRootPath = request.getServletContext().getRealPath("/");
		File file = new File(contextRootPath + "/upload/" + fileName);
		if(file.exists()){
			file.delete();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
