package com.nezip.model;
import com.common.*;
import com.nezip.dao.Fac_regDTO;
import com.nezip.dao.Home_photoDTO;
import com.nezip.dao.NezipDAO;
import com.nezip.dao.ZipRegDTO;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class InsertFinalModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		HttpSession session = req.getSession();
		
		boolean[] completeStep = (boolean[]) session.getAttribute("completeStep");
		if(completeStep == null){
			return "nezip_insert1.do";
		}
		for (int i=0; i<completeStep.length; i++) {
			if(completeStep[i] == false){
				return "nezip_insert" + (i+1) + ".do";
			}
		}
		
		ZipRegDTO zipRegDTO = (ZipRegDTO)session.getAttribute("ZipRegDTO");
		String[] safetyList = (String[]) session.getAttribute("safetyList");
		String[] facList = (String[]) session.getAttribute("facList");
		String[] photos = (String[])session.getAttribute("photos");
		
		List<Fac_regDTO> facDtoList = null;
		List<Home_photoDTO> photoList = null;
		if(zipRegDTO != null && safetyList != null && facList != null && photos != null){
			 facDtoList = new ArrayList<>();
			 photoList = new ArrayList<>();
			 for(String fac : facList){
				 Fac_regDTO facRegDTO = new Fac_regDTO();
				 facRegDTO.setC_hsNo(Integer.parseInt(fac));
				 facDtoList.add(facRegDTO);
			 }
			 for(String safety : safetyList){
				 Fac_regDTO facRegDTO = new Fac_regDTO();
				 facRegDTO.setC_hsNo(Integer.parseInt(safety));
				 facDtoList.add(facRegDTO);
			 }
			 for(String photo : photos){
				 Home_photoDTO photoDTO = new Home_photoDTO();
				 photoDTO.setP_File(photo);
				 photoDTO.setP_Name(" "); // 사진에 이름 넣는 기능 구현시 변경하기..
				 photoList.add(photoDTO);
			 }
			 String id = (String) session.getAttribute("id");
			 zipRegDTO.setH_Id(id);
			 NezipDAO.insertZipReg(zipRegDTO, facDtoList, photoList);
			 
			 session.removeAttribute("ZipRegDTO");
			 session.removeAttribute("safetyList");
			 session.removeAttribute("facList");
			 session.removeAttribute("photos");
			 session.removeAttribute("completeStep");
		}
		
		return "index.do";
	}

}