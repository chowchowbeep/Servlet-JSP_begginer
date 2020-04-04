package co.micol.command.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.common.Command;

public class LogoutCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession httpsession = request.getSession();
		// 유지되고 있는 세션 불러오기

		String id = (String) httpsession.getAttribute("id");
		// 현재 세션의 id값 변수에 저장하기_ 넘기는 페이지에서 보여질 값

		// 세션 제거하기
		httpsession.removeAttribute("id");
		httpsession.removeAttribute("grant");
//		httpsession.invalidate(); 세션자체를 무효화하기

		String path = "view/logoutView.jsp"; // 넘길 페이지
		request.setAttribute("logoutId", id); // request객체에 위에서 가져온 id 저장하기
		//dispatcher로 페이지이동, 객체 넘기기
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
	}
}
