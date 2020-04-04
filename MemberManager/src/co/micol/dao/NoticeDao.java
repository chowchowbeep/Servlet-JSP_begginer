package co.micol.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import co.micol.dto.NoticeDto;

public class NoticeDao extends DAO {
	ArrayList<NoticeDto> list;
	NoticeDto dto;

	public NoticeDao() {
		super();
	}
	

	//전체리스트 또는 하나의 글(답글포함) 가져오기
	public ArrayList<NoticeDto> select(){ 
		list = new ArrayList<NoticeDto>(); 
		String sql = "select * from notice";
		
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				dto = new NoticeDto();
				dto.setId(rs.getInt("NID"));
				dto.setTitle(rs.getString("NTITLE"));
				dto.setContents(rs.getString("NCONTENTS"));
				dto.setDate(rs.getDate("NDATE"));
				dto.setHit(rs.getInt("NHIT"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return list;
	}
	
	// 세부내용보기 
	public NoticeDto select(int id) {
				
		close();
		return dto;
	}
	
	public int insert(NoticeDto dto) {
		int n=0;
		
		close();
		return n;
	}
	public int update(NoticeDto dto) {
		int n=0;
		
		close();
		return n;
	}
	public int delete(int id) {
		int n=0;
		
		close();
		return n;
	}
	
}
