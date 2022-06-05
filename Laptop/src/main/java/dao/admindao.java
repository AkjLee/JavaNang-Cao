package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.adminbean;
public class admindao {
public adminbean getkh(String un,String matkhau) throws Exception{
		
		//B1: kết nối
				DBConnect dc = new DBConnect();
				dc.KetNoi();
				//b2: lay du lieu ve
				String sql = "Select * from client where account=? and pass=?";
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
		    		adminbean kh=new adminbean(uID, user, pass);
		    		rs.close();
			    	dc.cn.close();
		    		return kh;
					}
		    	//Dong ket noi
				
	}
	
public adminbean ktdn(String un,String pass) throws Exception{
		
		//B1: kết nối
				DBConnect dc = new DBConnect();
				dc.KetNoi();
				//b2: lay du lieu ve
				String sql = "select * from Account \r\n"
						+ "where [user]=? and pass=?";
				PreparedStatement cmd = dc.cn.prepareStatement(sql);
				//Truyền 01 tham số: un; pas vào cmd
				cmd.setString(1, un);
				cmd.setString(2, pass);
				ResultSet rs = cmd.executeQuery();
				//Nếu rs.next==false return null
				// else: return kh;
					// Tạo ra 1 khachhang:kh và return kh;
				if (rs.next()==false) return null;
				else {
					
					String TenDangNhap=rs.getString("user");
		    		String MatKhau=rs.getString("pass");
		    		String Quyen=rs.getString("isAdmin");
		    		adminbean admin=new adminbean(TenDangNhap, MatKhau, Quyen);
		    		rs.close();
			    	dc.cn.close();
		    		return admin;
					}
		    	//Dong ket noi	
	}
}