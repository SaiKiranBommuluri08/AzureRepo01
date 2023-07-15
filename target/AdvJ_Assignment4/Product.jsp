<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false" errorPage="Error.jsp"%>
   
<%@ page import="java.util.*"%>
<%@ page import="com.entities.Tshirt" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <!-- Bootstrap CSS -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<title>Tshirts</title>
</head>
<style>
    body{
        background-color: #cff4f4;
    }
    .btn{
	transition: all .5s ease;
	border-radius: 30px;
	color:#008080;
	font-weight: 600;
	background-color: #fff;
	border: 1px solid #008080;
    margin-left: 5%;
}
.btn:hover, .btn:focus{
	background-color: #008080;
	color:#fff;
}
.scrollable{
      margin-bottom:5%;
      margin-top:5%;
}


</style>

<body>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

response.setHeader("Pragma", "no-cache");

response.setHeader("Expires","0");

if(session.getAttribute("username")==null){
	response.sendRedirect("Login.jsp");
	return;
}

%>
<!-- header -->

</head>
<body>
        
         <a href="Search.jsp" class="container" ><i class='far fa-arrow-alt-circle-left'></i></a> 
              
         <form action="Logout" class="container">
          <label class="col-9" style="text-align: center;font-size: 35px; font-weight: 500;">RESULT</label><label class="col-3" style="font-weight: 500;color: #008080; font-size: 20px; padding-left: 10%;"> HI ${username}
             <input type="submit"  value="Logout"  class="btn" ></label>
        </form>
       

        
<!-- end header -->
 <c:if test="${searchResult.size() != 0}">
<div class="col-12 scrollable">

 <table class="table table-bordered table-hover table-responsive  " >
  <thead class="table-dark">
    <tr>
      <th scope="col" class="col-2 text-center">ID</th>
      <th scope="col" class="col-3 text-center">NAME</th>
      <th scope="col" class="col-1 text-center">COLOR</th>
      <th scope="col" class="col-1 text-center">GENDER</th>
      <th scope="col" class="col-1 text-center">SIZE</th>
      <th scope="col" class="col-1 text-center">PRICE</th>
      <th scope="col" class="col-1 text-center">RATING</th>
      <th scope="col" class="col-1 text-center">AVAILABILITY</th>
    </tr>
  </thead>
  <tbody class="table-light">
 
  	<c:forEach items = "${searchResult}" var = "Tshirt">
				<tr >
  					<td class="col-2 text-center">${Tshirt.getID()}</td>
  					<td class="col-3 text-center">${Tshirt.getName()}</td>
  					<td class="col-1 text-center">${Tshirt.getColor()}</td>
  					<td class="col-1 text-center">${Tshirt.getGenderRecom()}</td>
  					<td class="col-1 text-center">${Tshirt.getSize()}</td>
  					<td class="col-1 text-center">${Tshirt.getPrice()}</td>
  					<td class="col-1 text-center">${Tshirt.getRating()}</td>
  					<td class="col-1 text-center">${Tshirt.getAvailability()}</td>
				</tr>
  			</c:forEach>
  </tbody>
</table>
</div>
	</c:if>
		<c:if test="${searchResult.size() == 0}">
			
			<div>
			
				<h1 class="text-center mt-5 col-11">
					Sorry! No matching Tshirts found!
				</h1>
			
		</div>
	</c:if>

</body>
</html>