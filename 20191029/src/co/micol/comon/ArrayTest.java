package co.micol.comon;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ArrayTest")
public class ArrayTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ArrayTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String hobby[] = request.getParameterValues("hobby"); //다중선택_배열로 값을 받아옴
		String gender = request.getParameter("gender");
		
		//데이터 처리 작성 및 돌려보낼 페이지 만들기
		response.setContentType("text/html; charset=UTF-8");
//		request.setCharacterEncoding("utf-8");

		PrintWriter out = response.getWriter();
		out.print("이름 : "+ name +"<br>");
		out.print("나이 : "+ age +"<br>");
		out.print("취미 : ");
		for ( int i=0; i<hobby.length; i++) {
			out.print(hobby[i] +" ");
		}
		out.print("<br>");
		out.print("성별 : "+ gender +"<br>");
		out.print("<a href='index.jsp'>홈 가기</a>");
		

	}

}
