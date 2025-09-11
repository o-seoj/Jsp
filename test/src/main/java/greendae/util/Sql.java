package greendae.util;

public class Sql {
	
	// Faq
	public static final String SELECT_FAQ_ALL = "SELECT * FROM faq ORDER BY category, number";
	
	
	// Enroll
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
	
	
	
}