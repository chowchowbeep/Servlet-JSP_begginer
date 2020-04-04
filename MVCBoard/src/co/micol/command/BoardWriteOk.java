package co.micol.command;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.dao.BoardDao;
import co.micol.dto.BoardDto;

public class BoardWriteOk implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// 글 저장
		BoardDao dao = new BoardDao();
		BoardDto dto = new BoardDto();
		dto.setName(request.getParameter("name"));
		dto.setTitle(request.getParameter("title"));
		dto.setContents(request.getParameter("contents"));
		dto.setwDate(Date.valueOf(request.getParameter("date"))); // Date타입으로 변환
		int n = dao.insert(dto);
		
		String path = null;
		if (n != 0) { //서블릿에서 페이지 리디렉션 방법에 따른 차이_(jsp에서는 <jsp:forward>, 스크립트내 document.location, 메타태그이용)
			path = "boardList.do";
			//이동시 request, response객체가 새롭게 생성 _document.location객체, a태그도 마찬가지
			//주소창에도 boardList.do로 이동한 것으로 확인됨  // 최종페이지 이동시 사용해야 함
			//path페이지를 .do로 돌려줘야 함(controller를 통과하도록) 
			//_controller통과없이 jsp로 바로 이동할 경우 경로 오류 발생할 수 있음
			response.sendRedirect(path);
		} else {
			path = "view/boardInsertFail.jsp"; 
			// 현재객체(boardWriteOk.do )를 그대로 전달_ 표시되는 화면은view/boardInsertFail.jsp이지만 
			// 주소창에는 http://localhost:9090/MVCBoard/boardWriteOk.do
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);// 실패페이지
		}
	}
}
