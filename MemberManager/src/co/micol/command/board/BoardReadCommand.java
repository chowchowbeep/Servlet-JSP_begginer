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

public class BoardReadCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bid = Integer.parseInt(request.getParameter("bid"));
		
		BoardDao dao = new BoardDao();
		//BoardDto dto = new BoardDto();
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		//답글까지 가져오기 위해서
		
		list = dao.select(bid);
		int length = list.size();
	
		
		request.setAttribute("list", list); //DB에서 조회된 글 request객체에 담기
		request.setAttribute("length", length);
		
		String path = "view/boardRead.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
