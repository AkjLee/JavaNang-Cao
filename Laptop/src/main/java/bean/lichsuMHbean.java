package bean;

public class lichsuMHbean {
	private long dbID;
	private long bID;
	private String name;
	private int  number;
	private int price;
	private int thanhtien;
	private String damua;
	public lichsuMHbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public lichsuMHbean(long dbID, long bID, String name, int number, int price, int thanhtien, String damua) {
		super();
		this.dbID = dbID;
		this.bID = bID;
		this.name = name;
		this.number = number;
		this.price = price;
		this.thanhtien = thanhtien;
		this.damua = damua;
	}
	
	public long getDbID() {
		return dbID;
	}
	public void setDbID(long dbID) {
		this.dbID = dbID;
	}
	public long getbID() {
		return bID;
	}
	public void setbID(long bID) {
		this.bID = bID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}
	public String getDamua() {
		return damua;
	}
	public void setDamua(String damua) {
		this.damua = damua;
	}

	
}
