package greendae.user.service.student;

import java.util.List;

import greendae.user.dao.student.EnrollListDAO;
import greendae.user.dto.student.EnrollListDTO;

public class EnrollListService {
      private static final EnrollListService INSTANCE = new EnrollListService();
        public static EnrollListService getInstance() { return INSTANCE; }

        private final EnrollListDAO dao = EnrollListDAO.getInstance();

        public List<EnrollListDTO> getEnrollHistory(String s_id) {
            return dao.getEnrollHistory(s_id);
        }
        public List<EnrollListDTO> getEnrollHistoryByTerm(String s_id, String year, String semester) {
            return dao.getEnrollHistoryByTerm(s_id, year, semester);
        }
}
