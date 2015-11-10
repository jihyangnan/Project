package com.question.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.board.dao.BoardDTO;

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
	
	//삽입
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
	
	//관리자 목록
	//관리자 데이터 가져오기
			public static List<QuestionDTO> QuestionListData(Map map) {
				List<QuestionDTO> qlist = new ArrayList<QuestionDTO>();
				SqlSession session=null;
				try
				{
					session=ssf.openSession();
					qlist=session.selectList("QuestionListData", map);
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
				return qlist;
			}
		//총 페이지
		public static int QuestionTotalPage() {
			// TODO Auto-generated method stub
			int total=0;
			SqlSession session=null;
			try
			{
				session=ssf.openSession();
				int count=session.selectOne("questionRowCount");
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
		
		//상세보기
		public static QuestionDTO questionContentData(int q_no)
		{
			SqlSession session=null;
			QuestionDTO d=new QuestionDTO();
			try
			{
				//조회수 증가
				session=ssf.openSession(true);
				//내용보기 값 보내기
				d=session.selectOne("questionContentData",q_no);
				System.out.println("q-id-"+d.getQ_id());
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
				public static QuestionDTO questionEmailData(int q_no)
				{
					SqlSession session=null;
					QuestionDTO d = new QuestionDTO();
					try
					{
						session=ssf.openSession(true);
						d=session.selectOne("questionContentData",q_no);
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
				public static void questionEmail(QuestionDTO d)
				{
					SqlSession session=null;
					try
					{
						session=ssf.openSession(true);
						System.out.println("글자수: " + d.getQ_content().length());
						session.insert("questionEmail",d);
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
		
}
