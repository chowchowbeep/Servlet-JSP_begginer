/**
 * 
 */
package co.micol.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import co.micol.dto.MemberDto;

/**
 * @author 김초롱 상위DAO클래스를 상속받아 memberDao를 생성
 *
 */
public class MemberDao extends DAO {
	private MemberDto dto;
	private ArrayList<MemberDto> list;

	public MemberDao() {
		super();// 부모클래스의 생성자를 사용
	}

	// 전체 회원목록 가져오기
	public ArrayList<MemberDto> select() {
		list = new ArrayList<MemberDto>();
		MemberDto dto;
		String sql="select * from member";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				dto = new MemberDto();
				dto.setId(rs.getString("MEMBERID"));
				dto.setName(rs.getString("MEMBERNAME"));
				dto.seteDate(rs.getDate("MEMBERENTERDATE"));
				dto.setAddr(rs.getString("MEMBERADDR"));
				dto.setTel(rs.getString("MEMBERTEL"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		close();// 부모클래스의 메소드 그대로 사용
		return list;

	}

	// 하나의 회원정보 가져오기
	public MemberDto select(String id) {
		dto = new MemberDto();
		

		close();
		return dto;
	}
	
	// 멤버 인서트
	public int insert(MemberDto dto) {
		int n = 0;
		String sql = "insert into member(MEMBERID, MEMBERNAME ,MEMBERPW, MEMBERADDR, MEMBERTEL) " 
				+   "values(?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getPassword());
			psmt.setString(4, dto.getAddr());
			psmt.setString(5, dto.getTel());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
				
		close();
		return n;
	}

	public int update(MemberDto dto) {
		int n = 0;

		close();
		return n;
	}

	public int delete(String id) {
		int n = 0;

		close();
		return n;
	}

	// id 중복체크_ 존재하는 id일 경우 false 반환, 사용가능id일 경우 true반환
	public boolean isIdCheck(String id) {
		boolean b = true;
		String sql = "select memberid from member where memberid = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				b = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return b;
	}

	// 로그인하는 메소드
	public String loginCheck(String id, String pw) {
		String grant = null;
		String sql = "select MEMBERGRANT from member where MEMBERID =? and MEMBERPW=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			rs = psmt.executeQuery();
			if (rs.next()) {
				grant = rs.getString("MEMBERGRANT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return grant; // 로그인 성공(id,pw 일치하는 행 발견)시 권한을 넘겨준다.
	}

}
