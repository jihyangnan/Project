package com.town.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.town.dao.TownDAO;
import com.town.dao.TownDetailCommonDTO;
import com.town.dao.TownDetailImageDTO;
import com.town.dao.TownDetailIntroCourseDTO;
import com.town.dao.TownDetailIntroCultureDTO;
import com.town.dao.TownDetailIntroFestivalDTO;
import com.town.dao.TownDetailIntroFoodDTO;
import com.town.dao.TownDetailIntroLeportsDTO;
import com.town.dao.TownDetailIntroShoppingDTO;
import com.town.dao.TownDetailIntroTourSpotDTO;
import com.town.dao.TownDetailRepeatInfoDTO;

public class TownDetailModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String contentId = req.getParameter("contentId");
		String contentType = req.getParameter("contentTypeId");
		req.setAttribute("contentId", contentId);
		req.setAttribute("contentType", contentType);
		
		TownDetailCommonDTO common = TownDAO.getTownDetailCommon(contentId, contentType);
		req.setAttribute("common", common);
		
		if(contentType.equals("12")){ 			// ������
			TownDetailIntroTourSpotDTO spot = TownDAO.getTownDetailIntroTourSpot(contentId, contentType);
			req.setAttribute("spot", spot);
		} else if(contentType.equals("14")){	// ��ȭ�ü�
			TownDetailIntroCultureDTO culture = TownDAO.getTownDetailIntroCulture(contentId, contentType);
			req.setAttribute("culture", culture);
		} else if(contentType.equals("15")){	// ���/����/����
			TownDetailIntroFestivalDTO festival = TownDAO.getTownDetailIntroFestival(contentId, contentType);
			req.setAttribute("festival", festival);
		} else if(contentType.equals("25")){	// �����ڽ�
			TownDetailIntroCourseDTO course = TownDAO.getTownDetailIntroCourse(contentId, contentType);
			req.setAttribute("course", course);
		} else if(contentType.equals("28")){	// ������
			TownDetailIntroLeportsDTO leports = TownDAO.getTownDetailIntroLeports(contentId, contentType);
			req.setAttribute("leports", leports);
		} else if(contentType.equals("38")){	// ����
			TownDetailIntroShoppingDTO shopping = TownDAO.getTownDetailIntroShopping(contentId, contentType);
			req.setAttribute("shopping", shopping);
		} else if(contentType.equals("39")){	// ������
			TownDetailIntroFoodDTO food = TownDAO.getTownDetailIntroFood(contentId, contentType);
			req.setAttribute("food", food);
		}
		
		List<TownDetailRepeatInfoDTO> repeatList = TownDAO.getTownDetailRepeatInfo(contentId, contentType);
		req.setAttribute("repeatList", repeatList);
		
		List<TownDetailImageDTO> imageList = TownDAO.getTownDetailImage(contentId, contentType);
		req.setAttribute("imageList", imageList);
		
		req.setAttribute("pageNum", 3); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../town/town_detail.jsp");
		return "main/index.jsp";
	}

}
