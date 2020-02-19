package fuzzy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class jdbcc {
	static Connection con=null;
	public static void dbconnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");  
	    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");  
	}public static PreparedStatement getPre(String str) throws ClassNotFoundException, SQLException
	{
		dbconnection();
		PreparedStatement pst=con.prepareStatement(str);
		return pst;
	}
	public static Statement getStatement() throws ClassNotFoundException, SQLException{
		dbconnection();
		Statement st=null;
		st=con.createStatement();
		return st;
		    

	}
	public static void close() {
	
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		
	}

}
