package com.town.model;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.town.dao.TownCodeDTO;
import com.town.dao.TownDAO;
import com.town.dao.TownListDTO;
import com.town.dao.TownListSearchValues;

public class TownListModel implements Model {

	@SuppressWarnings("unchecked")
	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		TownListSearchValues values = new TownListSearchValues();
		String pageNoStr = req.getParameter("pageNo");
		String areaCode = req.getParameter("areaCode");
		String sigunguCode = req.getParameter("sigunguCode");
		String currPage = req.getParameter("currPage");
		String contentTypeId = req.getParameter("contentTypeId");
		String cat1 = req.getParameter("cat1");
		String cat2 = req.getParameter("cat2");
		String cat3 = req.getParameter("cat3");
		if(pageNoStr != null){
			values.setCurrPage(pageNoStr);
		}
		if(areaCode != null){
			values.setAreaCode(areaCode);
			req.setAttribute("areaCode", areaCode);
		}
		if(sigunguCode != null){
			values.setSigunguCode(sigunguCode);
			req.setAttribute("sigunguCode", sigunguCode);
		}
		if(currPage != null){
			values.setCurrPage(currPage);
		}
		if(contentTypeId != null){
			values.setContentTypeId(contentTypeId);
			req.setAttribute("contentTypeId", contentTypeId);
		}
		if(cat1 != null){
			values.setCat1(cat1);
			req.setAttribute("cat1", cat1);
		}
		if(cat2 != null){
			values.setCat2(cat2);
			req.setAttribute("cat2", cat2);
		}
		if(cat3 != null){
			values.setCat3(cat3);
			req.setAttribute("cat3", cat3);
		}
		
		Map<String, Object> returnMap = TownDAO.getTownsMap(values);
		// �������� ����Ʈ �ҷ�����
		List<TownListDTO> list = (List<TownListDTO>)returnMap.get("list");
		
		int totalCount = (int)returnMap.get("totalCount");	// ��ü ����
		int pageNo = (int)returnMap.get("pageNo");			// ���� ������
		int numOfRows = (int)returnMap.get("numOfRows");	// �������� ����
		int totalPage = (int)Math.ceil((totalCount/(numOfRows*1.0)));	// ��ü ������
		int blockSize = 5;	// ����¡ ó�� �κп��� �� ��ϴ� ǥ���� ������ ��
		int pageStartNum = (pageNo-1)/5*5+1;	// ����¡ ó�� �κп��� �����ϴ� ������ ��ȣ
		int pageEndNum = pageStartNum + blockSize - 1;	// ����¡ ó�� �κп��� ������ ������ ��ȣ
		
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("pageStartNum", pageStartNum);
		req.setAttribute("pageEndNum", pageEndNum);
		req.setAttribute("pageNo", pageNo);
		req.setAttribute("list", list);
		
		// �����ڵ� ����Ʈ �ҷ�����
		List<TownCodeDTO> areaCodeList = TownDAO.getAreaCodeList("");
		req.setAttribute("areaCodeList", areaCodeList);
		
		if(!(values.getAreaCode().equals(""))){
			// �ñ����ڵ� ����Ʈ �ҷ�����
			List<TownCodeDTO> sigunguCodeList = TownDAO.getAreaCodeList(values.getAreaCode());
			req.setAttribute("sigunguCodeList", sigunguCodeList);
		}
		
		// ���� �з��ڵ� �ҷ�����
		List<TownCodeDTO> cat1CodeList = TownDAO.getCategoryCodeList(values.getContentTypeId(), "", "");
		req.setAttribute("cat1CodeList", cat1CodeList);
		
		if(!(values.getCat1().equals(""))){
			List<TownCodeDTO> cat2CodeList = TownDAO.getCategoryCodeList(values.getContentTypeId(), values.getCat1(), "");
			req.setAttribute("cat2CodeList", cat2CodeList);
			
			if(!(values.getCat2().equals(""))){
				List<TownCodeDTO> cat3CodeList = TownDAO.getCategoryCodeList(values.getContentTypeId(), values.getCat1(),
						values.getCat2());
				req.setAttribute("cat3CodeList", cat3CodeList);
			}
		}
		
		
		req.setAttribute("pageNum", 3); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../town/town_list.jsp");
		return "main/index.jsp";
	}
}
