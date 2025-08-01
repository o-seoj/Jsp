package dao.college;

import java.util.List;

import dto.college.StudentDTO;
import util.DBHelper;

public class StudentDAO extends DBHelper {
	
	private static final StudentDAO INSTANCE = new StudentDAO();
	public static StudentDAO getInstance() {
		return INSTANCE;
	}
	private StudentDAO() {}
	
	private final String DBCP = "jdbc/college";
	
	public void insertStudent(StudentDTO dto) {
		try {
			conn = getConnection(DBCP);
			
		}catch (Exception e) {
			e.printStackTrace();			
		}
		
	}
	
	public StudentDTO selectStudent(String stdNo) {
		
		try {
			conn = getConnection(DBCP);
			
		}catch (Exception e) {
			e.printStackTrace();			
		}
		
		return null;
	}
	
	public List<StudentDTO> selectAllStudent() {
		try {
			conn = getConnection(DBCP);
			
		}catch (Exception e) {
			e.printStackTrace();			
		}
		
		return null;
	}
	
	public void updateStudent(StudentDTO dto) {
		try {
			conn = getConnection(DBCP);
			
		}catch (Exception e) {
			e.printStackTrace();			
		}
	}
	
	public void deleteStudent(String stdNo) {
		try {
			conn = getConnection(DBCP);
			
		}catch (Exception e) {
			e.printStackTrace();			
		}
	}
	

}