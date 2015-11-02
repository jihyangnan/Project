package com.nezip.dao;

import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import jdk.nashorn.internal.runtime.regexp.joni.Config;

import java.io.*;
import java.io.Reader;
public class NezipDAO {
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
	//Áý µî·Ï
	public static void insertZipReg(ZipRegDTO dto) {
		SqlSession session = null;
		try {
			session = ssf.openSession();
			session.selectList("zipReg", dto);
			session.commit();
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			session.rollback();
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	
	
}
