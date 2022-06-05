package bo;

import java.util.ArrayList;

import bean.productbean;
import dao.productdao;



public class productbo {
	productdao sdao = new productdao();
	public ArrayList<productbean> getSach() throws Exception{
		return sdao.getproduct();
	}
	public ArrayList<productbean> Product(ArrayList<productbean> ds, String cid){
		ArrayList<productbean> tam= new ArrayList<productbean>();
		for (productbean sv:ds)
			if(sv.getCateID()==cid)
				tam.add(sv);
		return tam;
	
	}
	public ArrayList<productbean> Tim(ArrayList<productbean> ds, String key){
    	ArrayList<productbean> tam= new ArrayList<productbean>();
    	for(productbean sv: ds)
    		if(sv.getName().toLowerCase().contains(key.toLowerCase())||sv.getTitle().toLowerCase().contains(key.toLowerCase()))
    			tam.add(sv);
    	return tam;
 	
	}
	public int Dem( ArrayList<productbean> ds, String cid){
    	
    	int dem=0;
    	for(productbean sv: ds)
    		if(sv.getCateID()==cid)
    			dem++;
    	return dem;
 	
	}
	public void getThemSp(String name, String anh, Long gia,String title,String maloai) throws Exception{
		sdao.ThemSp(name, anh, gia, title, maloai);
	}
	public void xoaSP(long id) throws Exception{
		sdao.xoaSP(id);
	}
	public productbean loadsp(String id) throws Exception{
		return sdao.loadsp(id);
	}
	public void SuaSanPham(String id,String name, String anh, Long gia,String title ,String maloai) throws Exception
	{  sdao.SuaSanPham(id, name, anh, gia, title, maloai);}
}



