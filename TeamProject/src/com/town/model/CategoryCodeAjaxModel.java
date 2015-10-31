package com.town.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.town.dao.TownCodeDTO;
import com.town.dao.TownDAO;

public class CategoryCodeAjaxModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String contentTypeId = req.getParameter("contentTypeId");
		String cat1 = req.getParameter("cat1");
		String cat2 = req.getParameter("cat2");
		List<TownCodeDTO> categoryCodeList = TownDAO.getCategoryCodeList(contentTypeId, cat1, cat2);
		req.setAttribute("codeList", categoryCodeList);
		return "town/townCodeAjax.jsp";
	}

}
