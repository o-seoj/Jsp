package greendae.user.controller.student.enroll;

import java.io.IOException;
import java.util.List;


import greendae.user.dto.student.EnrollDTO;
import greendae.user.service.student.EnrollService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/student/enroll.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String searchType = req.getParameter("searchType");
	    String keyword = req.getParameter("keyword");

	    List<EnrollDTO> list = null;
	    if (searchType != null && keyword != null && !keyword.isEmpty()) {
	        list = EnrollService.INSTANCE.findAllSearch(searchType, keyword);
	    }

	    req.setAttribute("enrollList", list);

	
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/student/enroll.jsp");
		dispatcher.forward(req, resp);
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


	}

}
