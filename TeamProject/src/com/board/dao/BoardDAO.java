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
	//회원 데이터 가져오기
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
	//관리자 데이터 가져오기
		public static List<BoardDTO> board_mListData(Map mgmap) {
			List<BoardDTO> mlist = new ArrayList<BoardDTO>();
			SqlSession session=null;
			try
			{
				session=ssf.openSession();
				mlist=session.selectList("board_mListData", mgmap);
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
			return mlist;
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
	public static BoardDTO boardContentData(int b_no, int type)
	{
		SqlSession session=null;
		BoardDTO d=new BoardDTO();
		try
		{
			//조회수 증가
			session=ssf.openSession(true);
			if(type==1)
			{
				session.update("boardHitIncrement",b_no);
			
			}//내용보기 값 보내기
			d=session.selectOne("boardContentData",b_no);
			System.out.println("dao-id-"+d.getB_id());
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
	
	public static List<ReBoardDTO> reboardListData(int rw_bno)
	{
		SqlSession session=ssf.openSession();
		List<ReBoardDTO> list=session.selectList("reboardListData",rw_bno);
		session.close();
		return list;
	}
	
	//댓글 삽입
	public static void reboardNewInsert(ReBoardDTO d)
	{
		SqlSession session=ssf.openSession(true);
		System.out.println("rw_no="+d.getRw_no());
		System.out.println("rw_bno="+d.getRw_bno());
		System.out.println("rw_id="+d.getRw_id());
		session.insert("reboardNewInsert",d);
		session.close();
	}
	//댓글의 댓글삽입
	public static ReBoardDTO reboardParentInfo(int rw_bno)
	{
		SqlSession session=ssf.openSession();
		ReBoardDTO list=session.selectOne("reboardParentInfo",rw_bno);
		session.close();
		return list;
	}
	public static void reboardStepIncrement(ReBoardDTO d)
	{
		SqlSession session=ssf.openSession(true);
		session.update("reboardStepIncrement",d);
		session.close();
	}
	public static void reboardDepthIncrement(int rw_no)
	{
		SqlSession session=ssf.openSession(true);
		session.insert("reboardDepthIncrement",rw_no);
		session.close();
	}
	public static void reboardReInsert(ReBoardDTO d)
	{
		SqlSession session=ssf.openSession(true);
		session.insert("reboardReInsert", d);
		session.close();
	}
	
	//댓글수정
	public static void reboardReUpdate(ReBoardDTO d)
	{
		SqlSession session=ssf.openSession(true);
		System.out.println("DAO rw_no="+d.getRw_no());
		session.update("reboardReUpdate",d);
		session.close();
	}
	//댓글삭제
	public static ReBoardDTO reboardGetDepthRoot(int rw_no)
	{
		SqlSession session=ssf.openSession();
		ReBoardDTO list=session.selectOne("reboardGetDepthRoot",rw_no);
		session.close();
		return list;
	}
	public static void reboardDepthDecrement(int rw_no)
	{
		SqlSession session=ssf.openSession(true);
		session.update("reboardDepthDecrement",rw_no);
		session.close();
	}
	public static void reboardMsgUpdate(int rw_no)
	{
		SqlSession session=ssf.openSession(true);
		session.update("reboardMsgUpdate",rw_no);
		session.close();
	}
	public static void reboardDelete(int rw_no)
	{
		// 현재 삭제할 글번호만 가져온 상태
		// 삭제할 글의 뎁스를 가져오고
		// 뎁스가 0이면 -> 삭제 -> 루트글의 뎁스를 낮추기
		// 뎁스가 0이 아니면 -> 관리자어쩌구...
		SqlSession session=null;
		try {
			session = ssf.openSession();
			ReBoardDTO dto = session.selectOne("reboardGetDepthRoot", rw_no);
			if (dto.getDepth() == 0) {	// 댓글이 없을 경우
				session.update("reboardDelete", rw_no);	// 댓글삭제
				session.update("reboardDepthDecrement", dto.getRoot()); // 루트글의 뎁스 낮추기
			} else {	// 댓글이 있을경우
				session.update("reboardMsgUpdate", rw_no); // 관리자에 의해 삭제~~~ 바꾸기
			}
			session.commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			session.rollback();
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	//댓글페이지
	public static int reboardPageTotalpage(int rw_bno)
	{
		SqlSession session=ssf.openSession();
		int count=session.selectOne("reboardPageRowCount",rw_bno);
		session.close();
		return (int)(Math.ceil(count/10.0));
	}
}
