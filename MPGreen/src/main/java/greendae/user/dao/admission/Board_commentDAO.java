package greendae.user.dao.admission;

import greendae.user.dto.admission.Board_commentDTO;
import greendae.util.DBHelper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Board_commentDAO extends DBHelper {

    private static final Board_commentDAO INSTANCE = new Board_commentDAO();
    
    public static Board_commentDAO getInstance() {
    	
        return INSTANCE;
    }
    
    private Board_commentDAO() {}

    public int insert(Board_commentDTO dto) {
    	
        int commentId = 0;
        
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(
                "INSERT INTO cboard_comment (board_id, writer_type, writer_id, content) VALUES (?, ?, ?, ?)",
                Statement.RETURN_GENERATED_KEYS
            );
            
            psmt.setInt(1, dto.getBoard_id());
            psmt.setString(2, dto.getWriter_type());
            psmt.setString(3, dto.getWriter_id());
            psmt.setString(4, dto.getContent());

            psmt.executeUpdate();

            rs = psmt.getGeneratedKeys();
            
            if (rs.next()) {
                commentId = rs.getInt(1);
            }
            
            closeAll();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return commentId;
    }

    public List<Board_commentDTO> selectByBoardId(int boardId) {
    	
        List<Board_commentDTO> list = new ArrayList<>();
        
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(
                "SELECT * FROM cboard_comment WHERE board_id=? ORDER BY comment_id ASC"
            );
            
            psmt.setInt(1, boardId);
            rs = psmt.executeQuery();

            while (rs.next()) {
                list.add(mapResultSetToDTO(rs));
            }
            
            closeAll();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }

    public int delete(int commentId, String writerId) {
    	
        int result = 0;
        
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(
                "DELETE FROM cboard_comment WHERE comment_id=? AND writer_id=?"
            );
            
            psmt.setInt(1, commentId);
            psmt.setString(2, writerId);
            
            result = psmt.executeUpdate();
            
            closeAll();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
    }


    private Board_commentDTO mapResultSetToDTO(ResultSet rs) throws SQLException {
    	
    	Board_commentDTO dto = new Board_commentDTO();
    	
        dto.setComment_id(rs.getInt("comment_id"));
        dto.setBoard_id(rs.getInt("board_id"));
        dto.setWriter_type(rs.getString("writer_type"));
        dto.setWriter_id(rs.getString("writer_id"));
        dto.setContent(rs.getString("content"));
        dto.setCreated_at(rs.getString("created_at")); // String 타입 사용
        
        return dto;
        
    }
}
