package greendae.user.controller.admission.consult;

import java.io.IOException;

import greendae.user.dto.admission.BoardDTO;
import greendae.user.service.admission.BoardService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admission/consult_write.do")
public class WriteController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private final BoardService service = BoardService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 String path = req.getServletPath();
		 String category = path.replace("/admission/", "").replace("_write.do", "");

	     req.setAttribute("category", category);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admission/consult_write.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 req.setCharacterEncoding("UTF-8");

        String path = req.getServletPath();
        String category = path.replace("/admission/", "").replace("_write.do", "");

        String title = req.getParameter("title");
        String content = req.getParameter("content");

        String writerType = "info";  // 관리자
        String writerId = "admin";   // 로그인 연동 시 session에서 꺼내오기

        BoardDTO dto = new BoardDTO();
        dto.setCategory(category);
        dto.setTitle(title);
        dto.setContent(content);
        dto.setWriterType(writerType);
        dto.setWriterId(writerId);

        int boardId = service.register(dto);

        // 작성 완료 후 해당 카테고리 뷰 페이지로 이동
        resp.sendRedirect(req.getContextPath() + "/admission/" + category + "_view.do?boardId=" + boardId);
	}


}
