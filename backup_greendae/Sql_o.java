package greendae.util;

public class Sql_o {
	
	// Faq  ===================================
	public static final String SELECT_FAQ_ALL = "SELECT * FROM fnq ORDER BY category, number";
	
	
	// Enroll ===================================
	public static final String SELECT_ENROLL_SEARCH = "SELECT d.department_name, c.completion_type, c.grade, c.course_code, c.course_name, c.credit, p.name, c.max_capacity FROM course c "
													+"JOIN department d ON c.department_id = d.department_id "
													+"JOIN professor p ON c.professor = p.p_id ";
	public static final String SEARCH_ENROLL_DEP_NAME = "where department_name LIKE  ?";
	public static final String SEARCH_ENROLL_COM_TYPE = "where completion_type LIKE  ?";
	public static final String SEARCH_ENROLL_GRADE = "where grade LIKE  ?";
	public static final String SEARCH_ENROLL_COURSE_CODE = "where course_code LIKE  ?";
	public static final String SEARCH_ENROLL_COURSE_NAME = "where course_name LIKE  ?";
	public static final String SEARCH_ENROLL_CREDIT = "where credit LIKE  ?";
	public static final String SEARCH_ENROLL_PRO_NAME = "where name LIKE  ?";
	public static final String SEARCH_ENROLL_MAX = "where max_capacity LIKE  ?";
	
	
	public static final String SELECT_ENROLL_ALL = "SELECT d.department_name, c.completion_type, c.grade, c.course_code, c.course_name, "
													+ "c.credit, p.name, c.max_capacity, "
													+ "(SELECT COUNT(*) FROM cou_req r WHERE r.c_id = c.course_code) AS current_capacity "
													+ "FROM course c "
													+ "JOIN department d ON c.department_id = d.department_id "
													+  "JOIN professor p ON c.professor = p.p_id "
													+ "ORDER BY c.course_code";
											
	public static final String ENROLL_CHECK = "SELECT COUNT(*) FROM cou_req WHERE c_id = ? AND s_id = ?";
	public static final String ENROLL_INSERT = "INSERT INTO cou_req (c_id, s_id) VALUES (?, ?)";
	
	
	// Enroll-List===================================
	public static final String SELECT_ENROLL_LIST = "SELECT cr.c_id AS course_code, " 
			+ "c.course_name, "
			+ "c.grade, "
			+ "p.name AS professor_name, "
			+ "c.credit, "
			+ "c.completion_type, "
			+ "CONCAT(c.class_day, ' ', c.class_time) AS time, "
			+ "c.classroom "
			+ "FROM cou_req cr " 
			+ "JOIN course c ON cr.c_id = c.course_code "
			+ "JOIN professor p ON c.professor = p.p_id "
			+ "WHERE cr.s_id = ?";
	
	public static final String DELECT_ENROLL = "DELETE FROM cou_req WHERE s_id = ? AND c_id = ?";
	
	public static final String SEARCH_LIST = "SELECT cr.c_id AS course_code, "
												+ "c.course_name, "
												+ "c.grade, "
												+ "p.name AS professor_name, "
									            + "c.credit, "
												+ "c.completion_type, "
									            + "CONCAT(c.class_day, ' ', c.class_time) AS time, "
									            + "c.classroom "
									            + "FROM cou_req cr "
									            + "JOIN course c ON cr.c_id = c.course_code "
									            + "JOIN professor p ON c.professor = p.p_id " 
									            + "WHERE cr.s_id = ? "
									            + "AND SUBSTRING(cr.c_id, 1, 4) = ? " 
									            + "AND SUBSTRING(cr.c_id, 7, 2) = ?";
	
}