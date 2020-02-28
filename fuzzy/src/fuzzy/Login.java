package fuzzy;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Decoder.BASE64Encoder;
/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * response.getWriter().append("Served at: ").append(request.getContextPath());
		 */	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");
		
		String email=request.getParameter("email"); //called email input from jsp page
		System.out.println("email "+email);
		String password=request.getParameter("password"); //called password from jsp page
		System.out.println("pass "+password);

		String ukey = null, encpass = null;
		int usrtype = 0,logid = 0;
		String name;
		try {
			PrintWriter out = response.getWriter(); 
			String str = "select UKEY,ENC_PASS, USRTYPE,LOG_ID from login where EMAIL=?"; //prepared statement is used to execute the query from jdbcc servlet page
			PreparedStatement pst = jdbcc.getPre(str);
			pst.setString(1,email);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next())
			{
				ukey=rs.getString(1);
				encpass=rs.getString(2);
				usrtype=rs.getInt(3);
				logid=rs.getInt(4);
			}
			
			String pswd = password+ukey;
			String ep=new BASE64Encoder().encode(pswd.getBytes());
			
           //registration stuffs
			String uname=null;
			String str1 = "select UNAME from test.register where LOG_IDR=?";
			PreparedStatement pst1 = jdbcc.getPre(str1);
            pst1.setInt(1, logid);
			ResultSet rs1 = pst1.executeQuery();
			while(rs1.next())
			{
				uname=rs1.getString(1);
			}
			System.out.println(encpass);
			System.out.println(ep);
			if(encpass.equals(ep))
			{
				
				HttpSession session=request.getSession();
				session.setAttribute("email",email);
				session.setAttribute("logid",logid);
                session.setAttribute("uname", uname);
                
				session.setMaxInactiveInterval(5*60);
				if(usrtype==1)
				{
					System.out.println(usrtype);
					RequestDispatcher rd1 = request.getRequestDispatcher("adminhome.jsp");
					rd1.forward(request, response);
				}
				else if(usrtype==0)
				{
					
					 System.out.println(usrtype);
					  RequestDispatcher rd2 = request.getRequestDispatcher("userhome.jsp");
					  rd2.forward(request,response);
					 
				}
				
				else
				{
					System.out.print("Username or Password is incorrect");
			    	RequestDispatcher rd3= request.getRequestDispatcher("pit.jsp");
			    	rd3.include(request,response);
				}
			}
			else
			{
				System.out.println("Password does not matches");
				RequestDispatcher rd4= request.getRequestDispatcher("pit.jsp");
		    	rd4.include(request,response); 
			}
			
			
	
			
			
		}
		
		catch (Exception e)
		{
			System.out.println(e);
		}
	}

}
