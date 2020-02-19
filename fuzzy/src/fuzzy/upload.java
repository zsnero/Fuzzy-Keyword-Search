package fuzzy;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class upload
 */
@WebServlet("/uploadpage")
@MultipartConfig(maxFileSize = 209715200)
public class upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public upload() {
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
		doGet(request, response);
		response.setContentType("text/html");
		
	
		
		/*
		 * int id=0; 
		 * String filename = request.getParameter("fileToUpload");
		 */
		int id=0;
	//	int logid = Integer.parseInt(request.getSession().getAttribute("logid").toString());
		
		/*
		 * int logid=(Integer)session.getAttribute("logid");
		 */	
        String str1=request.getSession().getAttribute("uname").toString();
        System.out.println(str1+"name");
		String filetype = request.getParameter("filetype");
		String kw1 = request.getParameter("kw1");
		String kw2 = request.getParameter("kw2");
		String kw3 = request.getParameter("kw3");
		String desc = request.getParameter("description");
		System.out.println(filetype);
		String filename = request.getParameter("filename");
		Blob file;
		InputStream inputStream = null; //input stream of the upload file
		Part fileContent=request.getPart("fileToUpload");
		String uname = null;
		//fileContent.get //miss cheith vech poya sambavam
	
		System.out.println(desc);
		System.out.println(kw1);
		System.out.println(kw2);
		System.out.println(kw3);

		/*
		 * fileContent.getName(); System.out.println(fileContent.toString()+"dddd");
		 * System.out.println(fileContent.getHeader(filename)+"dddd");
		 */
		/*
		 * InputStream fileContent = ( file).getInputStream();
		 * 
		 */		
		inputStream=fileContent.getInputStream(); 
		try {
			

			
			PrintWriter out = response.getWriter();
			String str = "insert into arttable (`filename`,`filetype`,`file`,`uname`,`desc`,`tag1`,`tag2`,`tag3`) values (?,?,?,?,?,?,?,?)";
			PreparedStatement pst = jdbcc.getPre(str);
			//ResultSet rs = pst.executeQuery();
			
			pst.setString(1,filename);
			pst.setString(2, filetype);
			pst.setBlob(3, inputStream);
			pst.setString(4, str1);
			pst.setString(5, desc);
			pst.setString(6, kw1);
			pst.setString(7, kw2);
			pst.setString(8, kw3);

			
			//pst.setString(8, uname);
			
			int rss = pst.executeUpdate();
			
			
			/*
			 * while(rs.next()) { filename=rs.getString(1); filetype=rs.getInt(2);
			 * file=rs.getBlob(3); desc=rs.getString(4); kw1=rs.getString(5);
			 * kw2=rs.getString(6); kw3=rs.getString(7); }
			 */
			
			
			
			
			/*
			 * InputStream fileUp=file.getInputStream();
			 */
			
			
			if(rss>0) {
				response.sendRedirect("uploadpage.jsp");
			}
			
			
		}
		
		catch (Exception e)
		{
			System.out.println(e);
		}
		
	}

}
