package co.micol.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.dao.BoardDao;
import co.micol.dto.BoardDto;

public class boardView implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 글 내용 가져오기

		BoardDao dao = new BoardDao();
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		int id = Integer.parseInt(request.getParameter("id"));
		list = dao.select(id);
		int length = list.size();
		System.out.println(length);
		
		request.setAttribute("list", list);
		request.setAttribute("length", length); //리스트사이즈

		String path = "view/boardView.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
