package vo;

public class CakeVO {
	//변수 선언
	private int seq;
	private int cnt;
	private String deco_color;
	private String deco_fruit;
	private String deco_cookie;
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
	public String getDeco_color() {
		return deco_color;
	}
	public void setDeco_color(String deco_color) {
		this.deco_color = deco_color;
	}
	public String getDeco_fruit() {
		return deco_fruit;
	}
	public void setDeco_fruit(String deco_fruit) {
		this.deco_fruit = deco_fruit;
	}
	public String getDeco_cookie() {
		return deco_cookie;
	}
	public void setDeco_cookie(String deco_cookie) {
		this.deco_cookie = deco_cookie;
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
	
	@Override
	public String toString() {
		return "CakeVO [seq=" + seq + ", cnt=" + cnt + ", deco_color=" + deco_color + ", deco_fruit=" + deco_fruit
				+ ", deco_cookie=" + deco_cookie + ", c_nickname=" + c_nickname + ", title=" + title + ", contents="
				+ contents + ", c_id=" + c_id + "]";
	}
}
