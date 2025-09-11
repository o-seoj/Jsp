package greendae.user.controller.academic.notice;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/academic/notice.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
//	private AcademicsDAO service = AcademicsService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/academic/notice.jsp");
		dispatcher.forward(req, resp);
		
	//	List<AcademicsDAO> dtoList = service.selectAll();	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}

}
