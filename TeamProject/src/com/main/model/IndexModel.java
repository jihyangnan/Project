package com.main.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;
import com.nezip.dao.NezipDAO;
import com.nezip.dao.ZipRegDTO;
import com.town.dao.TownDAO;
import com.town.dao.TownListDTO;
import com.town.dao.TownListSearchValues;

public class IndexModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String strPage=req.getParameter("page");
		if(strPage==null)
		{
			strPage="1";
		}
		Map mgmap=new HashMap();
		List<BoardDTO> mlist = BoardDAO.board_mListData(mgmap);
		
		List<ZipRegDTO> zipList = NezipDAO.ZipListForIndex();
		
		TownListSearchValues values = new TownListSearchValues();
		Map<String, Object> returnMap = TownDAO.getTownsMap(values);
		// 관광정보 리스트 불러오기
		@SuppressWarnings("unchecked")
		List<TownListDTO> townList = (List<TownListDTO>)returnMap.get("list");
		
		int aptCount = NezipDAO.countZipByType(1);
		int dadokCount = NezipDAO.countZipByType(2);
		int guestHouseCount = NezipDAO.countZipByType(3);
		int woodenCount = NezipDAO.countZipByType(4);
		int villaCount = NezipDAO.countZipByType(5);
		int gisukCount = NezipDAO.countZipByType(6);
		int campingCarCount = NezipDAO.countZipByType(7);
		int tentCount = NezipDAO.countZipByType(8);
		int hutCount = NezipDAO.countZipByType(9);
		int etcCount = NezipDAO.countZipByType(10);
		
		req.setAttribute("aptCount", aptCount);
		req.setAttribute("dadokCount", dadokCount);
		req.setAttribute("guestHouseCount", guestHouseCount);
		req.setAttribute("woodenCount", woodenCount);
		req.setAttribute("villaCount", villaCount);
		req.setAttribute("gisukCount", gisukCount);
		req.setAttribute("campingCarCount", campingCarCount);
		req.setAttribute("tentCount", tentCount);
		req.setAttribute("hutCount", hutCount);
		req.setAttribute("etcCount", etcCount);
		
		req.setAttribute("zipList", zipList);
		req.setAttribute("townList", townList);
		req.setAttribute("mlist", mlist);
		req.setAttribute("pageNum", 0); // 현재 선택된 페이지 메뉴를 녹색으로 바꾸기 위한 변수
		req.setAttribute("jsp", "main.jsp");

	

		//req.getSession().setAttribute("", "admin");
        


		return "main/index.jsp";
	}
	
}
