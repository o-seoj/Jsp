package jboard.dao;

import java.util.List;

import jboard.dto.ArticleDTO;
import jboard.dto.FileDTO;
import jboard.util.DBHelper;

public class FileDAO extends DBHelper {
	
	private final static FileDAO INSTANCE = new FileDAO();
	public static FileDAO getInstance() {
		return INSTANCE;
	}	
	private FileDAO() {}
	
	
	public void insert(FileDTO dto) {
		
	}
	
	public FileDTO select(int fno) {
		return null;
	}
	
	public List<FileDTO> selectAll() {
		return null;
	}
	
	public void update(FileDTO dto) {
		
	}
	
	public void delete(int fno) {
		
	}
}
