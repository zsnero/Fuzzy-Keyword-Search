package fuzzy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.*;
import java.sql.*;
import javax.crypto.*;

public class DecryptText{
	
	public static String decrypt(String text, String head, int id) throws Exception
	{
		try {
			
			SecretKey secretKey = KeyReaders.readSecretKey(id);
			Cipher cipher = Cipher.getInstance("AES");
			String sql = "select "+ head + "from arttable where id=?";
			
			PreparedStatement pst = jdbcc.getPre(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			String passphrase = null;
			if(rs.next())
				passphrase = rs.getString(head);
			System.out.println("head"+head);
			byte[] passPhraseBytes = passphrase.getBytes();
			byte[] encryptionBytes = org.apache.commons.codec.binary.Base64.decodeBase64(passPhraseBytes);
			cipher.init(Cipher. DECRYPT_MODE, secretKey);
			byte[] recoveredBytes = cipher.doFinal(encryptionBytes);
			String recovered = new String(recoveredBytes);
			
			return recovered;
			
		}
		catch(InvalidKeyException e)
		{
			e.printStackTrace();
		}
		catch(NoSuchAlgorithmException e)
		{
			e.printStackTrace();
			
		}
		catch(NoSuchPaddingException e)
		{
			e.printStackTrace();
		}
		catch(IllegalBlockSizeException e)
		{
			e.printStackTrace();
		}
		catch(BadPaddingException e) {
			e.printStackTrace();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	
}