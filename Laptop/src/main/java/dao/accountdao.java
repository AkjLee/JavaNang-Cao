package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.accountbean;

public class accountdao {
public accountbean getkh(String un,String matkhau) throws Exception{
		
		//B1: kết nối
				DBConnect dc = new DBConnect();
				dc.KetNoi();
				//b2: lay du lieu ve
				String sql = "Select * from Account where user=? and pass=?";
				PreparedStatement cmd = dc.cn.prepareStatement(sql);
				//Truyền tham số tài khoản mật khẩu
				cmd.setString(1, un);
				cmd.setString(2, matkhau);
				ResultSet rs = cmd.executeQuery();
				//Nếu rs.next==false return null
				// else: return kh;
					// Tạoo ra 1 khachhang:kh và return kh;
				if (rs.next()==false) return null;
				else {
					
					String uID=rs.getString("uID");
		    		String user=rs.getString("user");
		    		String pass=rs.getString("pass");
		    		String isAdmin=rs.getString("isAdmin");
		    		accountbean kh=new accountbean(uID, user, pass, isAdmin);
		    		rs.close();
			    	dc.cn.close();
		    		return kh;
					}
		    	//Dong ket noi	
				
	}
	public accountbean ktkh(String un) throws Exception{
	
		//B1: kết nối
				DBConnect dc = new DBConnect();
				dc.KetNoi();
				//b2: lay du lieu ve
				String sql = "Select * from Account where user=? ";
				PreparedStatement cmd = dc.cn.prepareStatement(sql);
				//Truyền 01 tham số: un; pas vào cmd
				cmd.setString(1, un);
				ResultSet rs = cmd.executeQuery();
				//Nếu rs.next==false return null
				// else: return kh;
					// Tạo ra 1 khachhang:kh và  return kh;
				while (rs.next()) 
			 {
					
					String uID=rs.getString("uID");
		    		String user=rs.getString("user");
		    		String pass=rs.getString("pass");
		    		String isAdmin=rs.getString("isAdmin");
		    		accountbean kh=new accountbean(uID, user, pass, isAdmin);
		    		rs.close();
			    	dc.cn.close();
		    		return kh;
				}
				return null;
		    	//Dong ket noi	
	}
	
	public void dangky(String user,String pass )throws Exception {
		
		
			DBConnect dc = new DBConnect();
			dc.KetNoi();
			String sql = "insert into client values (?,?) ";
			PreparedStatement cmd = dc.cn.prepareStatement(sql);
			cmd.setString(1, user);
			cmd.setString(2, pass);
			cmd.executeUpdate();	
	}
	public ArrayList<accountbean> getkh() throws Exception{
		ArrayList<accountbean> ds=new ArrayList<accountbean>();
		//B1: kết nối
				DBConnect dc = new DBConnect();
				dc.KetNoi();
				//b2: lay du lieu ve
				String sql = "Select * from account ";
				PreparedStatement cmd = dc.cn.prepareStatement(sql);
				//Truyền 01 tham số: un; pas vào cmd
				
				ResultSet rs = cmd.executeQuery();
				//Nếu rs.next==false return null
				// else: return kh;
					// Tạo ra 1 khachhang:kh và  return kh;
				while (rs.next()) 
			 {
					
					String uID=rs.getString("uID");
		    		String user=rs.getString("user");
		    		String pass=rs.getString("pass");
		    		String isAdmin=rs.getString("isAdmin");
		    		ds.add(new accountbean(uID, user, pass, isAdmin));
		    		
				}
				rs.close();
		    	dc.cn.close();
		    	return ds;
		    	//Dong ket noi	
	}
	
}
