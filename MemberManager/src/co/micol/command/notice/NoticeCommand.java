package co.micol.command.notice;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.common.Command;
import co.micol.dao.NoticeDao;
import co.micol.dto.NoticeDto;

public class NoticeCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NoticeDao dao = new NoticeDao();
		ArrayList<NoticeDto> list = new ArrayList<>();
		list = dao.select(); 
		
		request.setAttribute("list", list);
		
		String path="view/noticeList.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
