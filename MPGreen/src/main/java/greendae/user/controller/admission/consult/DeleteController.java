package greendae.user.controller.admission.consult;

import java.io.IOException;

import greendae.user.service.admission.BoardService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admission/consult_delete.do")
public class DeleteController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final BoardService service = BoardService.INSTANCE;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String path = req.getServletPath();
        String category = path.replace("/admission/", "").replace("_delete.do", "");

        int boardId = Integer.parseInt(req.getParameter("boardId"));

        int result = service.remove(boardId);

        if (result > 0) {
            resp.sendRedirect(req.getContextPath() + "/admission/" + category + ".do");
            
        } else {
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "게시글 삭제에 실패했습니다.");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
        String path = req.getServletPath();
        String category = path.replace("/admission/", "").replace("_delete.do", "");

        req.setAttribute("category", category);
        req.getRequestDispatcher("/WEB-INF/views/admission/consult_delete.jsp")
           .forward(req, resp);
    }
}
