package greendae.user.dto.student;

public class EnrollDTO {
	 private String department_name;
    private String completion_Type;
    private int grade;
    private String course_code;
    private String course_name;
    private int credit;
    private String name;
    private int max_capacity;
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public String getCompletion_Type() {
		return completion_Type;
	}
	public void setCompletion_Type(String completion_Type) {
		this.completion_Type = completion_Type;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getCourse_code() {
		return course_code;
	}
	public void setCourse_code(String course_code) {
		this.course_code = course_code;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMax_capacity() {
		return max_capacity;
	}
	public void setMax_capacity(int max_capacity) {
		this.max_capacity = max_capacity;
	}
	@Override
	public String toString() {
		return "EnrollDTO [department_name=" + department_name + ", completion_Type=" + completion_Type + ", grade="
				+ grade + ", course_code=" + course_code + ", course_name=" + course_name + ", credit=" + credit
				+ ", name=" + name + ", max_capacity=" + max_capacity + "]";
	}
	
    
	
    
    
    
	
}
