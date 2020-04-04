package co.micol.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.command.IndexCommand;
import co.micol.command.board.BoardListCommand;
import co.micol.command.board.BoardReadCommand;
import co.micol.command.board.boardDeleteCommand;
import co.micol.command.board.boardInsertCommand;
import co.micol.command.board.boardWriteCommand;
import co.micol.command.member.LoginCommand;
import co.micol.command.member.LoginOkCommand;
import co.micol.command.member.LogoutCommand;
import co.micol.command.member.idCheckCommand;
import co.micol.command.member.memberInputCommand;
import co.micol.command.member.memberInsertOkCommand;
import co.micol.command.member.memberListCommand;
import co.micol.command.notice.NoticeCommand;
import co.micol.common.Command;

@WebServlet("/NewFrontController")
public class NewFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> cont = new HashMap<String, Command>();

	public NewFrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		// 해시맵 구조 put 메소드를 이용하여 작업
		// cont에 url과 실행 class(command)를 정의,매핑하는 부분
		cont.put("/index.do", new IndexCommand()); // 홈페이지 호출

		cont.put("/login.do", new LoginCommand()); // 로그인폼 호출
		cont.put("/loginOk.do", new LoginOkCommand()); // 로그인 확인

		cont.put("/logout.do", new LogoutCommand()); // 로그아웃

		cont.put("/memberInput.do", new memberInputCommand()); //회원등록폼 페이지 호출
		cont.put("/idCheck.do", new idCheckCommand()); //DB 검색하여 id중복체크
		cont.put("/memberInsertOk.do", new memberInsertOkCommand()); //DB에 삽입,등록확인페이지 호출
		
		cont.put("/memberList.do", new memberListCommand()); //관리자가 회원목록조회하도록
		
		cont.put("/notice.do", new NoticeCommand()); //공지사항 목록
		
		cont.put("/boardList.do", new BoardListCommand()); //자유게시판 목록
		cont.put("/boardRead.do", new BoardReadCommand()); //자유게시판 글세부내용읽기
		
		cont.put("/boardWrite.do", new boardWriteCommand()); //자유게시판 글쓰기페이지 호출
		cont.put("/boardInsert.do", new boardInsertCommand()); //자유게시판 글 DB삽입, 결과페이지 호출
		
		
		cont.put("/boardDelete.do", new boardDeleteCommand());
//		cont.put("/index.do", new IndexCommand());

		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실행할 class객체를 찾아주는 부분_get메소드 이용
		request.setCharacterEncoding("utf-8"); // 객체 인코딩 한글로

		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());

		Command commandImpl = cont.get(path);
		commandImpl.execute(request, response);
	}

}
