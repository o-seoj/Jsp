package greendae.user.dto.member;

public class LoginStudentDTO {
	
	// 필요한 아이디, 비번에 해당되는 변수 선언
	private String s_id;	// 아이디(학번)
	private String id_num;	// 비밀번호(주민번호/뒷자리)
	
	// 게터 : 필드의 값을 가져올 때
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	// 세터 : 필드에 값을 설정할 때
	public String getId_num() {
		return id_num;
	}
	public void setId_num(String id_num) {
		this.id_num = id_num;
	}

	
	
	
}
