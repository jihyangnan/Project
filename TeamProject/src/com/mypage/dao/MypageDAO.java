package com.mypage.dao;

import java.util.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.member.dao.MemberDTO;
import com.nezip.dao.ZipRegDTO;

import java.io.Reader;

public class MypageDAO {
	private static SqlSessionFactory ssf;

	static {
		try (Reader reader = Resources.getResourceAsReader("Config.xml")) {
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	// 집 등록 리스트
	public static List<ZipRegDTO> regcheck(String h_id) {
		List<ZipRegDTO> list = new ArrayList<ZipRegDTO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("regcheck", h_id);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	// 회원 데이터 가져오기
	public static MemberDTO prifileData(String id) {
		MemberDTO d = new MemberDTO();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			d = session.selectOne("prifileData", id);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return d;
	}
	
	

}