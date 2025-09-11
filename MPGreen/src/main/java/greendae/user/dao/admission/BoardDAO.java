package greendae.user.dao.admission;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import greendae.user.dto.admission.BoardDTO;
import greendae.user.dto.community.CboardDTO;
import greendae.util.DBHelper;

public class BoardDAO extends DBHelper {
    
	private static final BoardDAO INSTANCE = new BoardDAO();
    
	public static BoardDAO getInstance() {
        return INSTANCE;
    }
    
    private BoardDAO() {
    	
    }

    public int insert(BoardDTO dto) {
        int boardId = 0;
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(
                "INSERT INTO cboard (category, title, content, writer_type, writer_id, news_type, is_secret, qna_status, answer_content) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)",
                Statement.RETURN_GENERATED_KEYS
            );
            psmt.setString(1, dto.getCategory());
            psmt.setString(2, dto.getTitle());
            psmt.setString(3, dto.getContent());
            psmt.setString(4, dto.getWriterType());
            psmt.setString(5, dto.getWriterId());
            psmt.setString(6, dto.getNewsType());
            psmt.setBoolean(7, dto.isSecret());
            psmt.setString(8, dto.getQnaStatus());
            psmt.setString(9, dto.getAnswerContent());

            psmt.executeUpdate();

            rs = psmt.getGeneratedKeys();
            
            if (rs.next()) {
                boardId = rs.getInt(1);
            }
            
            closeAll();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return boardId;
    }

    public BoardDTO selectById(int boardId) {
        BoardDTO dto = null;
        try {
            conn = getConnection();
            psmt = conn.prepareStatement("SELECT * FROM cboard WHERE board_id=?");
            psmt.setInt(1, boardId);
            rs = psmt.executeQuery();

            if (rs.next()) {
                dto = mapResultSetToDTO(rs);
            }
            
            closeAll();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return dto;
    }
    
    public void updateViewCount(int boardId) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement("UPDATE cboard SET view_count = view_count + 1 WHERE board_id=?");
            psmt.setInt(1, boardId);
            psmt.executeUpdate();
            
            closeAll();
            
        } catch (Exception e) {
        	
            e.printStackTrace();
        }
    }
    
    public int update(BoardDTO dto) {
        int result = 0;
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(
            	    "UPDATE cboard SET title=?, content=?, news_type=?, is_secret=?, qna_status=?, answer_content=?, updated_at=NOW() " +
            	    "WHERE board_id=?"
            	);
            	psmt.setString(1, dto.getTitle());
            	psmt.setString(2, dto.getContent());
            	psmt.setString(3, dto.getNewsType());
            	psmt.setBoolean(4, dto.isSecret());
            	psmt.setString(5, dto.getQnaStatus());
            	psmt.setString(6, dto.getAnswerContent());
            	psmt.setInt(7, dto.getBoardId());

            result = psmt.executeUpdate();
            
            closeAll();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
    }

    public int delete(int boardId) {
        int result = 0;
        try {
            conn = getConnection();

            // 댓글 
            psmt = conn.prepareStatement("DELETE FROM cboard_comment WHERE board_id=?");
            psmt.setInt(1, boardId);
            psmt.executeUpdate();

            // 파일 
            psmt = conn.prepareStatement("DELETE FROM cboard_file WHERE board_id=?");
            psmt.setInt(1, boardId);
            psmt.executeUpdate();

            // 게시글
            psmt = conn.prepareStatement("DELETE FROM cboard WHERE board_id=?");
            psmt.setInt(1, boardId);
            result = psmt.executeUpdate();

            closeAll();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
    }
    
    /////////////////////////
    ///
    /////////////////////////
    
    public List<BoardDTO> selectByCategory(String category) {
        List<BoardDTO> list = new ArrayList<>();
        try {
            conn = getConnection();
            psmt = conn.prepareStatement("SELECT * FROM cboard WHERE category=? ORDER BY created_at DESC");
            psmt.setString(1, category);
            rs = psmt.executeQuery();

            while (rs.next()) {
                list.add(mapResultSetToDTO(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
            try {
				closeAll();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        
        return list;
    }

    public int selectCountByCategory(String category) {
    	
        int total = 0;
        
        try {
            conn = getConnection();  // 여기서 NamingException, SQLException 발생 가능
            psmt = conn.prepareStatement("SELECT COUNT(*) FROM cboard WHERE category=?");
            psmt.setString(1, category);
            rs = psmt.executeQuery();

            if (rs.next()) {
                total = rs.getInt(1);
            }
            
        } catch (NamingException | SQLException e) {
            e.printStackTrace();
            
        } finally {
        	
            try {
				closeAll();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
            
        }
        
        return total;
    }
    
    public List<BoardDTO> selectByCategoryWithPaging(String category, int start) {
    	
        List<BoardDTO> list = new ArrayList<>();
        
        try {
            conn = getConnection();
            
            String sql = "SELECT * FROM cboard WHERE category=? ORDER BY board_id DESC LIMIT ?, 10";
            
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, category);
            psmt.setInt(2, start);
            
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
    
    public List<BoardDTO> selectByCategoryWithSearch(String category, int start, String field, String keyword) {
    	
        List<BoardDTO> list = new ArrayList<>();
        
        try {
            conn = getConnection();

            String condition = "";
            if ("title".equals(field)) {
                condition = " AND title LIKE ?";
            } else if ("writer".equals(field)) {
                condition = " AND writer_id LIKE ?";
            }

            String sql = "SELECT * FROM cboard WHERE category=?" + condition + " ORDER BY board_id DESC LIMIT ?, 10";

            psmt = conn.prepareStatement(sql);
            psmt.setString(1, category);
            psmt.setString(2, "%" + keyword + "%");
            psmt.setInt(3, start);

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

    public int selectCountByCategoryWithSearch(String category, String field, String keyword) {
    	
        int total = 0;
        
        try {
            conn = getConnection();

            String condition = "";
            
            if ("title".equals(field)) {
                condition = " AND title LIKE ?";
                
            } else if ("writer".equals(field)) {
                condition = " AND writer_id LIKE ?";
            }

            String sql = "SELECT COUNT(*) FROM cboard WHERE category=?" + condition;

            psmt = conn.prepareStatement(sql);
            psmt.setString(1, category);
            psmt.setString(2, "%" + keyword + "%");

            rs = psmt.executeQuery();
            
            if (rs.next()) {
                total = rs.getInt(1);
            }
            
            closeAll();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return total;
    }
    
    private BoardDTO mapResultSetToDTO(ResultSet rs) throws SQLException {
    	
        BoardDTO dto = new BoardDTO();
        
        dto.setBoardId(rs.getInt("board_id"));
        dto.setCategory(rs.getString("category"));
        dto.setTitle(rs.getString("title"));
        dto.setContent(rs.getString("content"));
        dto.setWriterType(rs.getString("writer_type"));
        dto.setWriterId(rs.getString("writer_id"));
        dto.setCreated_at(rs.getString("created_at"));
        dto.setUpdated_at(rs.getString("updated_at"));
        dto.setViewCount(rs.getInt("view_count"));
        dto.setNewsType(rs.getString("news_type"));
        dto.setSecret(rs.getBoolean("is_secret"));
        dto.setQnaStatus(rs.getString("qna_status"));
        dto.setAnswerContent(rs.getString("answer_content"));
        
        return dto;
    }
}


