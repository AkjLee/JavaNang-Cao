package dao;

import java.sql.Date;
import java.sql.PreparedStatement;


public class billdao {

public void addbill(String cliID, Date Date, String damua )throws Exception {
		
		
		DBConnect dc = new DBConnect();
		dc.KetNoi();
		String sql = "insert into bill values (?,?,?) ";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, cliID);
		cmd.setDate(2, Date);
		cmd.setString(3, damua);
		cmd.executeUpdate();
			
}
}
