package com.town.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.town.dao.TownCodeDTO;
import com.town.dao.TownDAO;

public class AreaCodeAjaxModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String areaCode = req.getParameter("areaCode");
		List<TownCodeDTO> areaCodeList = TownDAO.getAreaCodeList(areaCode);
		req.setAttribute("codeList", areaCodeList);
		return "town/townCodeAjax.jsp";
	}

}
