package greendae.user.dao.community;

import greendae.util.DBHelper;
import greendae.user.dto.community.Cboard_fileDTO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Cboard_fileDAO extends DBHelper {

    private static final Cboard_fileDAO INSTANCE = new Cboard_fileDAO();
    public static Cboard_fileDAO getInstance() {
        return INSTANCE;
    }
    private Cboard_fileDAO() {}

    // ==========================
    // 파일 등록
    // ==========================
    public int insert(Cboard_fileDTO dto) {
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

    // ==========================
    // 특정 게시글의 파일 목록
    // ==========================
    public List<Cboard_fileDTO> selectByBoardId(int boardId) {
        List<Cboard_fileDTO> list = new ArrayList<>();
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

    // ==========================
    // 파일 단건 삭제
    // ==========================
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

    // ==========================
    // 공통 ResultSet → DTO 매핑
    // ==========================
    private Cboard_fileDTO mapResultSetToDTO(ResultSet rs) throws SQLException {
        Cboard_fileDTO dto = new Cboard_fileDTO();
        dto.setFild_id(rs.getInt("file_id"));
        dto.setBoard_id(rs.getInt("board_id"));
        dto.setFile_name(rs.getString("file_name"));
        dto.setFile_path(rs.getString("file_path"));
        dto.setFilesize(rs.getLong("file_size"));
        dto.setCreated_at(rs.getString("created_at")); // String 처리
        return dto;
    }
}
