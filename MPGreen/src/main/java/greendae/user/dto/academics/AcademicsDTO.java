package greendae.user.dto.academics;

public class AcademicsDTO {
	
	private String department_name;
	private String dean;
	private String contact_phone;
//	private String remark;
	
	public String getDepartment_name() {
		return department_name;
	}
	
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	
	public String getDean() {
		return dean;
	}
	
	public void setDean(String dean) {
		this.dean = dean;
	}
	
	public String getContact_phone() {
		return contact_phone;
	}
	
	public void setContact_phone(String contact_phone) {
		this.contact_phone = contact_phone;
	}
	
	/*public String getRemark() {
		return remark;
	}
	
	public void setRemark(String remark) {
		this.remark = remark;
	}*/
	
	@Override
	public String toString() {
		return "AcademicsDTO [department_name=" + department_name + ", dean=" + dean + ", contact_phone=" + contact_phone + /*", remark=" + remark
				+*/ "]";
	}
	
	
	
	
	

}
