

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addProductController
 */
@WebServlet("/addProductController")
public class addProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addProductController() {
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
		String productId =   request.getParameter("productId").toString();
		String pName =   request.getParameter("pName").toString();
	    String price =   request.getParameter("pPrice").toString();
	    String mDetails =   request.getParameter("mDetails").toString();
	    String cDetails =   request.getParameter("cDetails").toString();
	    
	    
	    Blockchain blockchain = new Blockchain(4);
        blockchain.addBlock("First block");
        blockchain.addBlock("Second block");
        blockchain.addBlock("Third block");

        System.out.println("\nBlockchain valid: " + blockchain.isChainValid());

        System.out.println("\nThe block chain is: ");
        ArrayList<String> obj = blockchain.printChain();
	  
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
	    	
	    	st.executeUpdate("INSERT INTO add_Qr_Code_Data (productId,pName,price,mDetails,cDetails,chainDatasignature)"
	    		    +"VALUES ('"+productId+"','"+pName+"','"+price+"','"+mDetails+"','"+cDetails+"','"+obj.toString()+"')");
	    		System.out.println("Insert Success");
	    		
	    		response.sendRedirect("viewProduct.jsp");
	    }
	    catch(Exception ex)
	    {
	    	System.out.println(ex);
	    }
	
	}

}
