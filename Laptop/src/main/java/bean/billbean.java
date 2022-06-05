package bean;

public class billbean {
	
	private int bID;
	private String cliID;
	private String Date;
	private String damua;
	
	public billbean()
	{
		super();
	}
	public billbean(int bID, String cliID, String Date, String damua)
	{
		this.bID = bID;
		this.cliID = cliID;
		this.Date = Date;
		this.damua =damua;
	}
	public int getbID() {
		return bID;
	}
	public void setbID(int bID) {
		this.bID = bID;
	}
	public String getCliID() {
		return cliID;
	}
	public void setCliID(String cliID) {
		this.cliID = cliID;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		this.Date = date;
	}
	public String getDamua() {
		return damua;
	}
	public void setDamua(String damua) {
		this.damua = damua;
	}
	
	
}
