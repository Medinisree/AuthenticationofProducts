

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registrationController
 */
@WebServlet("/registrationController")
public class registrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registrationController() {
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
		String fname =   request.getParameter("fname").toString();
		String lname =   request.getParameter("lname").toString();
	    String userName =   request.getParameter("userName").toString();
	    String passwordtext =   request.getParameter("password").toString();
	    String age =   request.getParameter("age").toString();
	    String gender =   request.getParameter("gender").toString();
	    String mail =   request.getParameter("mail").toString();
	    String mobileNo =   request.getParameter("mobileNo").toString();
	  
	    String driver = "oracle.jdbc.driver.OracleDriver";
	    String connectionUrl = "jdbc:oracle:thin:@localhost:1521:xe";
	    String database = "OnlineProduct";
	    String userid = "system";
	    String password = "project";
	    try
	    {
	    	Class.forName(driver);
	    	Connection conn = DriverManager.getConnection(connectionUrl, userid, password);

	    	Statement st = conn.createStatement();
	    	
	    	st.executeUpdate("INSERT INTO UserRegistration (fname,lname,lginname,pwd,age,gender,mail,mobileNo)"
	    		    +"VALUES ('"+fname+"','"+lname+"','"+userName+"','"+passwordtext+"','"+age+"','"+gender+"','"+mail+"','"+mobileNo+"')");
	    		System.out.println("Insert Success");
	    		
	    		response.sendRedirect(".jsp");
	    }
	    catch(Exception ex)
	    {
	    	System.out.println(ex);
	    }
	}

}
