package com.reserve.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.common.Model;
import com.nezip.dao.Fac_kindDTO;
import com.nezip.dao.Fac_regDTO;
import com.nezip.dao.Home_categoryDTO;
import com.nezip.dao.NezipDAO;
import com.nezip.dao.ZipRegDTO;
import com.reserve.dao.*;
import java.util.List;
import java.util.ArrayList;
public class ReserveContentModel implements Model {

	
		@Override
		public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
			// TODO Auto-generated method stub
			/*String strNo=req.getParameter("no");
			String strPage=req.getParameter("page");
  			ReserveDTO d=ReserveDAO.reserveContentData(
  					Integer.parseInt(strNo));     // rnoÁý ¹øÈ£
  			List<ReviewDTO> temp=
				ReserveDAO.reviewListData(Integer.parseInt(strNo));
  			List<ReviewDTO> list=
					new ArrayList<ReviewDTO>();
			req.setAttribute("rlist", list);
			req.setAttribute("rDto", list);
			req.setAttribute("page", strPage);
			req.setAttribute("dto", d);*/
			String strNo=req.getParameter("no");
			String strPage=req.getParameter("page");
			ZipRegDTO dto=NezipDAO.zipregData(
					Integer.parseInt(strNo));
			List<Fac_regDTO> flist=NezipDAO.facregList(Integer.parseInt(strNo));
			List<ReviewDTO> list=
					ReserveDAO.reviewListData(Integer.parseInt(strNo));
			req.setAttribute("list", list);
			req.setAttribute("flist", flist);
			req.setAttribute("dto", dto);
			req.setAttribute("jsp", "../reserve/detail.jsp");
			return "main/index.jsp";
	}

}
