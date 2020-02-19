package fuzzy;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Decoder.BASE64Encoder;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		PrintWriter out = response.getWriter();
				
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String pass = request.getParameter("password");
				int user = Integer.parseInt( request.getParameter("user"));
				
				UUID u=UUID.randomUUID();
				String pk=u.toString();
				String sp=pass+pk;
				String ep=new BASE64Encoder().encode(sp.getBytes());
				
				try {
		
				
					String s = "insert into login(EMAIL,UKEY,ENC_PASS,USRTYPE) values(?,?,?,?)";
					PreparedStatement ps=jdbcc.getPre(s);
					
					ps.setString(1, email);
					ps.setString(2, pk);
					ps.setString(3, ep);
					ps.setInt(4, user);
					int i=ps.executeUpdate();
					
					String r = "select LOG_ID from login where EMAIL = ?";
					PreparedStatement ss = jdbcc.getPre(r);
					ss.setString(1, email);
					ResultSet rs = ss.executeQuery();
					
					int logid=0;
				
					while (rs.next())
					{
						logid = rs.getInt(1);
					}
					System.out.println("log id"+logid);

					String nm = "insert into register(UNAME, LOG_IDR) values(?,?)";
					PreparedStatement pst = jdbcc.getPre(nm);
					
					pst.setString(1,name);
					pst.setInt(2, logid );
					int k=pst.executeUpdate();

					if(i>0  ) {
			        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");                
			        rd.forward(request, response);  
				}}
				catch (Exception e2 ) {
					System.out.println(e2);
				}
				
				out.close();
				
	}

}
