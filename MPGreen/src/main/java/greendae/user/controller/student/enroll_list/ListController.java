package greendae.user.controller.student.enroll_list;

import java.io.IOException;
import java.util.List;

import greendae.user.dto.student.EnrollListDTO;
import greendae.user.service.student.EnrollListService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/student/enroll_list.do")
public class ListController extends HttpServlet{

    private static final long serialVersionUID = 1L;
    
    private final EnrollListService service = EnrollListService.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String s_id = "2025010001";  // 임시 고정
        String year = req.getParameter("year");        
        String semester = req.getParameter("semester"); 

        List<EnrollListDTO> list;

        if ((year == null || year.isEmpty()) && (semester == null || semester.isEmpty())) {
            list = service.getEnrollHistory(s_id);
        } else {
            if (semester.length() == 1) semester = "0" + semester;  // 1 → 01
            list = service.getEnrollHistoryByTerm(s_id, year, semester);
        }

        int totalCourses = list.size();
        int totalCredits = list.stream().mapToInt(EnrollListDTO::getCredit).sum();

        req.setAttribute("historyList", list);
        req.setAttribute("totalCourses", totalCourses);
        req.setAttribute("totalCredits", totalCredits);
        req.setAttribute("selectedYear", year != null ? year : "");
        req.setAttribute("selectedSemester", semester != null ? semester : "");

        req.getRequestDispatcher("/WEB-INF/views/student/enroll-list.jsp").forward(req, resp);
    }
}
