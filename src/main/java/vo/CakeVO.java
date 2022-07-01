package vo;

public class CakeVO {
	//변수 선언
	private int seq;
	private int cnt;
	private String items;
	private String c_nickname;
	private String title;
	private String contents;
	private String c_id;
	
	// getter&setter
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getItems() {
		return items;
	}
	public void setItems(String items) {
		this.items = items;
	}
	public String getC_nickname() {
		return c_nickname;
	}
	public void setC_nickname(String c_nickname) {
		this.c_nickname = c_nickname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	
	// toString
	@Override
	public String toString() {
		return "CakeVO [seq=" + seq + ", cnt=" + cnt + ", items=" + items + ", c_nickname=" + c_nickname + ", title="
				+ title + ", contents=" + contents + ", c_id=" + c_id + "]";
	}
	
	

}
