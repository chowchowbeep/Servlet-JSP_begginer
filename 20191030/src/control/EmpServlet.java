package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmpDao;
import dto.Employee;
import net.sf.json.JSONArray;

/**
 * Servlet implementation class EmpServlet
 */
@WebServlet("/EmpServlet")
public class EmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmpServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=utf-8");

		String action = request.getParameter("action"); //페이지를 요청한곳에서 name을 action으로 하는 value값을 파라미터로 받아 변수에 저장하여 이를 처리함 
		
		PrintWriter out = response.getWriter(); //페이지를 요청한 클라이언트에 문자를 돌려주어 응답
		EmpDao dao = new EmpDao();
		Employee emp = new Employee();
		
		//EmpServlet 페이지 요청받은 경우, ""을  name으로 하는 value값을 파라미터로 받아 변수에 저장하여 이를 처리함 
		String pn = request.getParameter("phoneNumber");
		String ji = request.getParameter("jobId");
		String sal = request.getParameter("salary");

		if (action == null) { //넘겨받은 name action이 없는 경우
			StringBuffer sb = new StringBuffer();
			sb.append("<h3>No Result</h3>");
			sb.append("<p>*********</p>");
			out.println(sb.toString());
		} else if (action.equals("list")) {   //empList.html ajax메소드 참조//http://localhost:9090/20191030/EmpServlet?action=list
			List<Employee> list = dao.getEmpList();
			out.println(JSONArray.fromObject(list)); //메소드를 호출하여 리턴받은 list를 JOSNArray형태로 클라이언트에 전달
			
		} else if (action.equals("update")) {//EmpServlet을 요청한 페이지에서 파라미터로 넘겨준 name action의 값이 update인 경우 
			String empId = request.getParameter("employee_id"); //요청받은 경우, employee_id을 name으로 하는 요소?의 value값을 가져옴
			emp.setJobId(ji); //현재 서블릿페이지?를 요청한 페이지updateForm.jsp로부터 파라미터를 받아와서, 위에서 생성한Employee객체의 필드값으로 세팅 
			emp.setPhoneNumber(pn);
			emp.setSalary(Integer.parseInt(sal));
			emp.setEmployeeId(Integer.parseInt(empId));

			dao.updateEmp(emp); //값이 세팅된 객체를 매개값으로 하여 updateEmp호출(DB 변화)
			response.sendRedirect("empList.html"); //응답후에 empList.html로 redirect시킴

		} else if (action.equals("insert")) {
			String fn = request.getParameter("fName");
			String ln = request.getParameter("lName");
			String em = request.getParameter("email");
			String hd = request.getParameter("hireDate");

			emp.setFirstName(fn);
			emp.setLastName(ln);
			emp.setEmail(em);
			emp.setPhoneNumber(pn);
			emp.setJobId(ji);
			emp.setHireDate(hd);
			emp.setSalary(Integer.parseInt(sal));

			dao.insertEmp(emp);

			response.sendRedirect("empList.jsp"); // 전송 후 empList.jsp로 이동할 수 있도록

		} else if (action.equals("delete")) {
			String empId = request.getParameter("employee_id");
			dao.deleteEmp(empId);
			
			response.sendRedirect("empList.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
