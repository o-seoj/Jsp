package greendae.user.dao.community;

import greendae.util.DBHelper;
import greendae.user.dto.community.CboardDTO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

public class CboardDAO extends DBHelper {

    private static final CboardDAO INSTANCE = new CboardDAO();
    public static CboardDAO getInstance() {
        return INSTANCE;
    }
    private CboardDAO() {
    	
    }

    // ==========================
    // 글 등록
    // ==========================
    public int insert(CboardDTO dto) {
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

    // ==========================
    // 단일 글 조회
    // ==========================
    public CboardDTO selectById(int boardId) {
        CboardDTO dto = null;
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

    // ==========================
    // 조회수 증가
    // ==========================
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

    // ==========================
    // 글 수정
    // ==========================
    
    // 현재 테스트 용도로 writer_id 조건 빼고 업데이트
    
    public int update(CboardDTO dto) {
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

    // ==========================
    // 글 삭제
    // ==========================
    public int delete(int boardId) {
        int result = 0;
        try {
            conn = getConnection();

            // 1. 댓글 삭제
            psmt = conn.prepareStatement("DELETE FROM cboard_comment WHERE board_id=?");
            psmt.setInt(1, boardId);
            psmt.executeUpdate();

            // 2. 파일 삭제
            psmt = conn.prepareStatement("DELETE FROM cboard_file WHERE board_id=?");
            psmt.setInt(1, boardId);
            psmt.executeUpdate();

            // 3. 게시글 삭제
            psmt = conn.prepareStatement("DELETE FROM cboard WHERE board_id=?");
            psmt.setInt(1, boardId);
            result = psmt.executeUpdate();

            closeAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }


    
    
    // ==========================
    // 카테고리별 목록 조회
    // ==========================
    public List<CboardDTO> selectByCategory(String category) {
        List<CboardDTO> list = new ArrayList<>();
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
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        return total;
    }

    
    

    // 카테고리별 글 목록 (페이징)
    public List<CboardDTO> selectByCategoryWithPaging(String category, int start) {
        List<CboardDTO> list = new ArrayList<>();
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

    // 카테고리 + 검색 (페이징)
    public List<CboardDTO> selectByCategoryWithSearch(String category, int start, String field, String keyword) {
        List<CboardDTO> list = new ArrayList<>();
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

    // 카테고리 + 검색 조건 글 개수
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

    // ==========================
    // 공통 ResultSet → DTO 매핑
    // ==========================
    private CboardDTO mapResultSetToDTO(ResultSet rs) throws SQLException {
        CboardDTO dto = new CboardDTO();
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
