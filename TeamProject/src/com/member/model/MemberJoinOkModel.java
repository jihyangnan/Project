package com.member.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.member.dao.MemberDAO;
import com.member.dao.MemberDTO;

public class MemberJoinOkModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
		String pwhint=req.getParameter("pwhint");
		String name=req.getParameter("name");
		String rrn1=req.getParameter("rrn1");
		String rrn2=req.getParameter("rrn2");
		String sex=req.getParameter("sex");
		String birth=req.getParameter("birth");
		String post=req.getParameter("post");
		String addr1=req.getParameter("addr1");
		String addr2=req.getParameter("addr2");
		String tel1=req.getParameter("tel1");
		String tel2=req.getParameter("tel2");
		String tel3=req.getParameter("tel3");
		String email=req.getParameter("email");
		
		MemberDTO md=new MemberDTO();
		md.setId(id);
		md.setPwd(pwd);
		md.setPwhint(pwhint);
		md.setName(name);
		md.setRrn(rrn1+"-"+rrn2);
		md.setSex(sex);
		md.setBirth(birth);
		md.setPost(post);
		md.setAddr1(addr1);
		md.setAddr2(addr2);	
		md.setTel(tel1+"-"+tel2+"-"+tel3);
		md.setEmail(email);
		System.out.println(md.getName());
		
		MemberDAO.memberJoin(md);
		return "index.do";
	}
}
