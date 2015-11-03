package com.reserve.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.util.*;
import java.io.*;

public class ReserveDAO {
	 private static SqlSessionFactory ssf;
	   static
	   {
		   try
		   {
			   Reader reader=Resources.getResourceAsReader("Config.xml");
			   ssf=new SqlSessionFactoryBuilder().build(reader);
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
	   }
	   // 데이터 가지고 오기 
	   public static List<ReserveDTO> reserveListData(Map map)
	   {
		   List<ReserveDTO> list=
				   new ArrayList<ReserveDTO>();
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   list=session.selectList("ReserveListData",map);
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
		   //return ssf.openSession().selectList("boardListData",map);
	   }
	   public static List<ReserveDTO> reserveData(Map map)
	   {
		   List<ReserveDTO> list=
				   new ArrayList<ReserveDTO>();
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   list=session.selectList("ReserveData",map);
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
	   public static ReserveDTO reserveContentData(int no)
	   {
		   SqlSession session=null;
		   ReserveDTO d=new ReserveDTO();
		   try
		   {
			   session=ssf.openSession(true);			   
			   d=session.selectOne("reserveContentData", no);
		   }catch(Exception ex)
		   {
			   //session.rollback();
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			  if(session!=null)
				  session.close();
		   }
		   return d;
	   }
	   public static int reserveTotalPage()
	   {
		   int total=0;
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   int count=session.selectOne("reserveRowCount");
			   total=(int)(Math.ceil(count/5.0));
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();
		   }
		   return total;
	   }
	   public static int reviewCount(int re_hno)
	   {
		   SqlSession session=ssf.openSession();
		   int count=session.selectOne("reviewCount",re_hno);
		   session.close();
		   return count;
	   }
	   public static List<ReviewDTO> reviewListData(int re_hno)
	   {
		   SqlSession session=ssf.openSession();
		   List<ReviewDTO> list=
				   session.selectList("reviewListData",re_hno);
		   session.close();
		   return list;
	   }
	   public static void reviewNewInsert(ReviewDTO d)
	   {
		   SqlSession session=ssf.openSession(true);
		   session.insert("replyNewInsert",d);
		   session.close();
	   }
	   public static void reviewReUpdate(ReviewDTO d)
	   {
		   SqlSession session=ssf.openSession(true);
		   session.update("reviewReUpdate",d);
		   session.close();
	   }
	   public static void reviewContentUpdate(int re_no)
	   {
		   SqlSession session=ssf.openSession(true);
		   session.update("reviewContentUpdate",re_no);
		   session.close();
	   }
	   public static void reviewDelete(int re_no)
	   {
		   SqlSession session=ssf.openSession(true);
		   session.delete("reviewDelete",re_no);
		   session.close();
	   }/*
	   public static int reviewPageTotalpage(int hno)
	   {
		   SqlSession session=ssf.openSession();
		   int count=session.selectOne("reviewPageRowCount",hno);
		   session.close();
		   return (int)(Math.ceil(count/5.0));
	   }*/
}
