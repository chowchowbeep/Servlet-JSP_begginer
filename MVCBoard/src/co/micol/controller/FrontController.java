package co.micol.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.command.BoardDelete;
import co.micol.command.BoardEdit;
import co.micol.command.BoardList;
import co.micol.command.BoardWrite;
import co.micol.command.BoardWriteOk;
import co.micol.command.Command;
import co.micol.command.MainCommand;
import co.micol.command.boardEditOk;
import co.micol.command.boardReply;
import co.micol.command.boardView;

//모든 요청이 컨트롤러를 통과하도록

@WebServlet("/frontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command>list = null;

    public FrontController() {
        super();
    }


	public void init(ServletConfig config) throws ServletException {
		list = new HashMap<String, Command>();
		list.put("/index.do", new MainCommand()); //키,밸류값을 담아서 보냄
		//url에서 index.do 요청하면 MainCommand실행 //Command타입이므로 Command인터페이스를 구현하고 있어야 함
		list.put("/boardList.do", new BoardList()); //목록보기
		list.put("/boardView.do", new boardView()); //글세부내용보기

		list.put("/BoardEdit.do", new BoardEdit()); //글수정_필요정보리퀘스트객체에 싣기, 글작성 페이지를 호출
		list.put("/boardEditOk.do", new boardEditOk()); //글수정값 저장
		
		list.put("/BoardWrite.do", new BoardWrite()); //글입력_필요정보리퀘스트객체에 싣기, 글작성 페이지를 호출
		list.put("/boardWriteOk.do", new BoardWriteOk()); //글입력 저장
		
		list.put("/boardDelete.do", new BoardDelete()); //글삭제
		
		list.put("/boardReply.do", new boardReply()); //댓글달기_필요정보리퀘스트객체에 싣기, 댓글작성 페이지를 호출
		
		list.put("/boardWriteOk.do", new BoardWriteOk()); 
		list.put("/boardWriteOk.do", new BoardWriteOk()); 
		list.put("/boardWriteOk.do", new BoardWriteOk()); 
		list.put("/boardWriteOk.do", new BoardWriteOk()); 

		
		
	}

	// URL ; http://localhost:9090/MVCboard/index.do
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI(); // /MVCBoard/*.do
		String context = request.getContextPath(); // /MVCboard
		String path = uri.substring(context.length()); // /*.do _ 키값인 /index.do반환
		Command subcommand = list.get(path); //list.get(키값)->밸류(Command타입) 반환 //"/index.do"에서 new MainCommand()를 가져옴
		subcommand.execute(request, response); //가져온 메소드를 Command의 execute메소드로 실행
	}

}
