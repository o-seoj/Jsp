package greendae.user.dto.admission;

public class Board_commentDTO {
	private int comment_id;
	private int board_id;
	private String writer_type;
	private String writer_id;
	private String content;
	private String created_at;
	
	
	
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public String getWriter_type() {
		return writer_type;
	}
	public void setWriter_type(String writer_type) {
		this.writer_type = writer_type;
	}
	public String getWriter_id() {
		return writer_id;
	}
	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	
	@Override
	public String toString() {
		return "Cboard_comment [comment_id=" + comment_id + ", board_id=" + board_id + ", writer_type=" + writer_type
				+ ", writer_id=" + writer_id + ", content=" + content + ", created_at=" + created_at + "]";
	}
}
