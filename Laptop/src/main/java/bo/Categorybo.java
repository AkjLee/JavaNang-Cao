package bo;
import java.util.ArrayList;

import bean.Categorybean;
import dao.Categorydao;
public class Categorybo {
	Categorydao ldao= new Categorydao();
	   public ArrayList<Categorybean> getloai() throws Exception{
		   return ldao.getloai();
	   }
	   public ArrayList<Categorybean> Tim(ArrayList<Categorybean> ds, String key){
	    	ArrayList<Categorybean> tam= new ArrayList<Categorybean>();
	    	for(Categorybean sv: ds)
	    		if(sv.getcateID().toLowerCase().contains(key.toLowerCase())||sv.getCname().toLowerCase().contains(key.toLowerCase()))
	    			tam.add(sv);
	    	return tam;
	 	
		}
		public int Dem( ArrayList<Categorybean> ds, String cateID){
	    	
	    	int dem=0;
	    	for(Categorybean sv: ds)
	    		if(sv.getcateID()==cateID)
	    			dem++;
	    	return dem;
	 	
		}
		public void getThemlSp( String cname) throws Exception{
			ldao.ThemLsp( cname);
		}
		public void xoaLSP(long id) throws Exception{
			ldao.xoaLSP(id);
		}
		public Categorybean getloai(long id) throws Exception{
			return ldao.getloai(id);
		}
		public void SuaLoai(String id,String name) throws Exception
		{ldao.SuaLoai(id, name);}
}
