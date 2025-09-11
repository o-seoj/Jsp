package greendae.user.dao.academics;

import java.util.ArrayList;
import java.util.List;

import greendae.user.dto.academics.AcademicsDTO;
import greendae.util.DBHelper;

public class AcademicsDAO extends DBHelper{
	
	private AcademicsDAO() {}
	
	public List<AcademicsDTO> selectAll() {
		
		List<AcademicsDTO> dtoList = new ArrayList<AcademicsDTO>();	 

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(null); // SELECT DEPARTMENT_NAME, DEAN, CONTACT_PHONE FROM DEPARTMENT;);	
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				AcademicsDTO dto = new AcademicsDTO();
				dto.setDepartment_name(rs.getString(1));
				dto.setDean(rs.getString(2));
				dto.setContact_phone(rs.getString(3));
//				dto.setRemark(rs.getString(4));
				dtoList.add(dto);
			}
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtoList;
	}
	
	

}
