package greendae.user.dao.student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import greendae.user.dto.student.EnrollListDTO;
import greendae.util.DBHelper;
import greendae.util.Sql_o;

public class EnrollListDAO extends DBHelper {

    private static final EnrollListDAO INSTANCE = new EnrollListDAO();
    public static EnrollListDAO getInstance() { return INSTANCE; }

    public List<EnrollListDTO> getEnrollHistory(String s_id) {
        List<EnrollListDTO> list = new ArrayList<>();
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(Sql_o.SELECT_ENROLL_LIST)) {

            pstmt.setString(1, s_id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                EnrollListDTO dto = new EnrollListDTO();
                dto.setC_id(rs.getString("course_code"));
                dto.setC_name(rs.getString("course_name"));
                dto.setGrade(rs.getString("grade"));
                dto.setProfessor(rs.getString("professor_name"));
                dto.setCredit(rs.getInt("credit"));
                dto.setType(rs.getString("completion_type"));
                dto.setTime(rs.getString("time"));
                dto.setClassroom(rs.getString("classroom"));

                list.add(dto);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // 취소 메서드
    public void cancelCourse(String studentId, String courseCode) throws Exception {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(Sql_o.DELECT_ENROLL)) {

            ps.setString(1, studentId);
            ps.setString(2, courseCode);

            int affectedRows = ps.executeUpdate();
            
        }
    }
    
    public List<EnrollListDTO> getEnrollHistoryByTerm(String s_id, String year, String semester) {
        List<EnrollListDTO> list = new ArrayList<>();

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(Sql_o.SEARCH_LIST)) {

            pstmt.setString(1, s_id);
            pstmt.setString(2, year);
            pstmt.setString(3, semester);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                EnrollListDTO dto = new EnrollListDTO();
                dto.setC_id(rs.getString("course_code"));
                dto.setC_name(rs.getString("course_name"));
                dto.setGrade(rs.getString("grade"));
                dto.setProfessor(rs.getString("professor_name"));
                dto.setCredit(rs.getInt("credit"));
                dto.setType(rs.getString("completion_type"));
                dto.setTime(rs.getString("time"));
                dto.setClassroom(rs.getString("classroom"));
                list.add(dto);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
