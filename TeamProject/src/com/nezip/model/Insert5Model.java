package com.nezip.model;
import com.common.*;
import com.nezip.dao.ZipRegDTO;
import com.board.dao.*;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Insert5Model implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		HttpSession session = req.getSession();
		ZipRegDTO dto = (ZipRegDTO)session.getAttribute("ZipRegDTO");
		
		if(dto != null){
			req.setAttribute("price", dto.getH_Money());
			req.setAttribute("startDay", dto.getH_Startday());
			req.setAttribute("endDay", dto.getH_Endday());
		} else {
			System.out.println("���ǿ� ZipRegDTO�� ���� insert5");
		}
		
		req.setAttribute("insertStep", 5);
		req.setAttribute("insertPage", "nezipInsert5.jsp");
		req.setAttribute("pageNum", 1); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "../nezip/nezipinsertmenu.jsp");
		return "main/index.jsp";
	}

}