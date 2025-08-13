package service;

import java.util.List;

import dao.CustomerDAO;
import dao.OrderDAO;
import dto.CustomerDTO;
import dto.OrderDTO;

public enum OrderService {
	INSTANCE;
	
	private OrderDAO dao = OrderDAO.getInstance();
	
	// DAO 요청메서드
	public void register(OrderDTO dto) {
		dao.insertProduct(dto);
	}

}
