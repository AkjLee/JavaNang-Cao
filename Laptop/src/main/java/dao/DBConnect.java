
package dao;

import java.sql.Connection;
import java.sql.DriverManager;



public class DBConnect {
	public Connection cn;
	public void KetNoi() throws Exception{
		 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		 System.out.println("Da ket noi1");
    	 cn= DriverManager.getConnection("jdbc:sqlserver://DESKTOP-5E92ANP\\SQLEXPRESS:1433;databaseName=wish_1;user=sa; password=12");
         System.out.println("Da ket noi");
   	
	}


}
