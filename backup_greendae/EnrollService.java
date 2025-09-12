package greendae.user.service.student;

import java.util.List;

import greendae.user.dao.student.EnrollDAO;
import greendae.user.dto.student.EnrollDTO;

public enum EnrollService {
    INSTANCE;

    private EnrollDAO dao = EnrollDAO.getInstance();

    public List<EnrollDTO> findAllSearch(String searchType, String keyword) {
        return dao.selectEnrollSearch(searchType, keyword);
    }

    public List<EnrollDTO> findAllEnroll() {
        return dao.selectAllEnroll();
    }
}
