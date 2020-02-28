package fuzzy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;

public class KeyReaders
{
	public static SecretKey readSecretKey(int id) throws Exception{
		try {
			byte[] keys=null;
			String selectPublicKey = "select seckey from fuzzykeys where artid=?";
			PreparedStatement pst = jdbcc.getPre(selectPublicKey);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next())
			{
				keys = rs.getBytes("seckey");
			}
			
			SecretKey secretKey = new SecretKeySpec(keys, 0, keys.length,"AES");
			return secretKey;
		}
		
		catch (Exception e)
		{
			System.out.println(e);
		}

		
	
	return null;
}
}