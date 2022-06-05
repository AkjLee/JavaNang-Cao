package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

	import bean.productbean;

public class productdao {
	public ArrayList<productbean> getproduct() throws Exception{
			
		
		   	
			ArrayList<productbean> ds=new ArrayList<productbean>();
			//B1: kết nối
			DBConnect dc = new DBConnect();
			dc.KetNoi();
			//b2: lay du lieu ve
			String sql = "Select *from product";
			PreparedStatement cmd = dc.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			//b3: duyet qua cac du lieu lay ve de luu vao 1 mang
			while(rs.next()) {
				String id=rs.getString("id");
	    		String name=rs.getString("name");
	    		String image=rs.getString("image");
	    		Long price=rs.getLong("price");
	    		String title=rs.getString("title");
	    		String CateID=rs.getString("CateID");
	    	
	    		ds.add(new productbean(id, name, image, price, title,CateID));
	    	}
	    	//Dong ket noi
	    	rs.close();
	    	dc.cn.close();
	 
	    	 return ds;
		}
	public void ThemSp(String name, String anh, Long gia,String title,String maloai) throws Exception
	{
		//b1: ket noi vao csdl
		DBConnect dc=new DBConnect();
		dc.KetNoi();
		
			String sql="insert into product (name,image,price,title,cateID) values (?,?,?,?,?)";
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1,name);
			cmd.setString(2,anh);
			cmd.setLong(3,gia);
			cmd.setString(4,title);
			cmd.setString(5,maloai);
			//b4: Thuc hien cau lieu
			cmd.executeUpdate();
		
	}
	public void xoaSP(long id) throws Exception{
		DBConnect dc = new DBConnect();
		dc.KetNoi();
		String sql1 = "delete from detailed_bill where id=? ";
		PreparedStatement cmd1 = dc.cn.prepareStatement(sql1);
		cmd1.setLong(1, id);
		String sql = "delete from product where id=? ";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setLong(1, id);
		cmd.executeUpdate();
	}
	public productbean loadsp(String id) throws Exception{
		
		//B1: káº¿t ná»‘i
				DBConnect dc = new DBConnect();
				dc.KetNoi();
				//b2: lay du lieu ve
				String sql = "Select * from product where id=?";
				PreparedStatement cmd = dc.cn.prepareStatement(sql);
				//Truyá»�n 01 tham sá»‘: un; pas vÃ o cmd
				cmd.setString(1, id);
				
				ResultSet rs = cmd.executeQuery();
				//Náº¿u rs.next==false return null
				// else: return kh;
					// Táº¡o ra 1 khachhang:kh vÃ  return kh;
				while (rs.next()) 
			 {
					String pid=rs.getString("id");
		    		String name=rs.getString("name");
		    		String image=rs.getString("image");
		    		Long price=rs.getLong("price");
		    		String title=rs.getString("title");
		    		String cateID=rs.getString("cateID");
		    		productbean kh=new productbean(pid, name, image,price, title, cateID);
		    		rs.close();
			    	dc.cn.close();
		    		return kh;
				}
				return null;
		    	//Dong ket noi	
	}
	public void SuaSanPham(String id,String name, String anh, Long gia,String title ,String maloai) throws Exception
	{
		//b1: ket noi vao csdl
		DBConnect dc=new DBConnect();
		dc.KetNoi();
		
			String sql="update product set name=?,image=?,price=?,title=?,cateID=? where id=?";
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1,name);
			cmd.setString(2,anh);
			cmd.setLong(3,gia);
			cmd.setString(4,title);
			cmd.setString(5,maloai);
			cmd.setString(6, id);
			//b4: Thuc hien cau lieu
			cmd.executeUpdate();
		
	}
}
