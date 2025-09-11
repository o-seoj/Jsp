package greendae.user.dao.student;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import greendae.user.dto.student.EnrollDTO;
import greendae.util.DBHelper;
import greendae.util.Sql_o;

public class EnrollDAO extends DBHelper{
	private final static EnrollDAO INSTANCE = new EnrollDAO();
	public static EnrollDAO getInstance() {
		return INSTANCE;
	}
	public EnrollDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	public List<EnrollDTO> selectEnrollSearch(String searchType, String keyword){
		List<EnrollDTO> dtoList = new ArrayList<EnrollDTO>();
		StringBuilder sql = new StringBuilder(Sql_o.SELECT_ENROLL_SEARCH);
		
		if(searchType.equals("department_name")) {
			sql.append(Sql_o.SEARCH_ENROLL_DEP_NAME);
		}else if(searchType.equals("completion_type")) {
			sql.append(Sql_o.SEARCH_ENROLL_COM_TYPE);
		}else if(searchType.equals("grade")) {
			sql.append(Sql_o.SEARCH_ENROLL_GRADE);
		}else if(searchType.equals("course_code")) {
			sql.append(Sql_o.SEARCH_ENROLL_COURSE_CODE);
		}else if(searchType.equals("course_name")) {
			sql.append(Sql_o.SEARCH_ENROLL_COURSE_NAME);
		}else if(searchType.equals("credit")) {
			sql.append(Sql_o.SEARCH_ENROLL_CREDIT);
		}else if(searchType.equals("name")) {
			sql.append(Sql_o.SEARCH_ENROLL_PRO_NAME);
		}else if(searchType.equals("max_capacity")) {
			sql.append(Sql_o.SEARCH_ENROLL_MAX);
		}
		
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, "%" + keyword + "%");

			rs = psmt.executeQuery();
			while(rs.next()) {
				EnrollDTO dto = new EnrollDTO();
				dto.setDepartment_name(rs.getString(1));
				dto.setCompletion_Type(rs.getString(2));
				dto.setGrade(rs.getInt(3));
				dto.setCourse_code(rs.getString(4));
				dto.setCourse_name(rs.getString(5));
				dto.setCredit(rs.getInt(6));
				dto.setName(rs.getString(7));
				dto.setMax_capacity(rs.getInt(8));
				dtoList.add(dto);
			}

			closeAll();			
		}catch (Exception e) {
			logger.error(e.getMessage());
		}		
		
		
		return dtoList;
	}
	
	public List<EnrollDTO> selectAllEnroll() {
	    List<EnrollDTO> list = new ArrayList<>();
	    try {
	        conn = getConnection();
	        psmt = conn.prepareStatement(Sql_o.SELECT_ENROLL_ALL);
	        rs = psmt.executeQuery();
	        while(rs.next()) {
	            EnrollDTO dto = new EnrollDTO();
	            dto.setDepartment_name(rs.getString("department_name"));
	            dto.setCompletion_Type(rs.getString("completion_type"));
	            dto.setGrade(rs.getInt("grade"));
	            dto.setCourse_code(rs.getString("course_code"));
	            dto.setCourse_name(rs.getString("course_name"));
	            dto.setCredit(rs.getInt("credit"));
	            dto.setName(rs.getString("name"));
	            dto.setMax_capacity(rs.getInt("max_capacity"));
	            dto.setCurrent_capacity(rs.getInt("current_capacity")); 
	            //System.out.println(dto);
	            list.add(dto);
	        }
	        closeAll();
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return list;
	}
	
	  // 수강 신청 insert 메서드
	public boolean insertCourseRequest(String courseCode, String studentId) {
	    try {
	        conn = getConnection();

	       
	        psmt = conn.prepareStatement(Sql_o.ENROLL_CHECK);
	        psmt.setString(1, courseCode);
	        psmt.setString(2, studentId);
	        rs = psmt.executeQuery();
	        if(rs.next() && rs.getInt(1) > 0) {
	            return false;
	        }


	        psmt = conn.prepareStatement(Sql_o.ENROLL_INSERT);
	        psmt.setString(1, courseCode);
	        psmt.setString(2, studentId);
	        int cnt = psmt.executeUpdate();
	        return cnt > 0;

	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;

	    } finally {
	        try {
	            closeAll();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	}
	
}
