package com.main.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;

public class IndexModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String strPage=req.getParameter("page");
		if(strPage==null)
		{
			strPage="1";
		}
		Map mgmap=new HashMap();
		int mrowSize=5;	
		int mcurpage=Integer.parseInt(strPage);
		
		int mstart=(mcurpage*mrowSize)-(mrowSize-1);
		int mend=mcurpage*mrowSize;
		
		List<BoardDTO> mlist = BoardDAO.board_mListData(mgmap);
		
		System.out.println("mlist="+mlist.size());
		for(int i=0; i<mlist.size(); i++){
			System.out.println("�̹��� : "+mlist.get(i).getSa_img());
			System.out.println("Ÿ��Ʋ : ��"+mlist.get(i).getB_title());
		}
		
		req.setAttribute("mlist", mlist);
		req.setAttribute("pageNum", 0); // ���� ���õ� ������ �޴��� ������� �ٲٱ� ���� ����
		req.setAttribute("jsp", "main.jsp");
		req.getSession().setAttribute("id", "admin");
		return "main/index.jsp";
	}
	
}
