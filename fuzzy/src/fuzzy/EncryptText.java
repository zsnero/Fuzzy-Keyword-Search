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


public class EncryptText{
	
	public static int encrypt(String head, String text, int maxId) throws Exception{

	try
	{
		Cipher cipher = Cipher.getInstance("AES");
		SecretKey secretKey = KeyReaders.readSecretKey(maxId);
		System.out.println("secretKey=" + secretKey);
		
		cipher.init(Cipher.ENCRYPT_MODE, secretKey);
		
		byte[] inputBytes = text.getBytes();
		byte[] finalResult = org.apache.commons.codec.binary.Base64.encodeBase64(cipher.doFinal(inputBytes));
		
		String encryptedStr = new String(finalResult);
		String updateFieldsQuery = "update test.arttable set `"+head+"`=? where id=?";
		PreparedStatement pstmt = jdbcc.getPre(updateFieldsQuery);
		pstmt.setString(1,  encryptedStr);
		pstmt.setInt(2, maxId);
		int resUpd = pstmt.executeUpdate();
		
		return resUpd;
	}
	
	catch (InvalidKeyException e) {
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
	catch(BadPaddingException e)
	{
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
		
	return 0;
		
	}
	
	
}
