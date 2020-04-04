package co.micol.command.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.common.Command;
import co.micol.dao.BoardDao;
import co.micol.dto.BoardDto;

public class boardInsertCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession httpsession = request.getSession();
		String id = (String) httpsession.getAttribute("id");
		
		BoardDao dao = new BoardDao();
		BoardDto dto = new BoardDto();
		
		dto.setWriter(request.getParameter("writer"));
		dto.setTitle(request.getParameter("title"));
		dto.setContents(request.getParameter("contents"));
		dto.setUserId(id);
		
		
		int n = dao.insert(dto);
		
		if(n == 0) {
			//작성실패시
			String path = "view/fail.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		} else {
			String path = "boardList.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		}

	}

}
