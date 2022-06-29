package vo;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {
	
	// 변수 선언
	private String id;
	private String log_id;
	private String password;
	private String log_password;
	private String nickname;
	private int birthday;
	private String url;
	
	// getter&setter
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLog_id() {
		return log_id;
	}
	public void setLog_id(String log_id) {
		this.log_id = log_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLog_password() {
		return log_password;
	}
	public void setLog_password(String log_password) {
		this.log_password = log_password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getBirthday() {
		return birthday;
	}
	public void setBirthday(int birthday) {
		this.birthday = birthday;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", nickname=" + nickname + ", birthday=" + birthday
				+ ", url=" + url + "]";
	}
	
	
}
