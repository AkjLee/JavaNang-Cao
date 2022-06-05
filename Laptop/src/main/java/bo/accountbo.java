package bo;

import java.util.ArrayList;

import bean.accountbean;
import dao.accountdao;

public class accountbo {
	accountdao khdao= new accountdao();
	accountbean kh=new accountbean();
	   public void getkh(String user, String pass) throws Exception{
		    khdao.dangky(user, pass);
		    }
	   
	   public accountbean ktdn(String uID, String pass) throws Exception
	   {
		   

	    	return khdao.ktkh(uID);
	   }
	   public accountbean ktkh(String uID) throws Exception
	   {
		   

	    	return khdao.ktkh(uID);
	   }
	   public ArrayList<accountbean> getkh() throws Exception{
		   return khdao.getkh();
	   }

}
