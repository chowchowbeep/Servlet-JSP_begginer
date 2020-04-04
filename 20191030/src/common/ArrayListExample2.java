package common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import dao.EmpDao;
import dto.Employee;

public class ArrayListExample2 {
	public static void main(String[] args) {
		EmpDao dao = new EmpDao();
		List<Employee> list = dao.getEmpList();
		
		Connection conn = DAO.getConnect();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement("select * from emp_temp");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("employee_id");
				String fn = rs.getString("first_name");
				String ln = rs.getString("last_name");
				Employee emp = new Employee(id, fn, ln);
				list.add(emp);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println("======================================");
		for(Employee emp : list) {
			System.out.println(emp);
		}
	}
}
