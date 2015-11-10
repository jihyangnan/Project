package com.reserve.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.nezip.dao.ZipRegDTO;
import com.reserve.dao.ReserveDAO;

public class ReserveListByMovingMapModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String strLat = req.getParameter("lat");
		String strLng = req.getParameter("lng");
		List<ZipRegDTO> list = ReserveDAO.listByMovingMap();
		Map<String, Double> filterValue = new HashMap<>();
		filterValue.put("limit", 0.5);
		filterValue.put("lat", Double.parseDouble(strLat));
		filterValue.put("lng", Double.parseDouble(strLng));
		List<ZipRegDTO> resultList = list.stream().filter(d -> calDistance(filterValue, d)).collect(Collectors.toList());
		req.setAttribute("zipRegList", resultList);
		
		return "reserve/listByMovingMap.jsp";
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
	 
}
