package com.nezip.model;
import com.common.*;
import com.nezip.dao.ZipRegDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Insert2Model implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		HttpSession session = req.getSession();
		ZipRegDTO dto = (ZipRegDTO)session.getAttribute("ZipRegDTO");
		
		if(dto != null){ 
			req.setAttribute("addr1", dto.getH_Addr1());
			req.setAttribute("addr2", dto.getH_Addr2());
			req.setAttribute("postcode", dto.getPostcode());
			String loc = dto.getH_Loc();
			if(loc != null){
				String[] locs = loc.split(",");
				if(locs.length == 2){
					req.setAttribute("lat", locs[0]);
					req.setAttribute("lng", locs[1]);
				}
			}
		}else{
			System.out.println("���ǿ� ZipRegDTO�� ���� insert2");
		}
		
		req.setAttribute("insertStep", 2);
		req.setAttribute("insertPage", "nezipInsert2.jsp");
		req.setAttribute("pageNum", 1); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
		
	}

}