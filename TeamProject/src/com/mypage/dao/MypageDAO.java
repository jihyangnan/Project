package com.mypage.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.member.dao.MemberDTO;
import com.nezip.dao.ZipRegDTO;
import com.reserve.dao.ReserveDTO;

public class MypageDAO {
	private static SqlSessionFactory ssf;

	static {
		try (Reader reader = Resources.getResourceAsReader("Config.xml")) {
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	// �� ��� ����Ʈ
	public static List<ZipRegDTO> regcheck(String h_id) {
		List<ZipRegDTO> list = new ArrayList<ZipRegDTO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("regcheck", h_id);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	// ȸ�� ������ ��������
	public static MemberDTO prifileData(String id) {
		MemberDTO d = new MemberDTO();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			d = session.selectOne("prifileData", id);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return d;
	}
	// �� ���� ����Ʈ
		public static List<ReserveDTO> reserveCheck(String r_member) {
			List<ReserveDTO> list = new ArrayList<ReserveDTO>();
			SqlSession session = null;
			try {
				session = ssf.openSession();
				list = session.selectList("reserveCheck", r_member);
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			} finally {
				if (session != null)
					session.close();
			}
			return list;
		}
}