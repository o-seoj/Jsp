package greendae.user.dao.community;

import greendae.util.DBHelper;
import greendae.user.dto.community.Cboard_commentDTO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Cboard_commentDAO extends DBHelper {

    private static final Cboard_commentDAO INSTANCE = new Cboard_commentDAO();
    public static Cboard_commentDAO getInstance() {
        return INSTANCE;
    }
    private Cboard_commentDAO() {}

    // ==========================
    // 댓글 등록
    // ==========================
    public int insert(Cboard_commentDTO dto) {
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

    // ==========================
    // 특정 게시글 댓글 목록 조회
    // ==========================
    public List<Cboard_commentDTO> selectByBoardId(int boardId) {
        List<Cboard_commentDTO> list = new ArrayList<>();
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

    // ==========================
    // 댓글 삭제
    // ==========================
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

    // ==========================
    // 공통 ResultSet → DTO 매핑
    // ==========================
    private Cboard_commentDTO mapResultSetToDTO(ResultSet rs) throws SQLException {
    	Cboard_commentDTO dto = new Cboard_commentDTO();
        dto.setComment_id(rs.getInt("comment_id"));
        dto.setBoard_id(rs.getInt("board_id"));
        dto.setWriter_type(rs.getString("writer_type"));
        dto.setWriter_id(rs.getString("writer_id"));
        dto.setContent(rs.getString("content"));
        dto.setCreated_at(rs.getString("created_at")); // String 타입 사용
        return dto;
    }
}
