package com.member.dao;

import java.io.Reader;
import java.util.List;

import javax.swing.plaf.synth.SynthSeparatorUI;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {
	 private static SqlSessionFactory ssf;
	   static
	   {
	      try {
	         Reader reader=Resources.getResourceAsReader("Config.xml");
	         ssf=new SqlSessionFactoryBuilder().build(reader);
	      } catch (Exception ex) {
	         System.out.println("member-static:"+ex.getMessage());
	      }
	   }
	   public static int memberIdCount(String id){
		   int count=0;
		   SqlSession session=ssf.openSession();
		   count=session.selectOne("memberIdCount",id);
		   session.close();		   
		   return count;
	   }
	   public static MemberDTO memberGetInfo(String id) {
		   MemberDTO d=new MemberDTO();
		   SqlSession session=ssf.openSession();
		   d=session.selectOne("memberGetInfo",id);
		   session.close();
		   return d;		   
	   }
	   public static int memberIdcheck(String id){
		   SqlSession session=ssf.openSession();
		   int count=session.selectOne("memberIdcheck",id);
		   session.close();
		   return count;
	   }
	   public static List<ZipcodeDTO> postFind(String dong){
		   SqlSession session=ssf.openSession();
		   List<ZipcodeDTO> list=session.selectList("postFindData",dong);
		   session.close();
		   return list;
	   }
	   public static void memberJoin(MemberDTO md){
		   SqlSession session=ssf.openSession(true);
		   session.insert("memberJoin",md);
		   session.close();
	   }
}
