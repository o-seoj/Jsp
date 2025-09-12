package greendae.user.controller.student.enroll;

import java.io.IOException;
import java.util.List;

import greendae.user.dto.student.EnrollDTO;
import greendae.user.dto.student.PagenationDTO;
import greendae.user.service.student.EnrollService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/student/enroll.do")
public class ListController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final int PAGE_SIZE = 6;  
    private EnrollService service = EnrollService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String searchType = req.getParameter("searchType");
        String keyword = req.getParameter("keyword");
        String pg = req.getParameter("page");
        int currentPage = (pg == null || pg.isEmpty()) ? 1 : Integer.parseInt(pg);

        List<EnrollDTO> list;

        if (searchType != null && keyword != null && !keyword.isEmpty()) {
            list = service.findAllSearch(searchType, keyword);
        } else {
            list = service.findAllEnroll();
        }

        // 페이지네이션 계산
        int total = list.size();
        int start = (currentPage - 1) * PAGE_SIZE;
        int end = Math.min(start + PAGE_SIZE, total);
        List<EnrollDTO> pageList = list.subList(start, end);

        int lastPageNum = (int) Math.ceil((double) total / PAGE_SIZE);
        int pageGroupStart = ((currentPage - 1) / 5) * 5 + 1;
        int pageGroupEnd = Math.min(pageGroupStart + 4, lastPageNum);

        // PagenationDTO 생성
        PagenationDTO pageDTO = new PagenationDTO();
        pageDTO.setCurrentPage(currentPage);
        pageDTO.setLastPageNum(lastPageNum);
        pageDTO.setPageGroupStart(pageGroupStart);
        pageDTO.setPageGroupEnd(pageGroupEnd);
        pageDTO.setStart(start);

        // JSP로 전달
        req.setAttribute("enrollList", pageList);
        req.setAttribute("pagenationDTO", pageDTO);
        req.setAttribute("searchType", searchType != null ? searchType : "");
        req.setAttribute("keyword", keyword != null ? keyword : "");

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/student/enroll.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
  
    }
}
