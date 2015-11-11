package com.reserve.model;

import java.util.List;
import java.util.stream.Collectors;
import com.nezip.dao.*;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.common.Model;

public class ReserveListModel implements Model {
	
	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String strPage=req.getParameter("page");
	    if(strPage==null){
	    	strPage="1";
	    }
	    int curpage=Integer.parseInt(strPage);
	    int rowSize=5;
	    
	    List<ZipRegDTO> list = new ArrayList<>();
	    list = NezipDAO.zipregList();
		list = list.stream().filter(d -> calDistance(d)).collect(Collectors.toList());
		
		
		int totalCount = list.size();	// 전체 개수
		int totalPage = (int)Math.ceil((totalCount/(rowSize*1.0)));	// 전체 페이지
		int blockSize = 5;	// 페이징 처리 부분에서 한 블록당 표시할 페이지 수
		int pageStartNum = (curpage-1)/rowSize * rowSize + 1;	// 페이징 처리 부분에서 시작하는 페이지 번호
		int pageEndNum = pageStartNum + blockSize - 1;	// 페이징 처리 부분에서 끝나는 페이지 번호
		
		req.setAttribute("rowSize", rowSize);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("pageStartNum", pageStartNum);
		req.setAttribute("pageEndNum", pageEndNum);
		req.setAttribute("pageNo", curpage);
		req.setAttribute("list", list);
	   
	   
	    List<Home_categoryDTO> homeCateoryList = NezipDAO.homeCategoryList();
	    List<Home_facDTO> homeFacList = NezipDAO.homeFacList();
		req.setAttribute("homeCateoryList", homeCateoryList);	// 집유형리스트 - 필터에 사용
		req.setAttribute("homeFacList", homeFacList);			// 시설 리스트 - 필터에 사용
	    
	    req.setAttribute("totalpage", totalPage);
	    req.setAttribute("pageNum", 2); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "../reserve/list.jsp");
		
		return "main/index.jsp";
	}
	
	
	private boolean calDistance(ZipRegDTO end) {
		// 백범로 18 위치
		double centerLat = 37.55320241443468;	
		double centerLng = 126.93689643131309;
		double limitDistance = 0.5;
	
		String[] loc = end.getH_Loc().split(",");
		String endlat = loc[0];
		String endlng = loc[1];
		
		double earthRadius = 6371.009;	
		
		double radLat1 = Math.toRadians(centerLat);
		double radLat2 = Math.toRadians(Double.parseDouble(endlat));
		double radDist = Math.toRadians(centerLng - Double.parseDouble(endlng));
		double a = Math.sin(radLat1) * Math.sin(radLat2) + Math.cos(radLat1) * Math.cos(radLat2) * Math.cos(radDist);
		
		double dis = earthRadius * Math.acos(a);
		
		if(limitDistance > dis){	// 제한거리보다 작을 경우
			return true;
		} else {			// 제한거리보다 클경우
			return false;
		}
	}

}
