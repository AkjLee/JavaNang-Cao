package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.lichsuMHbean;
import bean.productbean;

public class lichsuMHdao {
public ArrayList<lichsuMHbean> getls(long cliID) throws Exception{
		
	
	   	
		ArrayList<lichsuMHbean> ds=new ArrayList<lichsuMHbean>();
		//B1: ket noi
		DBConnect dc = new DBConnect();
		dc.KetNoi();
		//b2: lay du lieu ve
		String sql = "select * from View_1\r\n"
				+ "where cliID=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setLong(1, cliID);
		ResultSet rs = cmd.executeQuery();
		//b3: duyet qua cac du lieu lay ve de luu vao 1 mang
		while(rs.next()) {
    		long cliID1=rs.getLong("cliID");
    		long bID=rs.getLong("bID");
    		String name=rs.getString("name");
    		int number=rs.getInt("number");
    		int price=rs.getInt("price");
    		int thantien=rs.getInt("thanhtien");
    		String damua=rs.getString("damua");
    		ds.add(new lichsuMHbean(cliID1, bID, name, number, price, thantien, damua));
    	}
    	//Dong ket noi
    	rs.close();
    	dc.cn.close();
 
    	 return ds;
	}
public ArrayList<lichsuMHbean> getls() throws Exception{
	
	
   	
	ArrayList<lichsuMHbean> ds=new ArrayList<lichsuMHbean>();
	//B1: ket noi
	DBConnect dc = new DBConnect();
	dc.KetNoi();
	//b2: lay du lieu ve
	String sql = "select * from View_1\r\n";
			
	PreparedStatement cmd = dc.cn.prepareStatement(sql);

	ResultSet rs = cmd.executeQuery();
	//b3: duyet qua cac du lieu lay ve de luu vao 1 mang
	while(rs.next()) {
		long dbID=rs.getLong("dbID");
		long bID=rs.getLong("bID");
		String name=rs.getString("name");
		int number=rs.getInt("number");
		int price=rs.getInt("price");
		int thantien=rs.getInt("thanhtien");
		String damua=rs.getString("damua");
		ds.add(new lichsuMHbean(dbID, bID, name, number, price, thantien, damua));
	}
	//Dong ket noi
	rs.close();
	dc.cn.close();

	 return ds;
}
}

