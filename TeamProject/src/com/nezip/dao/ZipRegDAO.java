package com.nezip.dao;

import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import jdk.nashorn.internal.runtime.regexp.joni.Config;

import java.io.*;
import java.io.Reader;
public class ZipRegDAO {
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
	public static List<ZipRegDTO> ZipRegData(Map map) {
		List<ZipRegDTO> list = new ArrayList<ZipRegDTO>();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			list=session.selectList("ZipRegData", map);
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
	
}
