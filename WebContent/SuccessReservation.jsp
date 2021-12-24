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

    <title>Check Availability</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-style.css">
    
  </head>

<body class="is-preload">

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
                <%
                	if(session.getAttribute("id") != null) {
                %>
                	<a href="HomestayController?action=listallhomestay">Home</a>
                	<a href="CustomerController?action=viewCustomer&id=<%= session.getAttribute("id")%>">Profile</a>
                	<a href="ReservationController?action=listreservation&id=<%= session.getAttribute("id")%>">Reservation</a>
                	<a href="rumahinfo.jsp">Gallery</a>
                	<a href="about.jsp">About Us</a>
                	<a href="CustomerController?action=logout">Log Out</a>
                <%
               		 } else {
                %>
                	<a href="HomestayController?action=listallhomestay" >Home</a>
                	<a href="rumahinfo.jsp">Gallery</a>
                	<a href="about.jsp">About Us</a>
                	<a href="login.jsp?">Log In/Sign Up</a>
                <%
                }
                %>
              </div>
            </header>


            <section class="forms">
              <div align="center">
              <h2>Receipt</h2>
                </div>
            </section>
            
            <c:set var="paymentAmount" value="${priceFormatter.format(paid.paymentAmount)}" />
            <section class="main-banner">
              <div class="container-fluid">
              		<%-- <h2 align="center">Payment Gateway <c:out value="${onlinepaid.bankName}" /></h2> --%>
              		<h2 align="center">Payment Details</h2>
				    <table>
				    <tr>
				        <td colspan="3"><h4>Payment Receipt</h4><br/></td>
				    </tr>
				    <tr>
				        <td>Status</td>
				        <td>:</td>
				        <td><c:out value="${paid.status}" /></td>
				    </tr>
				    <tr>
				        <td>Payment Date</td>
				        <td>:</td>
				        <td><c:out value="${paid.payment_date}" /></td>
				    </tr>
				    <tr>
				        <td>Payment ID</td>
				        <td>:</td>
				        <td><c:out value="${paid.payment_id}" /></td>
				    </tr>
				    <tr>
				        <td>Payment Amount</td>
				        <td>:</td>
				        <td>RM <c:out value="${paymentAmount}" /></td>
				    </tr>
				    </table>
               </div>
            </section>
               
           </div></div></div>
    

    <!-- footer -->
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
