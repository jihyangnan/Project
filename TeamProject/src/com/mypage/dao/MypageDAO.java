package com.mypage.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.board.dao.BoardDTO;
import com.member.dao.MemberDTO;

public class MypageDAO {
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
	//회원 데이터 가져오기
	public static MemberDTO prifileData(String id) {
		MemberDTO d = new MemberDTO();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			d=session.selectOne("prifileData", id);
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
		return d;
	}
}
