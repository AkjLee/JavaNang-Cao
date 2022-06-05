package bo;

import bean.adminbean;
import dao.admindao;

public class adminbo {
		admindao ad=new admindao();
		adminbean kh=new adminbean();
		public adminbean getktdn(String un,String pass) throws Exception {
			return ad.ktdn(un, pass);
		}
		 public adminbean ktdn(String user, String pass) throws Exception
		   {
			   

		    	return ad.getkh(user, pass);
		   }
		   public adminbean ktkh(String user, String pass) throws Exception
		   {
			   

		    	return ad.ktdn(user, pass);
		   }
}