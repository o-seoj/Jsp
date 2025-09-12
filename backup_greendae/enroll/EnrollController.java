package greendae.user.controller.student.enroll;

import java.io.IOException;
import java.io.PrintWriter;

import greendae.user.dao.student.EnrollDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/student/enrollCourse.do")
public class EnrollController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String courseCode = request.getParameter("courseCode");
        String studentId = "2025010001"; // 임시

        boolean success = EnrollDAO.getInstance().insertCourseRequest(courseCode, studentId);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (success) {
            out.println("<script>alert('수강 신청이 완료되었습니다!'); location.href='" 
                        + request.getContextPath() + "/student/enroll.do';</script>");
        } else {
            out.println("<script>alert('수강 신청 실패!'); location.href='" 
                        + request.getContextPath() + "/student/enroll.do';</script>");
        }
    }
}
