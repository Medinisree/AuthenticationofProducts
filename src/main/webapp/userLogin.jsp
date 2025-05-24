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
<form action="registrationController" method="post">
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
                        <li><a href="admin.jsp">Admin Login</a></li>
                        <li><a href="userLogin.jsp">User Login</a></li>
                        <li><a href="userRegistration.jsp">New User SignUp</a></li>
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
                    <td><table width="381" height="244" border="1" align="right">
				 <tr>
              <td>User Login</td>
              <td></td>
            </tr>
            <tr>
              <td></td>
              <td></td>
            </tr>
                      <tr>
                        <td height="100">UserName</td>
                        <td><label>
                          <input type="text" name="userName" required>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="35">Password
                          </td>
                        <td><label>
                          <input type="password" name="userPassword" required>
                          </label>
                            <p>&nbsp;</p></td>
                      </tr>
                     <tr>
              <td></td>
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
</body>
</form>
</html>