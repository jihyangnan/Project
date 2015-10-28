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
	//������ ��������
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
	//�� ������
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

}
