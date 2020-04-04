package co.micol.command.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.common.Command;
import co.micol.dao.BoardDao;
import co.micol.dto.BoardDto;

public class BoardListCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		BoardDao dao = new BoardDao();
		
		list = dao.select(0);
		
		//돌려줄 페이지 선택
		String path = "view/boardList.jsp";
		
		//dispatcher
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
		
	}

}
