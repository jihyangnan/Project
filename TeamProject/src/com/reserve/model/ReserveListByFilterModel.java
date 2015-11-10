package com.reserve.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.nezip.dao.Fac_regDTO;
import com.nezip.dao.ZipRegDTO;
import com.reserve.dao.ReserveDAO;

public class ReserveListByFilterModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		//String loc = req.getParameter("loc");
		String latStr = req.getParameter("lat");
		String lngStr = req.getParameter("lng");
		System.out.println("위도: " + latStr);
		System.out.println("경도: " + lngStr);
		
		String startDay = req.getParameter("startDay");
		if(startDay.equals("")){
			startDay = null;
		}
		String endDay = req.getParameter("endDay");
		if(endDay.equals("")){
			endDay = null;
		}
		String peopleNum = req.getParameter("peopleNum");
		
		String[] roomStyle = req.getParameterValues("roomStyle");
		String roomNum = req.getParameter("roomNum");
		String bathNum = req.getParameter("bathNum");
		String bedNum = req.getParameter("bedNum");
		
		String[] homeFac = req.getParameterValues("homeFac");
		String[] homeCategory = req.getParameterValues("homeCategory");
		Map<String, Object> filter = new HashMap<>();
		filter.put("startDay", startDay);
		filter.put("endDay", endDay);
		filter.put("peopleNum", peopleNum);
		filter.put("roomNum", roomNum);
		filter.put("bathNum", bathNum);
		filter.put("bedNum", bedNum);
		filter.put("roomStyle", roomStyle);
		filter.put("homeCategory", homeCategory);
		
		List<ZipRegDTO> list = ReserveDAO.listByFilter(filter);
		
		if(latStr != null && lngStr != null && !latStr.equals("") && !lngStr.equals("")){
			System.out.println("거리측정 시작함");
			Map<String, Double> filterValue = new HashMap<>();
			filterValue.put("limit", 0.5);
			filterValue.put("lat", Double.parseDouble(latStr));
			filterValue.put("lng", Double.parseDouble(lngStr));
			list = list.stream().filter(d -> calDistance(filterValue, d)).collect(Collectors.toList());
		}
		if(homeFac != null){
			list = list.stream().filter(d -> checkFac(d.getFacList(), homeFac)).collect(Collectors.toList());
		}
		
		
		// 페이징 처리...
		String strPage=req.getParameter("page");
	    if(strPage==null){
	    	strPage="1";
	    }
	    int curpage=Integer.parseInt(strPage);
	    int rowSize=5;
		
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
		
		
		req.setAttribute("zipRegList", list);
		return "reserve/listByAjax.jsp";
	}
	
	private boolean checkFac(List<Fac_regDTO> facList, String[] homeFac){
		for(int i=0; i<homeFac.length; i++){
			boolean check = false;
			for(Fac_regDTO f : facList){
				if(f.getC_hsNo() == Integer.parseInt(homeFac[i])){
					check = true;
					break;
				}
			}
			if(!check){
				return false;
			}
		}
		return true;
	}
	
	private boolean calDistance(Map<String, Double> start, ZipRegDTO end) {
		double startlat = start.get("lat");	// 시작 경도
		double startlng = start.get("lng");	// 시작 위도
		double limit = start.get("limit");	// 제한 거리 km
		
		String[] loc = end.getH_Loc().split(",");
		String endlat = loc[0];
		String endlng = loc[1];
		
		double earthRadius = 6371.009;	
		
		double radLat1 = Math.toRadians(startlat);
		double radLat2 = Math.toRadians(Double.parseDouble(endlat));
		double radDist = Math.toRadians(startlng - Double.parseDouble(endlng));
		double a = Math.sin(radLat1) * Math.sin(radLat2) + Math.cos(radLat1) * Math.cos(radLat2) * Math.cos(radDist);
		
		double dis = earthRadius * Math.acos(a);
		
		if(limit > dis){	// 제한거리보다 작을 경우
			return true;
		} else {			// 제한거리보다 클경우
			return false;
		}
	}
	
	/*public static void main(String[] args) {
		Map<String, Object> filter = new HashMap<>();
		filter.put("loc", "경기");
		filter.put("startDay", "2015/11/12");
		filter.put("endDay", "2015/11/13");
		filter.put("peopleNum", null);
		filter.put("roomNum", null);
		filter.put("bathNum", null);
		filter.put("bedNum", null);
		filter.put("roomStyle", new String[]{"1", "2", "3"});
		
		List<ZipRegDTO> list = ReserveDAO.listByFilter(filter);
		String[] homeFac = {"1", "2", "3", "27"};
		list = list.stream().filter(d -> checkFac(d.getFacList(), homeFac)).collect(Collectors.toList());
		System.out.println(list.size());
	}*/

}
