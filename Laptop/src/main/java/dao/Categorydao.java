package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.Categorybean;

public class Categorydao {
	public ArrayList<Categorybean> getloai() throws Exception{
		ArrayList<Categorybean> ds=new ArrayList<Categorybean>();
		//b1: Kết nối
		DBConnect dc= new DBConnect();
		dc.KetNoi();
		//b2: lấy dữ liệu về
		String sql="Select * from Category";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		//b3: Duyệt qua các dữ liệu lấy về lưu vào 1 mảng
		while (rs.next()) {
			String cateID=rs.getString("cateID");
			String cname=rs.getString("cname");
			ds.add(new Categorybean(cateID, cname));
		}
		//Đóng kết nối
		rs.close();
		dc.cn.close();
		return ds;
		
	}
	
	public void ThemLsp( String cname) throws Exception
	{
		//b1: ket noi vao csdl
		DBConnect dc=new DBConnect();
		dc.KetNoi();
		
			String sql="insert into Category (cname) values (?)";
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1,cname);
			//b4: Thuc hien cau lieu
			cmd.executeUpdate();
		
	}
	public void xoaLSP(long id) throws Exception{
		DBConnect dc = new DBConnect();
		dc.KetNoi();
		String sql1 = "delete from product where cateID=? ";
		PreparedStatement cmd1 = dc.cn.prepareStatement(sql1);
		cmd1.setLong(1, id);
		String sql = "delete from Category where cateID=? ";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setLong(1, id);
		cmd.executeUpdate();
	}
	public Categorybean getloai(long id) throws Exception{
		ArrayList<Categorybean> ds=new ArrayList<Categorybean>();
		//b1: Kết nối
		DBConnect dc= new DBConnect();
		dc.KetNoi();
		//b2: lấy dữ liệu về
		String sql="Select * from Category where cateID=?";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setLong(1, id);
		ResultSet rs=cmd.executeQuery();
		//b3: Duyệt qua các dữ liệu lấy về lưu vào 1 mảng
		while (rs.next()) {
			String cateID=rs.getString("cateID");
			String cname=rs.getString("cname");
			Categorybean cate=new Categorybean(cateID, cname);
			rs.close();
			dc.cn.close();
			return cate;
		}
		//Đóng kết nối
		
		return null;
		
	}
	public void SuaLoai(String id,String name) throws Exception
	{
		//b1: ket noi vao csdl
		DBConnect dc=new DBConnect();
		dc.KetNoi();
		
			String sql="update Category set cname=? where cateID=?";
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1,name);
			cmd.setString(2,id);
			
			//b4: Thuc hien cau lieu
			cmd.executeUpdate();
		
	}
}
