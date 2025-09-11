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

@WebServlet("/community/notice_write.do")
public class WriteController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CboardService service = CboardService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // URL에서 카테고리 추출 (ex: /community/notice_write.do → notice)
        String path = req.getServletPath();
        String category = path.replace("/community/", "").replace("_write.do", "");

        req.setAttribute("category", category);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/notice_write.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        // URL에서 카테고리 추출
        String path = req.getServletPath();
        String category = path.replace("/community/", "").replace("_write.do", "");

        // 파라미터 받기
        String title = req.getParameter("title");
        String content = req.getParameter("content");

        // TODO: 로그인 세션에서 userId 가져오기
        String writerType = "info";  // 기본값 (관리자)
        String writerId = "admin";   // 로그인 연동 시 session에서 꺼내오기

        CboardDTO dto = new CboardDTO();
        dto.setCategory(category);
        dto.setTitle(title);
        dto.setContent(content);
        dto.setWriterType(writerType);
        dto.setWriterId(writerId);

        int boardId = service.register(dto);

        // 작성 완료 후 해당 카테고리 뷰 페이지로 이동
        resp.sendRedirect(req.getContextPath() + "/community/" + category + "_view.do?boardId=" + boardId);

    }
}
