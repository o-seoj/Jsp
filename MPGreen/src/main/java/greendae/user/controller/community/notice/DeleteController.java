package greendae.user.controller.community.notice;

import java.io.IOException;

import greendae.user.service.community.CboardService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/community/notice_delete.do")
public class DeleteController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CboardService service = CboardService.INSTANCE;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        // URL에서 카테고리 추출 (ex: /community/notice_delete.do → notice)
        String path = req.getServletPath();
        String category = path.replace("/community/", "").replace("_delete.do", "");

        // 삭제할 글 ID 받기
        int boardId = Integer.parseInt(req.getParameter("boardId"));

        // 삭제 실행
        int result = service.remove(boardId);

        if (result > 0) {
            // 삭제 성공 → 해당 카테고리 목록으로 이동
            resp.sendRedirect(req.getContextPath() + "/community/" + category + ".do");
        } else {
            // 삭제 실패 → 에러 페이지 혹은 다시 글 보기로
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "게시글 삭제에 실패했습니다.");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // GET 요청 시에는 단순히 삭제 확인 페이지로 이동
        String path = req.getServletPath();
        String category = path.replace("/community/", "").replace("_delete.do", "");

        req.setAttribute("category", category);
        req.getRequestDispatcher("/WEB-INF/views/community/notice_delete.jsp")
           .forward(req, resp);
    }
}
