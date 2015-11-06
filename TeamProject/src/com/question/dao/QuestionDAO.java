package com.question.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;
import java.io.Reader;
public class QuestionDAO {
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
	
	//»ðÀÔ
	public static void questionInsert(QuestionDTO d)
	{
		SqlSession session=null;
		try
		{
			System.out.println("q_no="+d.getQ_no());
			System.out.println("q_id="+d.getQ_id());
			System.out.println("q_title="+d.getQ_title());
			System.out.println("q_content="+d.getQ_content());
			System.out.println("q_phone="+d.getQ_phone());
			session=ssf.openSession(true);
			session.insert("questionInsert",d);
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
	}
}
