package fuzzy;

import java.io.IOException;
import java.io.*;
import java.sql.*;
import java.text.*;
import java.util.*;
import java.util.Map.Entry;
import javax.swing.JOptionPane;
import javax.servlet.*;
import javax.swing.*;
import fuzzy.jdbcc;
import fuzzy.EncryptText;
import fuzzy.KeyGenerate;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class WriteArticles
 */
@WebServlet("/WriteArticles")
@MultipartConfig(maxFileSize = 16177215)
public class WriteArticles extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WriteArticles() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		InputStream inputStream = null; //input stream of the upload file
		HttpSession session = request.getSession();
		jdbcc db = null;
		try {
			
			
			String uname= session.getAttribute("uname").toString();
			System.out.println(uname);
			String filename=request.getParameter("filename");
			String kw1=request.getParameter("kw1");
			String kw2=request.getParameter("kw2");
			String kw3=request.getParameter("kw3");
			String filetype=request.getParameter("filetype");
			System.out.println("file type"+ filetype);
			String description=request.getParameter("description");
			String email=(String)session.getAttribute("email");
			
			db= new jdbcc();
			//obtains upload file part in this multipart request
			Part filePart = request.getPart("fileToUpload");
			System.out.println(filePart);
			if(filePart != null) {
				
				System.out.println(filePart.getName());
				System.out.println(filePart.getSize());
				System.out.println(filePart.getContentType());
				
				//obtains input stream of the upload file
				
				inputStream = filePart.getInputStream();
				
			}
			
			HashMap<String,String> hm = new HashMap<String,String>();
			hm.put("filename",filename);
			hm.put("tag1", kw1);
			hm.put("desc",description);
			
			String insQuery = "insert into test.arttable(file,filetype, uname) values(?,?,?)";
			PreparedStatement insPst=jdbcc.getPre(insQuery);
			insPst.setBlob(1, inputStream);
			insPst.setString(2, filetype);
			insPst.setString(3,uname );
			int resIns=insPst.executeUpdate();
			System.out.println("file upload status"+resIns);
			
			  int maxId=0; 
			  if(resIns>0) {
			  
			  Statement stmt = jdbcc.getStatement(); 
			  ResultSet rs =  stmt.executeQuery("select max(id) from arttable"); 
			  	if(rs.next()) {
			  			maxId=rs.getInt(1);
			  
			  	}
			  
			  
			  }
			  System.out.println(maxId);
			  
			  KeyGenerate.generateKey(maxId);
			  
			  Set<Entry<String, String>> set=hm.entrySet();
			  Iterator<Entry<String,String>> iterator=set.iterator(); 
			  int resFields=0;
			  while(iterator.hasNext()) { 
				  Map.Entry<java.lang.String, java.lang.String> entry=(Map.Entry<java.lang.String, java.lang.String>) iterator.next(); 
				  String head=entry.getKey(); 
				 System.out.println("column"+head);
				  String value=entry.getValue();
				  System.out.println("data from form :"+ value);
				  resFields=EncryptText.encrypt(head,value,maxId); 
			  } 
			  
			  System.out.println("dfinal"+ resFields);
			  if(resFields>0) {
			  response.sendRedirect("uploadpage.jsp?msg=success");
			  
			  } else { JOptionPane.showMessageDialog(null, "Article upload failed");
			  response.sendRedirect("uploadpage.jsp"); }
			 	
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
