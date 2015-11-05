package com.nezip.dao;

import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import java.io.Reader;
public class NezipDAO {
	private static SqlSessionFactory ssf;

	static {
		try {
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	//집 등록
	public static void insertZipReg(ZipRegDTO dto) {
		SqlSession session = null;
		try {
			session = ssf.openSession();
			session.insert("zipReg", dto);
			session.commit();
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			session.rollback();
		} finally {
			if (session != null)
				session.close();
		}
	}
	//집 등록 리스트
	public static List<ZipRegDTO> zipregList(Map map)
	   {
		   List<ZipRegDTO> list=
				   new ArrayList<ZipRegDTO>();
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   list=session.selectList("zipregList",map);
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();
		   }
		   return list;
	   }
	//집등록 데이터 가져오기
		public static ZipRegDTO zipregData(int no)
		   {
			   SqlSession session=null;
			   ZipRegDTO d=new ZipRegDTO();
			   try
			   {
				   session=ssf.openSession(true);
				   d=session.selectOne("zipregData", no);
			   }catch(Exception ex)
			   {
				   System.out.println(ex.getMessage());
			   }
			   finally
			   {
				  if(session!=null)
					  session.close();
			   }
			   return d;
		   }
	// 숙소 유형 리스트
	public static List<Room_categoryDTO> roomCatetoryList(){
		List<Room_categoryDTO> list = new ArrayList<>();
		SqlSession session = ssf.openSession();
		list = session.selectList("roomCatetoryList");
		session.close();
		return list;
	}
	
	// 시설 종류 리스트
	public static List<Fac_kindDTO> facKindList(){
		List<Fac_kindDTO> list = new ArrayList<>();
		SqlSession session = ssf.openSession();
		list = session.selectList("facKindList");
		session.close();
		return list;
	}
	
	// 숙소 시설 리스트
	public static List<Home_facDTO> homeFacList(){
		List<Home_facDTO> list = new ArrayList<>();
		SqlSession session = ssf.openSession();
		list = session.selectList("homeFacList");
		session.close();
		return list;
	}
	// 숙소 시설 리스트
		public static List<Fac_regDTO> facregList(int hno)
		   {
			   SqlSession session=null;
			   List<Fac_regDTO> list = new ArrayList<>();
			   try
			   {
				   session=ssf.openSession(true);
				   list=session.selectList("facregList",hno);
			   }catch(Exception ex)
			   {
				   System.out.println(ex.getMessage());
			   }
			   finally
			   {
				  if(session!=null)
					  session.close();
			   }
			   return list;
		   }
	// 집유형 리스트
	public static List<Home_categoryDTO> homeCategoryList(){
		List<Home_categoryDTO> list = new ArrayList<>();
		SqlSession session = ssf.openSession();
		list = session.selectList("homeCategoryList");
		session.close();
		return list;
	}
	
}
