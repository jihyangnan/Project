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

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		TownListSearchValues values = new TownListSearchValues();
		
		if("ajax".equalsIgnoreCase(req.getParameter("reqeustType"))){
			setSearchValues(values, req);
			setList(values, req);
			return "town/searchListAjax.jsp";
		} else {
			setList(values, req);
			// �����ڵ� ����Ʈ �ҷ�����
			List<TownCodeDTO> areaCodeList = TownDAO.getAreaCodeList("");
			req.setAttribute("areaCodeList", areaCodeList);
			
			// ���� �з��ڵ� �ҷ�����
			List<TownCodeDTO> categoryCodeList = TownDAO.getCategoryCodeList("", "", "");
			req.setAttribute("categoryCodeList", categoryCodeList);
			
			req.setAttribute("pageNum", 3); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
			req.setAttribute("jsp", "../town/town_list.jsp");
			return "main/index.jsp";
		}
		
		/*Map<String, Object> returnMap = TownDAO.getTownsMap(values);
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
		req.setAttribute("pageEndNum", pageEndNum);
		req.setAttribute("pageNo", pageNo);
		req.setAttribute("list", list);
		
		// �����ڵ� ����Ʈ �ҷ�����
		List<TownCodeDTO> areaCodeList = TownDAO.getAreaCodeList("");
		req.setAttribute("areaCodeList", areaCodeList);
		
		// ���� �з��ڵ� �ҷ�����
		List<TownCodeDTO> categoryCodeList = TownDAO.getCategoryCodeList("", "", "");
		req.setAttribute("categoryCodeList", categoryCodeList);
		
		req.setAttribute("pageNum", 3); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../town/town_list.jsp");
		return "main/index.jsp";*/
	}
	
	/**
	 * �˻�Ÿ�� ����
	 * @param values - �������� ���� Ŭ����
	 * @param req
	 */
	private void setSearchValues(TownListSearchValues values, HttpServletRequest req){
		String areaCode = req.getParameter("areaCode");
		String sigunguCode = req.getParameter("sigunguCode");
		String currPage = req.getParameter("currPage");
		String contentTypeId = req.getParameter("contentTypeId");
		String cat1 = req.getParameter("cat1");
		String cat2 = req.getParameter("cat2");
		String cat3 = req.getParameter("cat3");
		
		if(areaCode != null && !(areaCode.equals("0"))){
			values.setAreaCode(areaCode);
		}
		if(sigunguCode != null){
			values.setSigunguCode(sigunguCode);
		}
		if(currPage != null){
			values.setCurrPage(currPage);
		}
		if(contentTypeId != null){
			values.setContentTypeId(contentTypeId);
		}
		if(cat1 != null){
			values.setCat1(cat1);
		}
		if(cat2 != null){
			values.setCat2(cat2);
		}
		if(cat3 != null){
			values.setCat3(cat3);
		}
	}
	
	/**
	 * �������� ����Ʈ ����
	 * @param values - �˻�Ÿ�� ���� Ŭ����
	 * @param req
	 */
	@SuppressWarnings("unchecked")
	private void setList(TownListSearchValues values, HttpServletRequest req){
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
	}
}
