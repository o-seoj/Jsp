package greendae.user.dao.admission;

import greendae.util.DBHelper;
import greendae.user.dto.admission.Board_fileDTO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Board_fileDAO extends DBHelper {

    private static final Board_fileDAO INSTANCE = new Board_fileDAO();
    
    public static Board_fileDAO getInstance() {
    	
        return INSTANCE;
    }
    
    private Board_fileDAO() {}


    public int insert(Board_fileDTO dto) {
    	
        int fileId = 0;
        
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(
                "INSERT INTO cboard_file (board_id, file_name, file_path, file_size, created_at) " +
                "VALUES (?, ?, ?, ?, NOW())",
                Statement.RETURN_GENERATED_KEYS
            );
            
            psmt.setInt(1, dto.getBoard_id());
            psmt.setString(2, dto.getFile_name());
            psmt.setString(3, dto.getFile_path());
            psmt.setLong(4, dto.getFilesize());

            psmt.executeUpdate();

            rs = psmt.getGeneratedKeys();
            
            if (rs.next()) {
                fileId = rs.getInt(1);
            }
            
            closeAll();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return fileId;
    }


    public List<Board_fileDTO> selectByBoardId(int boardId) {
    	
        List<Board_fileDTO> list = new ArrayList<>();
        
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(
                "SELECT * FROM cboard_file WHERE board_id=? ORDER BY file_id ASC"
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


    public int delete(int fileId) {
    	
        int result = 0;
        
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(
                "DELETE FROM cboard_file WHERE file_id=?"
            );
            
            psmt.setInt(1, fileId);
            
            result = psmt.executeUpdate();
            
            closeAll();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
    }


    private Board_fileDTO mapResultSetToDTO(ResultSet rs) throws SQLException {
    	
        Board_fileDTO dto = new Board_fileDTO();
        
        dto.setFild_id(rs.getInt("file_id"));
        dto.setBoard_id(rs.getInt("board_id"));
        dto.setFile_name(rs.getString("file_name"));
        dto.setFile_path(rs.getString("file_path"));
        dto.setFilesize(rs.getLong("file_size"));
        dto.setCreated_at(rs.getString("created_at")); 
        
        return dto;
    }
}
