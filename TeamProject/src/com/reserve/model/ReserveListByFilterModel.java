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
		String loc = req.getParameter("loc");
		String startDay = req.getParameter("startDay");
		String endDay = req.getParameter("endDay");
		String peopleNum = req.getParameter("peopleNum");
		
		String[] roomStyle = req.getParameterValues("roomStyle");
		String roomNum = req.getParameter("roomNum");
		String bathNum = req.getParameter("bathNum");
		String bedNum = req.getParameter("bedNum");
		
		String[] homeFac = req.getParameterValues("homeFac");
		
		Map<String, Object> filter = new HashMap<>();
		filter.put("loc", loc);
		filter.put("startDay", startDay);
		filter.put("endDay", endDay);
		filter.put("peopleNum", peopleNum);
		filter.put("roomNum", roomNum);
		filter.put("bathNum", bathNum);
		filter.put("bedNum", bedNum);
		filter.put("roomStyle", roomStyle);
		
		List<ZipRegDTO> list = ReserveDAO.listByFilter(filter);
		list = list.stream().filter(d -> checkFac(d.getFacList(), homeFac)).collect(Collectors.toList());
		req.setAttribute("zipRegList", list);
		
		return "";
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
	
	/*public static void main(String[] args) {
		Map<String, Object> filter = new HashMap<>();
		filter.put("loc", "°æ±â");
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
