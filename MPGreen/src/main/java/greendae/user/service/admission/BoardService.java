package greendae.user.service.admission;


import java.util.List;

import greendae.user.dao.admission.BoardDAO;
import greendae.user.dto.admission.BoardDTO;
import greendae.user.dto.admission.PagenationDTO;


public enum BoardService {
    
    INSTANCE; 

    private BoardDAO dao = BoardDAO.getInstance();

    // 글 등록하기
    public int register(BoardDTO dto) {
        return dao.insert(dto);
    }

    // 글 조회하기 (조회수도 증가함)
    public BoardDTO findById(int boardId) {
    	
        dao.updateViewCount(boardId);
        return dao.selectById(boardId);
    }

    // 카테고리별 전체 조회하기
    public List<BoardDTO> findByCategory(String category) {
        return dao.selectByCategory(category);
    }
    
    // 페이지네이션
    public PagenationDTO getPagenationDTO(String pg, String category) {
    	
        int total = dao.selectCountByCategory(category);
        
        return buildPagenationDTO(pg, total);
    }
    
    // 카테고리별 글 목록 조회 
    public List<BoardDTO> findAllByCategory(String category, int start) {
        return dao.selectByCategoryWithPaging(category, start);
    }

    // 검색 지원 목록/개수
    public List<BoardDTO> findAllSearch(String category, int start, String field, String keyword) {
        return dao.selectByCategoryWithSearch(category, start, field, keyword);
    }
    

    public int getCountSearch(String category, String field, String keyword) {
        return dao.selectCountByCategoryWithSearch(category, field, keyword);
    }
    
    // 검색 지원 페이지네이션
    public PagenationDTO getPagenationDTO(String pg, String category, String field, String keyword) {
    	
        int total;
        
        if (keyword == null || keyword.isEmpty()) {
            total = dao.selectCountByCategory(category);
            
        } else {
            total = dao.selectCountByCategoryWithSearch(category, field, keyword);
        }
        
        return buildPagenationDTO(pg, total);
    }

    // 글 수정 / 삭제

    public int remove(int boardId) {
        return dao.delete(boardId);
    }

    // 공통 페이지네이션 계산
    private PagenationDTO buildPagenationDTO(String pg, int total) {
        int lastPageNum = (total % 10 == 0) ? (total / 10) : (total / 10 + 1);

        int currentPage = 1;
        if (pg != null) {
            currentPage = Integer.parseInt(pg);
        }

        int start = (currentPage - 1) * 10;

        int currentPageGroup = (int) Math.ceil(currentPage / 10.0);
        int pageGroupStart = (currentPageGroup - 1) * 10 + 1;
        int pageGroupEnd = currentPageGroup * 10;
        if (pageGroupEnd > lastPageNum) {
            pageGroupEnd = lastPageNum;
        }

        int currentPageStartNum = total - (currentPage - 1) * 10;

        PagenationDTO dto = new PagenationDTO();
        dto.setTotal(total);
        dto.setStart(start);
        dto.setCurrentPage(currentPage);
        dto.setCurrentPageStartNum(currentPageStartNum);
        dto.setLastPageNum(lastPageNum);
        dto.setPageGroupStart(pageGroupStart);
        dto.setPageGroupEnd(pageGroupEnd);

        return dto;
    }
    
    
    
    
    public int modify(BoardDTO dto) {
        return dao.update(dto);
    }

    
}
