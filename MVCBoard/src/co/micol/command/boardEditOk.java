package co.micol.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.dao.BoardDao;
import co.micol.dto.BoardDto;

public class boardEditOk implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Update호출
		BoardDao dao = new BoardDao();
		BoardDto dto = new BoardDto();

		dto.setId(Integer.parseInt(request.getParameter("id")));
		dto.setTitle(request.getParameter("title"));
		dto.setContents(request.getParameter("contents"));

		int n = dao.update(dto); // 수정결과 확인 위해 n에 update행수 값을 받음
		String path;
		if (n == 0) {
			path = "view/boardInsertFail.jsp"; // 현재객체가 가진 값을 다시 이용해야 될 수 있으므로 dispatcher사용?
		} else {
			path = "boardView.do"; // 현재객체가 가진 값을 가지고 가서 글조회하므로 dispatcher사용
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
