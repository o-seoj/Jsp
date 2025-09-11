package greendae.user.controller.admission.consult;

import java.io.IOException;

import greendae.user.dto.admission.BoardDTO;
import greendae.user.service.admission.BoardService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admission/consult_view.do")
public class ViewController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private final BoardService service = BoardService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
        String path = req.getServletPath(); 
        String category = path.replace("/admission/", "").replace("_view.do", ""); 

        String boardIdParam = req.getParameter("boardId");
        
        if (boardIdParam == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "boardId is required");
            
            return;
        }

        int boardId;
        
        try {
            boardId = Integer.parseInt(boardIdParam);
            
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid boardId");
            
            return;
        }

        BoardDTO dto = service.findById(boardId);
        
        if (dto == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Board not found");
            
            return;
        }
        
        req.setAttribute("board", dto);
        req.setAttribute("category", category);
	
        
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admission/consult_view.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}


}
