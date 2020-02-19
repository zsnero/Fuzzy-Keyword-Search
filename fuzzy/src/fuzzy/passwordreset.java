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
import Decoder.BASE64Encoder;
/**
 * Servlet implementation class passwordreset
 */
@WebServlet("/passwordreset")
public class passwordreset extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public passwordreset() {
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
		System.out.println("qwerty");
		String oldpass = request.getParameter("oldpassword");
		String newpass = request.getParameter("newpassword");
		String confpass = request.getParameter("confpassword");
		String encpass=null;
		String ukey=null;
		String em = request.getSession().getAttribute("email").toString();
		System.out.println();

		try
		{
			PrintWriter out=response.getWriter();
			String str = "select ENC_PASS, UKEY from login where email=?";
			PreparedStatement pst=jdbcc.getPre(str);
			pst.setString(1,em); 
			ResultSet rs = pst.executeQuery();
			
			while(rs.next())
			{
				encpass=rs.getString(1);
				ukey=rs.getString(2);
			}
			
			//Encrypt old password
			String op = oldpass+ukey;
		    String  ep = new BASE64Encoder().encode(op.getBytes());
		    System.out.println(ep);
		    
		    //Encrypt new password
		    String np = newpass+ukey;
		    String nep = new BASE64Encoder().encode(np.getBytes());
			System.out.println(nep);
		System.out.println(encpass);
			//check availability
		/*if(op.equals(encpass)) {*/ //Need Fix 
			
				System.out.println("first if");
				String pp = "update login set ENC_PASS = ?";
				PreparedStatement psw = jdbcc.getPre(pp);
				psw.setString(1,nep );
				int es = psw.executeUpdate();
				
				if(es>0)
				{
					System.out.println("second if");
					RequestDispatcher rd5= request.getRequestDispatcher("index.jsp");
					rd5.forward(request,response);
				}
			/* } */
			
			
		}
		
		catch (Exception e)
		{
			System.out.print(e);
		}
	}

}
