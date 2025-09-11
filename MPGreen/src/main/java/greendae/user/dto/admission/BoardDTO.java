package greendae.user.dto.admission;

public class BoardDTO {
    private int boardId;
    private String category;      
    private String title;
    private String content;
    private String writerType;    
    private String writerId;
    private String writerName;    
    private String created_at;
    private String updated_at;
    private int viewCount;
    private String newsType;    
    private boolean isSecret;
    private String qnaStatus;   
    private String answerContent;
    
    
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriterType() {
		return writerType;
	}
	public void setWriterType(String writerType) {
		this.writerType = writerType;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public String getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public String getNewsType() {
		return newsType;
	}
	public void setNewsType(String newsType) {
		this.newsType = newsType;
	}
	public boolean isSecret() {
		return isSecret;
	}
	public void setSecret(boolean isSecret) {
		this.isSecret = isSecret;
	}
	public String getQnaStatus() {
		return qnaStatus;
	}
	public void setQnaStatus(String qnaStatus) {
		this.qnaStatus = qnaStatus;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	
	@Override
	public String toString() {
		return "CboardDTO [boardId=" + boardId + ", category=" + category + ", title=" + title + ", content=" + content
				+ ", writerType=" + writerType + ", writerId=" + writerId + ", writerName=" + writerName
				+ ", created_at=" + created_at + ", updated_at=" + updated_at + ", viewCount=" + viewCount
				+ ", newsType=" + newsType + ", isSecret=" + isSecret + ", qnaStatus=" + qnaStatus + ", answerContent="
				+ answerContent + "]";
	} 
}
   
