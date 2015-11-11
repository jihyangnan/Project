package com.reserve.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.nezip.dao.Fac_kindDTO;
import com.nezip.dao.Fac_regDTO;
import com.nezip.dao.Home_categoryDTO;
import com.nezip.dao.NezipDAO;
import com.nezip.dao.ZipRegDTO;
import com.reserve.dao.*;
import java.util.List;
import java.util.StringTokenizer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import com.common.Model;

public class ReserveDoitModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String strPage=req.getParameter("page");
		
		String r_addr=req.getParameter("raddr");
		String r_start=req.getParameter("resst");
		String r_end=req.getParameter("resed");
		String r_money=req.getParameter("rmoney");
		String r_person=req.getParameter("person");
		
		String str = r_start;
		String str2 = r_end;
		StringTokenizer st=new StringTokenizer(str,"/");
		StringTokenizer st2=new StringTokenizer(str2,"/");
		String yy=st.nextToken();
		String mm=st.nextToken();
		String dd=st.nextToken();
		String yy2=st2.nextToken();
		String mm2=st2.nextToken();
		String dd2=st2.nextToken();
		int day=((Integer.parseInt(dd2))-(Integer.parseInt(dd)));
		int money = ((Integer.parseInt(r_money))*(Integer.parseInt(r_person)))*day;
		
		HttpSession session=req.getSession();
		String r_member=(String)session.getAttribute("id");
		ZipRegDTO dto=NezipDAO.zipregData(
				Integer.parseInt(r_addr));
		ReserveDTO rd= new ReserveDTO();
		rd.setR_addr(Integer.parseInt(r_addr));
		rd.setR_member(r_member);
        DateFormat sdFormat = new SimpleDateFormat("yyyy/MM/dd");
        Date tempDate = sdFormat.parse(r_start);
        rd.setR_start((tempDate));
        Date tempDate1 = sdFormat.parse(r_end);
		rd.setR_end((tempDate1));
		rd.setR_money(money);
		rd.setR_person(Integer.parseInt(r_person));
		ReserveDAO.reserveDoit(rd);
		
		req.setAttribute("rd", rd);
		req.setAttribute("no", r_addr);
		req.setAttribute("page", strPage);			
		//return "reserve_detail.do?no=" + r_addr + "&page="+strPage;
		return "mypage_reserveCheck.do";
	}

}
