package greendae.user.controller.community.notice;

import java.io.IOException;
import java.util.List;

import greendae.user.dto.community.CboardDTO;
import greendae.user.dto.community.PagenationDTO;
import greendae.user.service.community.CboardService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/community/notice.do")
public class ListController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CboardService service = CboardService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath(); // "/community/notice.do"
        String category = path.replace("/community/", "").replace(".do", ""); 

        // 2. 요청 파라미터
        String pg = req.getParameter("pg");
        String field = req.getParameter("field");
        String keyword = req.getParameter("q");

        // 3. 페이지네이션 (검색 여부 반영)
        PagenationDTO pagenationDTO = service.getPagenationDTO(pg, category, field, keyword);

        // 4. 글 목록 조회
        List<CboardDTO> dtoList;
        if (keyword == null || keyword.isEmpty()) {
            dtoList = service.findAllByCategory(category, pagenationDTO.getStart());
        } else {
            dtoList = service.findAllSearch(category, pagenationDTO.getStart(), field, keyword);
        }

        // 5. JSP 전달
        req.setAttribute("dtoList", dtoList);
        req.setAttribute("pagenationDTO", pagenationDTO);
        req.setAttribute("category", category);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/notice.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}