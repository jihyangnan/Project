package com.reserve.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.reserve.dao.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.common.Model;

public class ReserveListModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String strPage=req.getParameter("page");
	    if(strPage==null)
	    	strPage="1";
	    int curpage=Integer.parseInt(strPage);
	    int rowSize=5;
	    int start=(curpage*rowSize)-(rowSize-1);
	    int end=curpage*rowSize;
	    Map map=new HashMap();
	    map.put("start", start);
	    map.put("end", end);
	    List<ReserveDTO> list=ReserveDAO.reserveListData(map);
	    for(ReserveDTO d:list)
	    {
	    	d.setReviewCount(ReserveDAO.reviewCount(d.getR_no()));
	    }
	    int totalpage=ReserveDAO.reserveTotalPage();
	    req.setAttribute("list", list);
	    req.setAttribute("curpage", curpage);
	    req.setAttribute("totalpage", totalpage);
		req.setAttribute("jsp", "../reserve/list.jsp");
		return "main/main.jsp";
	}

}
