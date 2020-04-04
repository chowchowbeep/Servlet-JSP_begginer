package co.micol.command;


import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.common.Command;

public class IndexCommand implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws  ServletException, IOException {
		String path = "view/main.jsp"; //
		
//		HttpSession httpsession = request.getSession();
//		System.out.println("request="+request.getParameter("id"));
//		System.out.println("session="+httpsession.getAttribute("id"));

		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
		// index.do로 들어와서, 현재 생성되어 있는 request,response객체를 그대로 전달
		// (주소창에 uri가 view/main.jsp가 아닌 index.do로 표시됨)
		// 표시되는 화면만 view/main.jsp
		
		
		// response.sendRedirect(path); 
		//path페이지를 .do로 돌려줘야 함(controller를 통과하도록)
		//_controller통과없이 jsp로 바로 이동할 경우 경로 오류 발생할 수 있음
		
		
	}

}
