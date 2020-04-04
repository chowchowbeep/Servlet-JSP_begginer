package co.micol.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.dao.BoardDao;
import co.micol.dto.BoardDto;

public class boardReply implements Command { // 페이지만 호출해주는 곳

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BoardDao dao = new BoardDao();
		BoardDto dto = new BoardDto();
		int id = Integer.parseInt(request.getParameter("id"));// boardView.jsp에서 id값 가져옴//request로 넘어온 값은 String. 이를 int
		//dto = dao.select(id); // id값으로 하나의 글 가져오기

		request.setAttribute("dto", dto); // 위에서 가져온 dto를 request객체에 실어주기

		// request객체를 넘겨줌
		String path = "view/boardReply.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
