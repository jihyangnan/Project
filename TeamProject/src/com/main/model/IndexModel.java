package com.main.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class IndexModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		/*String strPage = req.getParameter("page");
		if(strPage == null){
			strPage = "main/main.jsp";
		}
		int pageNum = 0;
		
		if(strPage.startsWith("nezip")){
			req.setAttribute("insertStep", strPage.substring("nezip/nezipinsert".length(), strPage.lastIndexOf(".jsp")));
			req.setAttribute("insertPage", strPage.substring("nezip/".length()));
			strPage = "nezip/nezipinsertmenu.jsp";
			pageNum = 1;
		} else if(strPage.startsWith("reserve")){
			pageNum = 2;
		} else if(strPage.startsWith("town")){
			pageNum = 3;
		} else if(strPage.startsWith("board")){
			pageNum = 4;
		} else if(strPage.startsWith("join")){
			pageNum = 5;
		}*/
		
		req.setAttribute("pageNum", 0);
		req.setAttribute("jsp", "main.jsp");
		return "main/index.jsp";
	}
	
}
