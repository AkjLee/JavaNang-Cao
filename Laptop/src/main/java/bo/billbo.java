package bo;

import java.sql.Date;

import dao.billdao;


public class billbo {
	billdao khdao= new billdao();
	public void getbill(String cliID, Date Date, String damua) throws Exception{
		    khdao.addbill( cliID, Date, damua);;
   }
}
