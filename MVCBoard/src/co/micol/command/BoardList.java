package co.micol.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.dao.BoardDao;
import co.micol.dto.BoardDto;

public class BoardList implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//DB목록가져오기
		
		BoardDao dao = new BoardDao();
		ArrayList<BoardDto> list = new ArrayList<>();//DB로부터 받을 수 있는 타입을 만들어줌
		list = dao.select();
		
		request.setAttribute("list", list); 
		// request객체(hashmap타입_키, 밸류(ArrayList타입))에 list변수 담음
		String path = "view/boardlist.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		//결과물_list변수_을 실은 객체를 view/boardlist.jsp로 보내 보여줌
		dispatcher.forward(request, response);
		
		//dispatcher는 forwarding시 이미 생성된 request, response,session객체를 넘김
	}

}
