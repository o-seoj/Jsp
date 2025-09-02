package controller.js.user1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import dto.User1DTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.User1Service;

@WebServlet("/js/user1/delete.do")
public class DeleteController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private User1Service service = User1Service.getInstance();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uid = req.getParameter("uid");
		
		// 삭제 서비스 요청
		int rowCount = service.delete(uid);
		
		// JSON 수신(스트림 처리)
		BufferedReader reader = req.getReader();
		StringBuilder requestBody = new StringBuilder();
		String line;
		
		while((line = reader.readLine()) != null) {
			requestBody.append(line);
		}
		
		reader.close();
		
		// Gson을 이용한 JSON 문자열 DTO 변환	
		Gson gson = new Gson();
		User1DTO dto = gson.fromJson(requestBody.toString(), User1DTO.class);	
		
		System.out.println(dto);
		
		// 응답 JSON 객체 생성
		JsonObject json = new JsonObject();
		json.addProperty("result", rowCount);
		
		// JSON 출력(클라이언트 전송)
		resp.setContentType("application/json; charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		out.print(json.toString());
	
	}
	
}
