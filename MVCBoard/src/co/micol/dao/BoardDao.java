package co.micol.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.micol.dto.BoardDto;

public class BoardDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "micol";
	String password = "1234";

	// 드라이버 로드
	public BoardDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	// 전체리스트 로드
	public ArrayList<BoardDto> select() {
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		BoardDto dto;
		String sql = "select * from mvc_board where btitle != '[댓글]' order by bgroup desc, bstep asc";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new BoardDto();
				dto.setId(rs.getInt("BID"));
				dto.setName(rs.getString("BNAME"));
				dto.setTitle(rs.getString("BTITLE"));
				dto.setContents(rs.getString("BCONTENT"));
				dto.setwDate(rs.getDate("BDATE"));
				dto.setHit(rs.getInt("BHIT"));
				dto.setGroup(rs.getInt("BGROUP"));
				dto.setStep(rs.getInt("BSTEP"));
				dto.setIndent(rs.getInt("BINDENT"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();

		return list;
	}

	// 세부글조회
	public ArrayList<BoardDto> select(int id) {
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		BoardDto dto = new BoardDto();
		String sql = "select * from mvc_board where bgroup= ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new BoardDto();
				dto.setId(rs.getInt("BID"));
				dto.setName(rs.getString("BNAME"));
				dto.setTitle(rs.getString("BTITLE"));
				dto.setContents(rs.getString("BCONTENT"));
				dto.setwDate(rs.getDate("BDATE"));
				dto.setHit(rs.getInt("BHIT"));
				dto.setGroup(rs.getInt("BGROUP"));
				dto.setStep(rs.getInt("BSTEP"));
				dto.setIndent(rs.getInt("BINDENT"));
				list.add(dto);
				// 조회수 증가 메소드 호출
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		viewCountUpdate(id);
		close();
		return list;
	}

	// 조회수 증가
	private void viewCountUpdate(int id) {
		// bhit값 증가
		String sql = "update mvc_board set bhit = bhit+1 where bid = " + id;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 글 추가
	public int insert(BoardDto dto) {
		int n = 0;
		String sql = "insert into mvc_board " + "(BID, BNAME, BTITLE, BCONTENT, BDATE,BGROUP,BSTEP,BINDENT)"
				+ " values(b_num.nextval,?,?,?,?,b_num.currval,0,0)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContents());
			pstmt.setDate(4, dto.getwDate());
			n = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		close();
		return n;
	}

	// 글 수정
	public int update(BoardDto dto) {
		int n = 0;
		String sql = "update mvc_board set btitle=?, bcontent=? where bid =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContents());
			pstmt.setInt(3, dto.getId());
			n = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return n;
	}

	// 글 삭제
	public int delete(int id) {
		int n = 0;
		String sql = "delete from mvc_board where bid=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			n = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
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
