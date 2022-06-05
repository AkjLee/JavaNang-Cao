package bean;

public class clientbean {
	private String cliID;
	private String name;
	private String address;
	private String account;
	private String pass;
	public clientbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public clientbean(String cliID, String name, String address,String account, String pass) {
		super();
		this.cliID = cliID;
		this.name = name;
		this.address = address;
		this.account = account;
		this.pass = pass;
	}
	public String getCliID() {
		return cliID;
	}
	public void setCliID(String cliID) {
		this.cliID = cliID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
}
