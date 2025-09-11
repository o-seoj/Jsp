package greendae.user.dao.member; // 경로는 프로젝트에 맞게 수정

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// DTO를 가져오기 위해 import
import greendae.user.dto.member.LoginStudentDTO;

public class LoginDAO {

    public LoginStudentDTO loginStudent(Connection conn, String s_id, int id_num) throws SQLException {
        // 데이터베이스에서 조회한 결과를 담을 객체
        LoginStudentDTO student = null;
        
        // SQL 쿼리문
        String sql = "SELECT * FROM student WHERE s_id = ? AND id_num = ?";

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            // SQL 쿼리의 ? 부분에 값 할당
            pstmt.setString(1, s_id);
            pstmt.setInt(2, id_num);
            
            // 쿼리 실행
            try (ResultSet rs = pstmt.executeQuery()) {
                // 결과가 있으면 DTO에 담기
                if (rs.next()) {
                    student = new LoginStudentDTO();
                    student.setS_id(rs.getString("s_id"));
                    student.setId_num(rs.getString("id_num"));
                    // 더 많은 정보가 있다면 여기에 추가
                }
            }
        }
        return student;
    }
}