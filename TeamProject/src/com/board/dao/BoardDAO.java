package com.board.dao;

import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import jdk.nashorn.internal.runtime.regexp.joni.Config;

import java.io.*;
import java.io.Reader;
public class BoardDAO {
	private static SqlSessionFactory ssf;
	static
	{
		try
		{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}
	//데이터 가져오기
	public static List<BoardDTO> baordListData(Map map) {
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			list=session.selectList("boardListData", map);
			
			System.out.println("start: " + map.get("start"));
			System.out.println("end: " + map.get("end"));
			System.out.println("사이즈: " + list.size());
		}
		catch(Exception ex)
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
	//총 페이지
	public static int boardTotalPage() {
		// TODO Auto-generated method stub
		int total=0;
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			int count=session.selectOne("boardRowCount");
			total=(int)(Math.ceil(count/10.0));
		}
		catch(Exception ex)
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
	
	//삽입
	public static void boardInsert(BoardDTO d)
	{
		SqlSession session=null;
		try
		{
			System.out.println(d.getB_no());
			System.out.println(d.getB_title());
			System.out.println(d.getB_id());
			System.out.println(d.getB_content());
			System.out.println(d.getB_delete());
			System.out.println(d.getB_hit());
			System.out.println(d.getB_date());
			System.out.println(d.getB_renum());
			System.out.println(d.getB_sano());
			session=ssf.openSession(true);
			session.insert("boardInsert",d);
		}
		catch(Exception ex)
		{
			/*System.out.println(ex.getMessage());*/
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
	}
	
	//상세보기
	public static BoardDTO boardContentData(int b_no)
	{
		SqlSession session=null;
		BoardDTO d=new BoardDTO();
		try
		{
			//조회수 증가
			session=ssf.openSession(true);
			session.update("boardHitIncrement",b_no);
			//내용보기 값 보내기
			d=session.selectOne("boardContentData",b_no);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return d;
	}
	
	//수정하기
	public static BoardDTO boardUpdateData(int b_no)
	{
		SqlSession session=null;
		BoardDTO d = new BoardDTO();
		try
		{
			session=ssf.openSession(true);
			d=session.selectOne("boardContentData",b_no);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return d;
	}
	public static void boardUpdate(BoardDTO d)
	{
		SqlSession session=null;
		try
		{
			session=ssf.openSession(true);
			System.out.println("글자수: " + d.getB_content().length());
			session.insert("boardUpdate",d);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
			session.close();
		}
	}
	
	//삭제하기
	public static void boardDelete(BoardDTO d)
	{
		SqlSession session=null;
		try 
		{
			session=ssf.openSession(true);
			session.insert("boardDelete",d);
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
	}
	
	//댓글형 게시판
	public static int boardReplyCount(int b_no)
	{
		SqlSession session=ssf.openSession();
		int count=session.selectOne("boardReplyCount",b_no);
		session.close();
		return count;
	}
	
	public static List<ReBoardDTO> replyListData(int rw_bno)
	{
		SqlSession session=ssf.openSession();
		List<ReBoardDTO> list=session.selectList("replyListData",rw_bno);
		session.close();
		return list;
	}
	
	//댓글 삽입
	public static void replyNewInsert(ReBoardDTO d)
	{
		SqlSession session=ssf.openSession(true);
		session.insert("replyNewInsert",d);
		session.close();
	}
	
	public static ReBoardDTO replyParentInfo(int rw_bno)
	{
		SqlSession session=ssf.openSession();
		ReBoardDTO list=session.selectOne("replyParentInfo",rw_bno);
		session.close();
		return list;
	}
}
