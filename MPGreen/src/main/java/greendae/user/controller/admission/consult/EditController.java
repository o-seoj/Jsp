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


@WebServlet("/admission/consult_edit.do")
public class EditController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final BoardService service = BoardService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String boardIdParam = req.getParameter("boardId");
        
        if (boardIdParam == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "boardId is required");
            
            return;
        }

        int boardId = Integer.parseInt(boardIdParam);
        BoardDTO board = service.findById(boardId);

        if (board == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Board not found");
            
            return;
        }

        req.setAttribute("board", board);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admission/consult_edit.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        int boardId = Integer.parseInt(req.getParameter("boardId"));
        String title = req.getParameter("title");
        String content = req.getParameter("content");

        BoardDTO dto = new BoardDTO();
        
        dto.setBoardId(boardId);
        dto.setTitle(title);
        dto.setContent(content);

        int result = service.modify(dto);

        if (result > 0) {
            resp.sendRedirect(req.getContextPath() + "/admission/consult_view.do?boardId=" + boardId);
            
        } else {
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Update failed");
        }
    }
}
