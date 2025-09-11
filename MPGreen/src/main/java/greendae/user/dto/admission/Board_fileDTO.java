package greendae.user.dto.admission;

public class Board_fileDTO {

	private int fild_id;
	private int board_id;
	private String file_name;
	private String file_path;
	private long filesize;
	private String created_at;
	
	public int getFild_id() {
		return fild_id;
	}
	public void setFild_id(int fild_id) {
		this.fild_id = fild_id;
	}
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}
	public long getFilesize() {
		return filesize;
	}
	public void setFilesize(long filesize) {
		this.filesize = filesize;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	
	@Override
	public String toString() {
		return "Cboard_file [fild_id=" + fild_id + ", board_id=" + board_id + ", file_name=" + file_name
				+ ", file_path=" + file_path + ", filesize=" + filesize + ", created_at=" + created_at + "]";
	}
	
}
   
