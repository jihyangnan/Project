package com.member.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.member.dao.MemberDAO;
import com.member.dao.ZipcodeDTO;

public class PostFindModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String dong=req.getParameter("dong");
		List<ZipcodeDTO> list=MemberDAO.postFind(dong);
		if(list.size()>0 || list!=null) {
			for(ZipcodeDTO d:list){
				d.setAddr(d.getSido()+" "+d.getGugun()+" "+d.getDong()+" "+d.getBunji());				
			}
		}
		req.setAttribute("list", list);
		req.setAttribute("count", list.size());
		return "join/postfind_result.jsp";
	}

}
