package greendae.user.controller.student.enroll_list;

import java.io.IOException;

import greendae.user.dao.student.EnrollListDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/student/cancel.do")
public class CancelController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private EnrollListDAO enrollListDAO = EnrollListDAO.getInstance();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 임시로 학생ID 세션에 설정 (테스트용)
        HttpSession session = request.getSession();
        session.setAttribute("s_id", "2025010001"); 

        String courseCode = request.getParameter("courseCode");
        String studentId = (String) session.getAttribute("s_id");

        if(studentId == null) {
            System.out.println("세션에 학생ID 없음. 로그인 상태 확인 필요.");
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "로그인 상태가 아닙니다.");
            return;
        }

        try {
            enrollListDAO.cancelCourse(studentId, courseCode);
            response.sendRedirect(request.getContextPath() + "/student/enroll_list.do?msg=cancelSuccess");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "수강 취소 실패");
        }
    }
}
