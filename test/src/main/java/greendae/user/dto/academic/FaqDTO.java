package greendae.user.dto.academic;

public class FaqDTO {
	private int number;
	private int category;
	private String title;
	private String content;
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
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
	@Override
	public String toString() {
		return "FaqDTO [number=" + number + ", category=" + category + ", title=" + title + ", content=" + content
				+ "]";
	}
	
	
	
}
