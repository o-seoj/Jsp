package service;

import java.util.List;

import dao.CustomerDAO;
import dao.TransactionDAO;
import dto.CustomerDTO;
import dto.TransactionDTO;

public enum TransactionService {
	INSTANCE;
	
	private TransactionDAO dao = TransactionDAO.getInstance();
	
	public TransactionDTO findById(int t_no) {
		return dao.select(t_no);
	}
	public List<TransactionDTO> findAll(){
		return dao.selectAll();
	}
	public void transfer(TransactionDTO dto) {
		dao.insertAndUpdate(dto);
	}
	public void modify(TransactionDTO dto) {
		dao.update(dto);
	}
	public void remove(int t_no) {
		dao.delete(t_no);
	}
}
