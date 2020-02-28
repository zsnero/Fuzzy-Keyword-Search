package fuzzy;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;


public class KeyGenerate {
	
	public static void generateKey(int id) throws Exception{
		
		KeyGenerator keyGen = KeyGenerator.getInstance("AES");
		keyGen.init(128);
		SecretKey secretKey = keyGen.generateKey();
		saveKeys(id,secretKey.getEncoded());
	}
	
	private static void saveKeys(int id, byte[] secretKey)
	throws IOException{
		
		try {
			
			
			System.out.println(secretKey.toString());
			String insertKeysQuery = "insert into fuzzykeys(artid, seckey) values (?,?)";
			PreparedStatement pst = jdbcc.getPre(insertKeysQuery);
			pst.setInt(1, id);
			pst.setBytes(2, secretKey);
			pst.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		
		
	}

	
}
