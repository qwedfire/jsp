package tw.brad.api;

public class Member {
	private int id;
	private String account,realname,birthday;
	public Member(int id,String account,String realname,String birthday) {
		this.id=id;this.account=account;
		this.realname=realname;this.birthday=birthday;
	}
	public Member() {
		
	}
	public int getId() {
		return id;
	}
	public String getAccount() {
		return account;
	}
	public String getRealname() {
		return realname;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	@Override
	public String toString() {
		return account+" "+realname;
	}
}
