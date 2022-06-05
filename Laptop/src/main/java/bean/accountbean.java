package bean;

public class accountbean {
	public String uID;
	public String user;
	public String pass;
	public String isAdmin;
	public accountbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public accountbean(String uID, String user, String pass, String isAdmin) {
		super();
		this.uID = uID;
		this.user = user;
		this.pass = pass;
		this.isAdmin = isAdmin;
	}
	public String getuID() {
		return uID;
	}
	public void setuID(String uID) {
		this.uID = uID;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(String isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	
}
