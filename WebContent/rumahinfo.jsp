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
    <link href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@300&display=swap" rel="stylesheet">

    <title>Homestay Information</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/homeimage.css">

	<script src="assets/js/homeimage.js"></script>

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
                <a href="index.jsp"><img src="assets/images/logo nurhomestay6.png"></a>
              </div>
              <div class="kemana-kita">
                <a href="index.jsp">Home</a>
                <a href="HomestayController?action=listallhomestay2">Gallery</a>
                <a href="about.jsp">About Us</a>
                <a href="login.jsp">Log In/Sign Up</a>
              </div>
            </header>

            <section class="forms">
              <div align="center">
              <h2>Homestay Information</h2>
              <p>Nur Homestay is a family business that prior our customer satisfaction for a vacation in Bandaraya Melaka. 
                      It is perfect for duo, or family vacation to create memories with a comfortable homestay to stay! 
                      Not only that, the homestay is near at Melaka's tourist attraction. You can come over anytime as long as the it is still open :)
                      </p>
                </div>
            </section>
            <br>

            <section class="main-banner">
                  <div class="container-fluid">
                    <div class="row">

                      
               <table>
                	<c:forEach items="${homestays}" var="home">
                	<tr>
                		<td>
		                	  <h4><c:out value="${home.home_name}" /></h4>
		                      <p><c:out value="${home.home_desc}" /></p>
		                      <p><c:out value="${home.home_address}" /></p>
		                      <p>RM<c:out value="${home.home_deposit}" />0 for booking deposit</p>
		                      <p>RM<c:out value="${home.home_price}" />0 for homestay's price per day </p>
		                      <p><a href="HomestayController?action=viewbranch2&homestayId=<c:out value="${home.homestayId}" />">View Homestay</a></p>
                		</td>
                	</tr>
                	</c:forEach>
                </table>
            </div>
           </div>
          </div>
             
          </div>
        </div>

    <div class="footer">
      Instagram<br><br>
      Facebook<br><br>
      <br><br>
      &#169; 2020 Pilot. All rights reserved
  	</div>

    <script type="text/javascript">
      function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
          tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
          tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
      }
    </script>
</body>


  </body>

</html>