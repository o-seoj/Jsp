package greendae.util;

public class Sql {
	
	
	

	
	// ==================================================== cboard 전용 SQL======================= //

    // 글 등록
    public static final String INSERT_CBOARD =
        "INSERT INTO cboard (category, title, content, writer_type, writer_id, created_at) " +
        "VALUES (?, ?, ?, ?, ?, NOW())";

    // 글 목록 (카테고리별, 페이징)
    public static final String SELECT_CBOARD_BY_CATEGORY =
        "SELECT board_id, category, title, writer_id, created_at, view_count " +
        "FROM cboard " +
        "WHERE category = ? " +
        "ORDER BY board_id DESC " +
        "LIMIT ?, ?";

    // 글 개수 (카테고리별)
    public static final String COUNT_CBOARD_BY_CATEGORY =
        "SELECT COUNT(*) FROM cboard WHERE category = ?";

    // 글 검색 (제목 + 내용)
    public static final String SEARCH_CBOARD =
        "SELECT board_id, category, title, writer_id, created_at, view_count " +
        "FROM cboard " +
        "WHERE category = ? " +
        "AND (title LIKE ? OR content LIKE ?) " +
        "ORDER BY board_id DESC " +
        "LIMIT ?, ?";

    // 검색된 글 개수
    public static final String COUNT_SEARCH_CBOARD =
        "SELECT COUNT(*) FROM cboard " +
        "WHERE category = ? " +
        "AND (title LIKE ? OR content LIKE ?)";

    // 글 보기 (단일)
    public static final String SELECT_CBOARD_BY_ID =
        "SELECT * FROM cboard WHERE board_id = ?";

    // 조회수 증가
    public static final String UPDATE_VIEW_COUNT =
        "UPDATE cboard SET view_count = view_count + 1 WHERE board_id = ?";

    // 글 수정
    public static final String UPDATE_CBOARD =
        "UPDATE cboard " +
        "SET title = ?, content = ?, updated_at = NOW() " +
        "WHERE board_id = ? AND writer_id = ?";

    // 글 삭제
    public static final String DELETE_CBOARD =
        "DELETE FROM cboard WHERE board_id = ? AND writer_id = ?";


    // cboard_comment (댓글)


    // 댓글 등록
    public static final String INSERT_COMMENT =
        "INSERT INTO cboard_comment (board_id, writer_type, writer_id, content, created_at) " +
        "VALUES (?, ?, ?, ?, NOW())";

    // 댓글 목록
    public static final String SELECT_COMMENTS_BY_BOARD =
        "SELECT comment_id, writer_type, writer_id, content, created_at " +
        "FROM cboard_comment " +
        "WHERE board_id = ? " +
        "ORDER BY comment_id ASC";

    // 댓글 삭제
    public static final String DELETE_COMMENT =
        "DELETE FROM cboard_comment WHERE comment_id = ? AND writer_id = ?";


    // cboard_file (첨부파일)


    // 파일 등록
    public static final String INSERT_FILE =
        "INSERT INTO cboard_file (board_id, file_name, file_path, file_size, created_at) " +
        "VALUES (?, ?, ?, ?, NOW())";

    // 파일 목록
    public static final String SELECT_FILES_BY_BOARD =
        "SELECT file_id, file_name, file_path, file_size, created_at " +
        "FROM cboard_file WHERE board_id = ?";

    // 파일 삭제
    public static final String DELETE_FILE =
        "DELETE FROM cboard_file WHERE file_id = ?";

    
    
}
	
	
	
	
	
	
