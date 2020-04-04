package co.micol.command.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.common.Command;
import co.micol.dao.MemberDao;
import co.micol.dto.MemberDto;

public class boardWriteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//추후 멤버 이름 가져오도록 수정
		//MemberDto dto = new MemberDto();
		//MemberDao dao = new MemberDao();
		
		
		
		//글쓰기 폼 호출
		String path="view/boardWrite.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
