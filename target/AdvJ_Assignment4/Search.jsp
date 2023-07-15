<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false" errorPage="Error.jsp" %>
	<%@page import="javax.servlet.http.HttpSession"%>

	<%@page import="java.util.*" %>
	<%@page import="java.io.*" %>
	<%@page import="java.sql.*" %>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <!-- Bootstrap CSS -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<title>Search</title>
</head>
<style>
    body{
         background-image: url('https://www.teahub.io/photos/full/93-938757_75-web-website-background-color.jpg');
  		 background-repeat: no-repeat;
  	     background-attachment: fixed; 
 		 background-size: 100% 100%;
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
    height: 480px;
      overflow-y: scroll;
      overflow-x: hidden;
      margin-bottom:5%;
      margin-left:3%;
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
        <div class="header">
        
         <form action="Logout" class="col-12">
            <label class="col-9" style="text-align: center;font-size: 35px; font-weight: 500; padding-left:15%;">Search T-Shirts</label><label class="col-3" style="font-weight: 500;color: #008080; font-size: 20px; padding-left: 10%;"> Hi ${username}
             <input type="submit"  value="Logout"  class="btn" ></label>
        </form>

           
        </div>
<!-- end header -->

<!-- enter new data -->
<div class="col-12 left-signup mx-5 p-5" >
    <form action="Product" method="post" style="margin-left:13%; margin-top:7%;" >
      <div class="col-sm-10 mt-5 px-5 pt-3 ">
        <div class="row">
       <b>   <label class="Labels col-3" for="color">Color</label>
          <input class="col-6" id="color" name="COLOR" type="text" placeholder="Enter Color" required>
        </div></b>
      </div>
      <div class="col-sm-10 mt-4 px-5 pt-3">
        <div class="row">
         <b> <label class="Labels col-3" for="Size">Size</label>
          <input class="form-check-input col-1" type="radio" name="SIZE" id="S" value="S" checked>
			  <label class="form-check-label col-1" for="S">
			    S
			  </label>
		 <input class="form-check-input col-1 " type="radio" name="SIZE" id="M" value="M" >
			  <label class="form-check-label col-1" for="M">
			    M
			  </label>
		<input class="form-check-input col-1" type="radio" name="SIZE" id="L" value="L" >
			  <label class="form-check-label col-1" for="L">
			    L
			  </label>
		<input class="form-check-input col-1" type="radio" name="SIZE" id="XL" value="XL" >
			  <label class="form-check-label col-1" for="XL">
			    XL
			  </label>
		<input class="form-check-input col-1" type="radio" name="SIZE" id="XXL" value="XXL">
			  <label class="form-check-label col-1" for="XXL">
			    XXL
			  </label></b>
          <span class="col-4"></span>
          <span id="email-verify" class="col-8"></span>
        </div>
      </div>
      <div class="col-sm-10 mt-4 px-5 pt-3">
        <div class="row">
        <b>  <label class="Labels col-3" for="size">Gender</label>
           <input class="form-check-input col-1" type="radio" name="GENDER" id="M" value="M" checked>
			  <label class="form-check-label col-1" for="M">
			    Male
			  </label>
		 <input class="form-check-input col-1" type="radio" name="GENDER" id="F" value="F" >
			  <label class="form-check-label col-1" for="F">
			    Female
			  </label>
		<input class="form-check-input col-1" type="radio" name="GENDER" id="U" value="U">
			  <label class="form-check-label col-1" for="U">
			    Unisex
			  </label></b>
			  </div>
      </div>
      <div class="col-sm-10 mt-4 px-5 pt-3">
        <div class="row">
        <b>  <label class="Labels col-3" for="image">Output Preference</label>
             <input class="form-check-input col-1" type="radio" name="OUTPUTPREFERENCE" id="1" value="1" checked>
			  <label class="form-check-label col-1" for="1">
			    PRICE
			  </label>
		 <input class="form-check-input col-1" type="radio" name="OUTPUTPREFERENCE" id="2" value="2">
			  <label class="form-check-label col-1" for="2">
			    RATING
			  </label>
		<input class="form-check-input col-1" type="radio" name="OUTPUTPREFERENCE" id="3" value="3">
			  <label class="form-check-label col-2" for="3">
			    BY BOTH
			  </label></b>
        </div>
      </div>
       
      <div class="px-5">
        <div class="row px-5 mt-5 mx-5">
          <button type="submit" id="submit-btn" 
            class="my-5 mx-2 col-xs-11 col-sm-10 col-md-8 col-lg-6 btn btn-primary btn-lg">Search</button>
          

        </div>
      </div>


    </form>

  </div>
 
  

</body>

</html>