package co.micol.command.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.common.Command;
import co.micol.dao.MemberDao;

public class LoginOkCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDao dao = new MemberDao();
		// 폼에서 값 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		// 폼에서 얻은 값으로 db에 등록된 grant가져오기
		String grant = dao.loginCheck(id, pw);

		if (grant == null) { //로그인 실패시
			response.sendRedirect("login.do");
		} else { //로그인 성공시 
			HttpSession httpsession = request.getSession();
			// 자바객체를 이용해서 servlet session객체를 이용할 때 // 왜 이렇게?
			httpsession.setAttribute("id", id);
			httpsession.setAttribute("grant", grant);

			response.sendRedirect("index.do");
		}

	}

}
