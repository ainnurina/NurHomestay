<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-style.css">

  </head>

<body class="is-preload">
  <c:choose>
	<c:when test="${fail == 'failure'}" >
	  <script>
          alert("Username or Password incorrect");
      </script>
	</c:when>
</c:choose>
    <!-- Wrapper -->
    <div id="wrapper">

      <!-- Main -->
        <div id="main">
          <div class="inner">

            <!-- Header -->
            <header id="header">
              <div class="logo">
                <a href="index.jsp"><img src="assets/images/logo nurhomestay6.png" width="280"></a>
              </div>
              <div class="kemana-kita">
                <a href="HomestayController?action=listallhomestay" >Home</a>
                <a href="rumahinfo.jsp">Gallery</a>
                <a href="about.jsp">About Us</a>
                <a href="login.jsp?">Log In/Sign Up</a>
              </div>
            </header>
            <section class="forms">
            
              <div align="center">
              <h2>Login</h2>
              <p>Please fill in your credentials to login.</p>
              </div>
              <div align="center" style="margin-bottom: 12px; border:1px">
              
                <form action="CustomerController?action=login" name="login" method="post">
                
                  <div class="col-md-6">
                      <label>Username</label>
                      <input type="text" name="username" id="username" class="form-control" required>
                      <span class="help-block"></span>
                  </div>
                  <div class="col-md-6">
                      <label>Password </label>
                      <input type="password" name="password" id="password" class="form-control" required>
                  </div>
                  <input type="hidden" name="checkindate" value="<c:out value="${checkindate}" />">
                  <input type="hidden" name="checkoutdate" value="<c:out value="${checkoutdate}" />">
                  <div class="col-md-6">
                          <button type="submit" id="form-submit" class="button">Login</button>
                        </div>
                </form>
              </div> 
              <div align="center">
                <a href="signup.jsp">Sign up now</a><br>
                <a href="stafflogin.jsp">Staff?</a>
              </div>
            </section>
          </div>
        </div>
    </div>

  <div class="footer">
      Instagram<br><br>
      Facebook<br><br>
      <br><br><br>
      &#169; 2020 Pilot. All rights reserved
  </div>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/transition.js"></script>
    <script src="assets/js/custom.js"></script>
</body>

</html>
