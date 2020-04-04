package co.micol.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import co.micol.dto.BoardDto;

public class BoardDao extends DAO {
	private BoardDto dto;
	private ArrayList<BoardDto> list;

	public BoardDao() {
		super();
	}

	// 전체리스트 또는 하나의 글(답글포함) 가져오기
	public ArrayList<BoardDto> select(int id) { // id = "0" ->전체목록, 아닐경우->그룹전체(답글포함)
		list = new ArrayList<BoardDto>();
		String sql = "select * from mvc_board ";
		if (id != 0) {
			sql = sql + "where bgroup = ?";
		} else {
			sql = sql + "order by bid desc";
		}

		try {
			psmt = conn.prepareStatement(sql);
			if (id != 0) {
				psmt.setInt(1, id);
			}
			rs = psmt.executeQuery();
			while (rs.next()) {
				dto = new BoardDto();
				dto.setId(rs.getInt("BID"));
				dto.setWriter(rs.getString("BNAME"));
				dto.setTitle(rs.getString("BTITLE"));
				dto.setContents(rs.getString("BCONTENT"));
				dto.setwDate(rs.getDate("BDATE"));
				dto.setHit(rs.getInt("BHIT"));
				dto.setGroup(rs.getInt("BGROUP"));
				dto.setStep(rs.getInt("BSTEP"));
				dto.setIndent(rs.getInt("BINDENT"));
				dto.setUserId(rs.getString("USERID"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return list;
	}

	public int insert(BoardDto dto) {
		int n = 0;
		String sql = "insert into mvc_board (bid, bname, btitle, bContent ,bGroup ,bstep, bindent, USERID) "
				+ "values (b_num.nextval, ?, ?, ?, b_num.currval, 0, 0, ?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getWriter());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getContents());
			psmt.setString(4, dto.getUserId());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();
		return n;
	}

	public int update(BoardDto dto) {
		int n = 0;

		close();
		return n;
	}

	public int delete(int id) {
		int n = 0;
		String sql = "delete from mvc_board where bid=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, id);
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

		close();
		return n;
	}

}
