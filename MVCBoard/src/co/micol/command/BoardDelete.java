package co.micol.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.dao.BoardDao;
import co.micol.dto.BoardDto;

public class BoardDelete implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDao dao = new BoardDao();
		BoardDto dto = new BoardDto();
		int id = Integer.parseInt(request.getParameter("id"));

		int n = dao.delete(id);
		String path;

		if (n == 0) {
			path = "view/boardInserFail.jsp";
		} else {
			path = "boardList.do";
		}
		response.sendRedirect(path); //request객체를 전달할 필요가 없을 때
	}

}
