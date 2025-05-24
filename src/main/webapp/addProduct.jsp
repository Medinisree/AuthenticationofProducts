<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<form action="addProductController" method="post">
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
  <div>
                <table width="959" height="443" border="0">
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><table width="366" height="288" border="1" bgcolor="#F4C430" align="right">

            <tr>
              <td>Product ID</td>
              <td><input type="text" name="productId" required></td>
            </tr>
            <tr>
              <td>Product Name </td>
              <td><input type="text" name="pName" required></td>
            </tr>
            <tr>
              <td>Product Price</td>
              <td><input type="text" name="pPrice" required></td>
            </tr>
             <tr>
              <td>Manufacturing Details</td>
              <td><input type="text" name="mDetails" required></td>
            </tr>
             <tr>
              <td>Company Details</td>
              <td><input type="text" name="cDetails" required></td>
            </tr>
             <tr>
              <td>Upload Barcode</td>
             <td><input type="file" name="cbarCode" required></td>
            </tr>

            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="Submit" value="Submit">
              <input type="reset" name="Submit2" value="Reset"></td>
            </tr>
                  </table></td>
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
                <h1>&nbsp;</h1>
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
    </form>
</body>

</html>