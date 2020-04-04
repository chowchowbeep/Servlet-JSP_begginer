package co.micol.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.micol.dto.MemberDto;

public class MemberDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "micol";
	private String password = "1234";

	public MemberDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	// 추가, 조회, 갱신, 삭제 CRUD

	// 여러 사람의 데이터를 확인
	public ArrayList<MemberDto> select() {
		ArrayList<MemberDto> list = new ArrayList<>();
		MemberDto dto;
		String sql = "select * from member";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				dto = new MemberDto();
				dto.setId(rs.getString("memberid"));
				dto.setName(rs.getString("membername"));
				dto.setGrant(rs.getString("membergrant"));
				dto.setEnterDate(rs.getDate("memberenterdate"));
				dto.setAddr(rs.getString("memberaddr"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	// 한 사람의 데이터를 확인
	public MemberDto select(String id) {
		MemberDto dto = new MemberDto();
		String sql = "select * from member where MEMBERID= ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) { // 반환 레코드가 하나기 때문에 while대신 if (id가 pk)
				dto.setId(rs.getString("MEMBERID"));
				dto.setName(rs.getString("MEMBERNAME"));
				dto.setPassword(rs.getString("MEMBERPW"));
				dto.setGrant(rs.getString("MEMBERGRANT"));
				dto.setEnterDate(rs.getDate("MEMBERENTERDATE"));
				dto.setAddr(rs.getString("MEMBERADDR"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

	// 아이디 중복체크 메소드
	public boolean isIdCheck(String id) {
		boolean b = true;
		String sql = "select memberid from member where memberid=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				b = false; // 아이디가 존재하는 경우 false반환
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return b;
	}

	// 회원 로그인 확인
	public String isLoginCheck(String id, String pw) {
		String grant = null;
		String sql = "select * from member where MEMBERID = ? and MEMBERPW=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				grant = rs.getString("MEMBERGRANT");// grant값이 있으면 정상등록된 사용자
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return grant;
	}

	// DB회원입력
	public int insert(MemberDto dto) {
		int n = 0;
		String sql = "insert into member(MEMBERID,MEMBERNAME,MEMBERPW,MEMBERADDR)" + " values(?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPassword());
			pstmt.setString(4, dto.getAddr());
			n = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	
	// 갱신구문 작성
	public int update(String id, String name, String addr) {
		int n = 0;
		String sql ="update member set MEMBERADDR = ? ,  MEMBERNAME = ? where MEMBERID =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, addr);
			pstmt.setString(2, name);
			pstmt.setString(3, id);
			n = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int delete(MemberDto dto) {
		int n = 0;
		// 삭제구문 작성
		return n;
	}

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
