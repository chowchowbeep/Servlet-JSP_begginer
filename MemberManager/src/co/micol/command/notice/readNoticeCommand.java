package co.micol.command.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.common.Command;
import co.micol.dao.NoticeDao;
import co.micol.dto.NoticeDto;

public class readNoticeCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession httpsession = request.getSession();
		int id = (int)httpsession.getAttribute("id");
		
		NoticeDao dao = new NoticeDao();
		NoticeDto dto = new NoticeDto();
		
		dto = dao.select(id);
		
		
	}

}
