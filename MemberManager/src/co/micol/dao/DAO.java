/**
 * 
 */
package co.micol.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * @author 김초롱 작성일자 : 2019-11-07 상위 dao객체
 * 
 *
 */
public class DAO {
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	DataSource ds; //커넥션풀 사용을 위한 데이터연결 생성객체

//	private String driver = "oracle.jdbc.driver.OracleDriver";
//	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
//	private String user = "micol";
//	private String password = "1234";

	public DAO() {
//		try {
//			Class.forName(driver); // DataSource객체로 대체
//			conn = DriverManager.getConnection(url, user, password);
//		} catch (ClassNotFoundException | SQLException e) {
//			e.printStackTrace();
//		}
		
		
		//Connection Pool(DBCP)이용한 DB연결을 위한 DAO생성자
		try {
			Context initContext = new InitialContext(); //초기화 컨텍스트 읽을 준비
			Context envContext  = (Context)initContext.lookup("java:/comp/env"); //java:/comp/env 자바가 갖고 있는 환경파일(servers_context.html)을 lookup_ jdbc/myoracle
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle"); //그 중에서 리소스네임이 jdbc/myoracle인 부분을 찾아 데이터 소스 객체에 저장
			conn = ds.getConnection(); //기존의 드라이버매니저 객체 대신 데이터소스 객체로 커넥션
		} catch (NamingException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

	public void close() {
		try {

			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
