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

    <title> Homestay Image</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-style.css">

  </head>

<body class="is-preload">
	<!-- Side nav -->
	<%
       if(session.getAttribute("staffid") != null) {
    %>
	<div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <%
        	if(session.getAttribute("managerid") != null) {
        %>
        <a href="StaffController?action=staffprofile&staffid=<%= session.getAttribute("staffid")%>">PROFILE</a>
        <button class="dropdown-btn">RESERVATION 
    	<i class="fa fa-caret-down"></i>
  		</button>
  		<div class="dropdown-container">
		    <a href="ReservationController?action=viewStatusPayment">REFUND</a>
  		</div>
  		<button class="dropdown-btn">BRANCH 
    	<i class="fa fa-caret-down"></i>
  		</button>
  		<div class="dropdown-container">
		    <a href="adminaddbranch.jsp">ADD BRANCH</a>
		    <a href="HomestayController?action=listHomestay">LIST BRANCH</a>
  		</div>
  		<button class="dropdown-btn">STAFF 
    	<i class="fa fa-caret-down"></i>
  		</button>
  		<div class="dropdown-container">
		    <a href="admincreatestaff.jsp">ADD STAFF</a>
		    <a href="StaffController?action=listStaff">LIST STAFF</a>
  		</div>
        <!-- <a href="adminsalereport.jsp">SALES REPORT</a> -->
  		<%
            } else {
        %>
  		<a href="StaffController?action=staffprofile&staffid=<%= session.getAttribute("staffid")%>">PROFILE</a>
        <button class="dropdown-btn">RESERVATION 
    	<i class="fa fa-caret-down"></i>
  		</button>
  		<div class="dropdown-container">
		    <a href="ReservationController?action=staffViewReservation">SCHEDULE</a>
		    <a href="ReservationController?action=viewStatusPayment">REFUND</a>
  		</div>
  		<button class="dropdown-btn">BRANCH 
    	<i class="fa fa-caret-down"></i>
  		</button>
  		<div class="dropdown-container">
		    <a href="adminaddbranch.jsp">ADD BRANCH</a>
		    <a href="HomestayController?action=listHomestay">LIST BRANCH</a>
  		</div>
         <%
           }
         %>
      </div>
      <%
         }
      %>
      
      <!-- Header -->
      <header id="header" style="margin-top: 0px;">
        <span style="font-size:36px;cursor:pointer; margin-left: 20px;margin-top: 25px;" onclick="openNav()">&#9776;</span>
        <div class="logo">
          <img src="assets/images/logo nurhomestay6.png">
        </div>
        <div class="kemana-kita">
          <a href="index.jsp">Log Out</a>
        </div>
      </header>

      <br><br>
      <section class="main-banner">
        <div class="container-fluid">
      		<div class="row">
      		  <div class="column">
                  </div>
        		<div class="column-1">
            <h2> Homestay Image</h2><br/><br/>
            
           <form name="addimage" action="HomeImgController?action=addimage" method="post"  id="addimage" enctype="multipart/form-data">
           <input type="hidden" name="imageId" value="<%= session.getAttribute("imageId")%>"/>
            <input name="homestayId" type="hidden" class="form-control" id="homestayId" placeholder="homestayId" value="<c:out value="${homestay.homestayId}" />">
            <table>
            	<tr>
                	 <td class="labelsize"><label>Homestay Name</label></td>
                	 <td class="double-dot">:</td>
                	 <td><input name="home_name" type="hidden" class="form-control" id="home_name" placeholder="home_name" value="<c:out value="${homestay.home_name}" />"><c:out value="${homestay.home_name}" /></td>
                </tr>
                <tr>
                    <td class="labelsize"><label>Add Image</label></td>
                    <td class="double-dot">:</td>
                    <td><input name="home_image" type="file" class="form-control" id="home_image" ></td>
                   
                </tr>
                <tr>
                	 <td><button type="submit" value="Submit">Add</button><td>
                </tr>
              </table>  
          </form>      
            <br><br>
      			 <input type="hidden" name="homestayImg" value="<%= session.getAttribute("homestayImg")%>"/>
                <table>
                	<tr>
        				<th>Image Id</th>
           				<th></th>
           			</tr>
        		  	<c:forEach items="${homestayImg}" var="homestayImg">
        	          <tr>
            			<td><a href="HomeImgController?action=viewimage&imageId=<c:out value="${homestayImg.imageId}" />"><c:out value="${homestayImg.imageId}" /></a></td>         
              			<td align="center"><a href="HomeImgController?action=deleteImage&imageId=<c:out value="${homestayImg.imageId}" />&homestayId=<c:out value="${homestayImg.homestayId}" />"><img class="useme" src="assets/images/trash-1.png"></a></td>	    
              		  </tr>
              		</c:forEach>
                </table>
			</div>
        </div>
      </div>
      </section>

      <div class="footer">
        Instagram<br><br>
        Facebook<br><br>
        <br><br><br>
        &#169; 2020 Pilot. All rights reserved
    </div>
      
      
 <script>
      function openNav() {
        document.getElementById("mySidenav").style.width = "250px";
      }
      
      function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
      }
      
      /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
      var dropdown = document.getElementsByClassName("dropdown-btn");
      var i;

      for (i = 0; i < dropdown.length; i++) {
        dropdown[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var dropdownContent = this.nextElementSibling;
        if (dropdownContent.style.display === "block") {
        dropdownContent.style.display = "none";
        } else {
        dropdownContent.style.display = "block";
        }
        });
      }
      </script>
  </body>

</html>