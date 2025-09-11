package greendae.user.controller.academic.faq;

import java.io.IOException;
import java.util.List;

import greendae.user.dto.academic.FaqDTO;
import greendae.user.service.academic.FaqService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/academic/faq.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private FaqService service = FaqService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 불러오기
		 List<FaqDTO> faqList = service.findAll();
		
		req.setAttribute("faqList", faqList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/academic/faq.jsp");
		dispatcher.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
