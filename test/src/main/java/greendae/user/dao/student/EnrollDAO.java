package greendae.user.dao.student;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import greendae.user.dto.student.EnrollDTO;
import greendae.util.DBHelper;
import greendae.util.Sql;


public class EnrollDAO extends DBHelper{
	private final static EnrollDAO INSTANCE = new EnrollDAO();
	public static EnrollDAO getInstance() {
		return INSTANCE;
	}
	public EnrollDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	public List<EnrollDTO> selectEnrollSearch(String searchType, String keyword){
		List<EnrollDTO> dtoList = new ArrayList<EnrollDTO>();
		StringBuilder sql = new StringBuilder(Sql.SELECT_ENROLL_SEARCH);
		
		if(searchType.equals("department_name")) {
			sql.append(Sql.SEARCH_ENROLL_DEP_NAME);
		}else if(searchType.equals("completion_type")) {
			sql.append(Sql.SEARCH_ENROLL_COM_TYPE);
		}else if(searchType.equals("grade")) {
			sql.append(Sql.SEARCH_ENROLL_GRADE);
		}else if(searchType.equals("course_code")) {
			sql.append(Sql.SEARCH_ENROLL_COURSE_CODE);
		}else if(searchType.equals("course_name")) {
			sql.append(Sql.SEARCH_ENROLL_COURSE_NAME);
		}else if(searchType.equals("credit")) {
			sql.append(Sql.SEARCH_ENROLL_CREDIT);
		}else if(searchType.equals("name")) {
			sql.append(Sql.SEARCH_ENROLL_PRO_NAME);
		}else if(searchType.equals("max_capacity")) {
			sql.append(Sql.SEARCH_ENROLL_MAX);
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
}
