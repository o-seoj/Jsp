package greendae.user.service.academic;

import java.util.List;

import greendae.user.dao.academic.FaqDAO;
import greendae.user.dto.academic.FaqDTO;

public enum FaqService {
	INSTANCE;
	
	private FaqDAO dao = FaqDAO.getInstance();
	
	public void register(FaqDTO dto) {
		dao.insert(dto);
	}	
	public FaqDTO findById(int cate, int num) {
		return dao.select(cate, num);
	}
	public List<FaqDTO> findAll() {
		return dao.selectAll();
	}
	public void modify(FaqDTO dto) {
		dao.update(dto);
	}	
	public void remove(int cate, int num) {
		dao.delete(cate, num);
	}
}

