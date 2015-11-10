package com.reserve.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import com.nezip.dao.ZipRegDTO;

import java.util.*;
import java.io.*;

public class ReserveDAO {
	private static SqlSessionFactory ssf;

	static {
		try(Reader reader = Resources.getResourceAsReader("Config.xml");) {
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}

	// 데이터 가지고 오기
	public static List<ReserveDTO> reserveListData(Map map) {
		List<ReserveDTO> list = new ArrayList<ReserveDTO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("ReserveListData", map);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
		// return ssf.openSession().selectList("boardListData",map);
	}

	public static List<ReserveDTO> reserveData(Map map) {
		List<ReserveDTO> list = new ArrayList<ReserveDTO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("ReserveData", map);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	public static ReserveDTO reserveContentData(int no) {
		SqlSession session = null;
		ReserveDTO d = new ReserveDTO();
		try {
			session = ssf.openSession(true);
			d = session.selectOne("reserveContentData", no);
		} catch (Exception ex) {
			// session.rollback();
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return d;
	}

	public static int reserveTotalPage() {
		int total = 0;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			int count = session.selectOne("reserveRowCount");
			total = (int) (Math.ceil(count / 5.0));
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return total;
	}

	public static int reviewCount(int re_hNo) {
		SqlSession session = ssf.openSession();
		int count = session.selectOne("reviewCount", re_hNo);
		session.close();
		return count;
	}

	public static List<ReviewDTO> reviewListData(int re_hNo) {
		SqlSession session = ssf.openSession();
		List<ReviewDTO> list = session.selectList("reviewListData", re_hNo);
		session.close();
		return list;
	}

	public static void reviewNewInsert(ReviewDTO d) {
		SqlSession session = ssf.openSession(true);
		session.insert("reviewNewInsert", d);
		session.close();
	}

	public static void reviewReUpdate(ReviewDTO d) {
		SqlSession session = ssf.openSession(true);
		session.update("reviewReUpdate", d);
		session.close();
	}

	public static void reviewContentUpdate(int re_no) {
		SqlSession session = ssf.openSession(true);
		session.update("reviewContentUpdate", re_no);
		session.close();
	}

	public static void reviewDelete(int re_no) {
		SqlSession session = ssf.openSession(true);
		session.delete("reviewDelete", re_no);
		session.close();
	}
	
	/**
	 * 맵을 움직였을때 리스트 가져오기 (거리 계산은 일단 자바에서 하기로... 현재 등록 상태인 데이터 모두 가져옴)
	 */
	public static List<ZipRegDTO> listByMovingMap(){
		List<ZipRegDTO> list = new ArrayList<>();
		try(SqlSession session = ssf.openSession()){
			list = session.selectList("listByMovingMap");
		}
		return list;
	}
	/*
	 * 예약
	 */
	public static void reserveNo(int r_no)
	{
		SqlSession session = ssf.openSession(true);
		session.delete("reserveNo", r_no);
		session.close();
	}
	public static void reserveDoit(ReserveDTO rd)
	{
		SqlSession session = ssf.openSession(true);
		session.insert("reserveDoit", rd);
		session.close();
	}
	//예약 데이터 가져오기
	public static ReserveDTO reserveData(int no) {
		SqlSession session = null;
		ReserveDTO rd = new ReserveDTO();
		try {
			session = ssf.openSession(true);
			rd = session.selectOne("reserveData", no);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return rd;
	}
}
