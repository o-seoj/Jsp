package greendae.user.controller.community.notice;

import java.io.IOException;

import greendae.user.dto.community.CboardDTO;
import greendae.user.service.community.CboardService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/community/notice_edit.do")
public class EditController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CboardService service = CboardService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        String boardIdParam = req.getParameter("boardId");
        if (boardIdParam == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "boardId is required");
            return;
        }

        int boardId = Integer.parseInt(boardIdParam);
        CboardDTO board = service.findById(boardId);

        if (board == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Board not found");
            return;
        }

        req.setAttribute("board", board);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/notice_edit.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        int boardId = Integer.parseInt(req.getParameter("boardId"));
        String title = req.getParameter("title");
        String content = req.getParameter("content");

        CboardDTO dto = new CboardDTO();
        dto.setBoardId(boardId);
        dto.setTitle(title);
        dto.setContent(content);

        int result = service.modify(dto);

        if (result > 0) {
            resp.sendRedirect(req.getContextPath() + "/community/notice_view.do?boardId=" + boardId);
        } else {
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Update failed");
        }
    }
}
