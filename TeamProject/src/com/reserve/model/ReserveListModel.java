package com.reserve.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.lang.*;
import com.reserve.dao.*;
import com.nezip.dao.*;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.common.Model;

public class ReserveListModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
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
	    List<ZipRegDTO> list=NezipDAO.zipregList(map);
	   
	    /*
	    for(ZipRegDTO d:list)
	    {
	    	String aa=d.getH_Loc();
	    	
	    	StringTokenizer tok= new StringTokenizer(aa);
	    	String a1=tok.nextToken(",");
	    	String a2=tok.nextToken(",");
	    }*/
	    /*list.forEach(e -> {
	    	System.out.println("upday:" +e.getH_Loc());
	    });*/
	    List<Home_categoryDTO> homeCateoryList = NezipDAO.homeCategoryList();
	    List<Home_facDTO> homeFacList = NezipDAO.homeFacList();
		req.setAttribute("homeCateoryList", homeCateoryList);	// 집유형리스트
		req.setAttribute("homeFacList", homeFacList);
	    
	    int totalpage=ReserveDAO.reserveTotalPage();
	    req.setAttribute("list", list);
	    req.setAttribute("curpage", curpage);
	    req.setAttribute("totalpage", totalpage);
	    req.setAttribute("pageNum", 2); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../reserve/list.jsp");
		return "main/index.jsp";
	}

}
