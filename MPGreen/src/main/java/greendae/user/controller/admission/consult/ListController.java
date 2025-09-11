package greendae.user.controller.admission.consult;

import java.io.IOException;
import java.util.List;

import greendae.user.dto.admission.BoardDTO;
import greendae.user.dto.admission.PagenationDTO;
import greendae.user.service.admission.BoardService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admission/consult.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private final BoardService service = BoardService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
        String path = req.getServletPath(); // 경로
        String category = path.replace("/admission/", "").replace(".do", ""); 

        // 파라미터 값
        String pg = req.getParameter("pg");
        String field = req.getParameter("field");
        String keyword = req.getParameter("q");

        PagenationDTO pagenationDTO = service.getPagenationDTO(pg, category, field, keyword);

        // 목록 조회
        List<BoardDTO> dtoList;
        
        if (keyword == null || keyword.isEmpty()) {
            dtoList = service.findAllByCategory(category, pagenationDTO.getStart());
            
        } else {
            dtoList = service.findAllSearch(category, pagenationDTO.getStart(), field, keyword);
        }

        req.setAttribute("dtoList", dtoList);
        req.setAttribute("pagenationDTO", pagenationDTO);
        req.setAttribute("category", category);		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admission/consult.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}


}
