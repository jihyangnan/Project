package com.nezip.dao;

import java.util.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.board.dao.BoardDTO;

import java.io.Reader;

public class NezipDAO {
	private static SqlSessionFactory ssf;

	static {
		try (Reader reader = Resources.getResourceAsReader("Config.xml")) {
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	// 집 등록
	public static void insertZipReg(ZipRegDTO dto, List<Fac_regDTO> facList, List<Home_photoDTO> photoList) {
		try (SqlSession session = ssf.openSession()) {
			try {
				session.insert("zipReg", dto);
				int houseNum = dto.getH_No();
				facList.forEach(fac -> {
					fac.setC_hNo(houseNum);
					session.insert("insertFac_reg", fac);
				});
				photoList.forEach(photo -> {
					photo.setP_hno(houseNum);
					session.insert("insertHome_photo", photo);
				});
				session.commit();
			} catch (Exception e) {
				e.printStackTrace();
				session.rollback();
			}
		}
	}

	// 숙소 유형 리스트
	public static List<Room_categoryDTO> roomCatetoryList() {
		List<Room_categoryDTO> list = new ArrayList<>();
		try (SqlSession session = ssf.openSession()) {
			list = session.selectList("roomCatetoryList");
		}
		return list;
	}

	// 시설 종류 리스트
	public static List<Fac_kindDTO> facKindList() {
		List<Fac_kindDTO> list = new ArrayList<>();
		try (SqlSession session = ssf.openSession()) {
			list = session.selectList("facKindList");
		}
		return list;
	}

	// 숙소 시설 리스트
	public static List<Home_facDTO> homeFacList() {
		List<Home_facDTO> list = new ArrayList<>();
		try (SqlSession session = ssf.openSession()) {
			list = session.selectList("homeFacList");
		}
		return list;
	}

	// 집유형 리스트
	public static List<Home_categoryDTO> homeCategoryList() {
		List<Home_categoryDTO> list = new ArrayList<>();
		try (SqlSession session = ssf.openSession()) {
			list = session.selectList("homeCategoryList");
		}
		return list;
	}

	// 집 등록 리스트
	public static List<ZipRegDTO> zipregList() {
		List<ZipRegDTO> list = new ArrayList<ZipRegDTO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("zipregList");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	// 집등록 데이터 가져오기
	public static ZipRegDTO zipregData(int no) {
		SqlSession session = null;
		ZipRegDTO d = new ZipRegDTO();
		try {
			session = ssf.openSession();
			d = session.selectOne("zipregData", no);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return d;
	}
	
	// 사진목록 가져오기
	public static List<String> photoList(int no){
		List<String> photoList = new ArrayList<>();
		try(SqlSession session = ssf.openSession()){
			photoList = session.selectList("photoList", no);
		}
		return photoList;
	}

	// 숙소 시설 리스트
	public static List<Fac_regDTO> facregList(int hno) {
		SqlSession session = null;
		List<Fac_regDTO> list = new ArrayList<>();
		try {
			session = ssf.openSession(true);
			list = session.selectList("facregList", hno);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}
	
	public static List<ZipRegDTO> ZipListForIndex(){
		List<ZipRegDTO> list = new ArrayList<>();
		try(SqlSession session = ssf.openSession()){
			Map<String, Integer> searchMap = new HashMap<>();
			searchMap.put("start", 1);
			searchMap.put("end", 4);
			list = session.selectList("ZipListForIndex", searchMap);
		}
		return list;
	}

	// mypage 회원 데이터 가져오기
	public static List<ZipRegDTO> mybaordListData(Map map) {
		List<ZipRegDTO> list = new ArrayList<ZipRegDTO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("myboardListData", map);

		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}
	
	public static int countZipByType(int type){
		int result = 0;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			result = session.selectOne("countZipByType", type);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return result;
	}
}
