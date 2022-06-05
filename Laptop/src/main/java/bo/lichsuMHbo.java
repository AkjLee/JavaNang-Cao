package bo;

import java.util.ArrayList;

import bean.lichsuMHbean;
import bean.productbean;
import dao.lichsuMHdao;
import dao.productdao;

public class lichsuMHbo {
	lichsuMHdao sdao = new lichsuMHdao();
	public ArrayList<lichsuMHbean> getlsMH(long cliID) throws Exception{
		return sdao.getls(cliID);		
	}
	public ArrayList<lichsuMHbean> getls() throws Exception{
		return sdao.getls();
	}
}
