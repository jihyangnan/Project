package com.nezip.model;
import com.common.*;
import com.nezip.dao.ZipRegDTO;
import com.board.dao.*;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Insert5ProcessModel implements Model{

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		
		// 세션에 값 저장할 부분
		
		return "nezip_insert6.do";
	}

}