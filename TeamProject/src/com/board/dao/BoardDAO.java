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
}
