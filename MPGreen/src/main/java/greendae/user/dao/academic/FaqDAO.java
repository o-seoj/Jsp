package greendae.user.dao.academic;

import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import greendae.user.dto.academic.FaqDTO;
import greendae.util.DBHelper;
import greendae.util.Sql_o;


public class FaqDAO extends DBHelper{
	private final static FaqDAO INSTANCE = new FaqDAO();
	public static FaqDAO getInstance() {
		return INSTANCE;
	}
	
	private FaqDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void insert(FaqDTO dto) {
		
	}
	
	public FaqDTO select(int cate, int num) {
		
		return null;
	}
	
	public List<FaqDTO> selectAll() {
		List<FaqDTO> dtoList = new ArrayList<FaqDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_o.SELECT_FAQ_ALL);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				FaqDTO dto = new FaqDTO();
				dto.setCategory(rs.getInt(1));
				dto.setNumber(rs.getInt(2));
				dto.setTitle(rs.getString(3));
				dto.setContent(rs.getNString(4));
				dtoList.add(dto);
			}
			closeAll();			
			
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		
		
		return dtoList;
	}
	
	public void update(FaqDTO dto) {
		
	}
	
	public void delete(int cate, int num) {
		
	}
	
	
}