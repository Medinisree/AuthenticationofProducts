<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blogin</title>

    <link rel="stylesheet" href="css/font.css">

    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
</head>

<body>

    <div class="container_full header_bg">
        <div class="fix container">
            <header id="header">
                <div class="left_logo">
                    <h1>Authentication of Product & Counterfeits Elimination</h1>
                </div>
                <nav>
                    <ul id="menu">
                        <li class="active"><a href="Home.jsp">Home</a></li>
                        <li><a href="addProduct.jsp">Add Product Details</a></li>
                        <li><a href="viewProduct.jsp">View Product Details</a></li>
                        <li><a href="Home.jsp">Logout</a></li>
                    </ul>
                    
                </nav>
            </header>
        </div>
    </div>
 <div class="left_logo">
 
 
 <table width="959" height="443" border="0">
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><table width="873" border="1" align="right">
												<tr>
   <th>Sl.No</th>
   <th>Product Id</th>
   <th>Product Name</th>
    <th>Price</th>
   <th>Manufacturer Details</th>
   <th>C Details</th>
   <th>Digital Qr Code Signature</th>
   
   
   
 </tr>

<%




String driver = "oracle.jdbc.driver.OracleDriver";
String connectionUrl = "jdbc:oracle:thin:@localhost:1521:xe";
String database = "OnlineProduct";
String userid = "system";
String password = "project";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
int i = 0;
%>
<%

try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();

String sql ="select * from add_Qr_Code_Data";
resultSet = statement.executeQuery(sql);


while(resultSet.next()){
	i++;
%>


<tr>
<td width="280"><%= i %></td>
<td width="280"><%=resultSet.getString("productId") %></td>
<td width="280"><%=resultSet.getString("pName") %></td>
<td width="280"><%=resultSet.getString("price") %></td>
<td width="280"><%=resultSet.getString("mDetails") %></td>
<td width="280"><%=resultSet.getString("cDetails") %></td>
<td width="280"><%=resultSet.getString("chainDatasignature") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
                    </td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
 
 


</div>
    
    </div>
        
       <div class="container_full">
        <div class="fix container">
            <footer id="footer">
                <h1>Online Product</h1>
                <p>&copy; 2014 Blogin.com - All Rights Reserved -
                    Find more free Templates at Pixelhint.com</p>

                <div class="social_icon">
                    <ul>
                        <li class="facebook"><a href=""></a></li>
                        <li class="twitter"><a href=""></a></li>
                        <li class="facebook"><a href=""></a></li>
                    </ul>
                </div>

            </footer>
        </div>
    </div>
    -
    <script src="js/main.js"></script>
</body>

</html>