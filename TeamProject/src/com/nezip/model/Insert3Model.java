package com.nezip.model;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.nezip.dao.Fac_kindDTO;
import com.nezip.dao.Fac_regDTO;
import com.nezip.dao.Home_facDTO;
import com.nezip.dao.NezipDAO;
public class Insert3Model implements Model{

	@SuppressWarnings("unchecked")
	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Fac_kindDTO> facKindList = NezipDAO.facKindList();
		List<Home_facDTO> homeFacList = NezipDAO.homeFacList();

		req.setAttribute("facKindList", facKindList);
		req.setAttribute("homeFacList", homeFacList);

		
		
		HttpSession session = req.getSession();
		List<Fac_regDTO> facList = (List<Fac_regDTO>)session.getAttribute("facList");
		if(facList != null){
			String str = "";
			for (Fac_regDTO fac : facList) {
				str += fac.getC_hsNo() + ",";
			}
			req.setAttribute("facList", str);
		}
		
		
		req.setAttribute("insertStep", 3);
		req.setAttribute("insertPage", "nezipInsert3.jsp");
		req.setAttribute("pageNum", 1); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
		
	}

}