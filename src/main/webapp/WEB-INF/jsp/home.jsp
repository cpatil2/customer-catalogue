
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />


<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css"
	rel="stylesheet">
	
	<script>
	$(document).ready(function(){
	    $('.callLogin').live("click",function () {
	        var id = $(this).attr('data-id');
	        window.location = "showLog" + id;
	    })
	});
	</script>


<title>customer-signup</title>
</head>
<body>



	 <!-- ****************** Start topic here ****************** -->
    <div class="container mt-5">
  
      <nav class="navbar navbar-dark bg-primary text-center navbar-expand-sm"> 
        <a href="#" class="navbar-brand font-weight-bolder">HDFC Bank Application</a>
        <button
          class="navbar-toggler"
          data-toggle="collapse"
          data-target="#simplenavbar"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="simplenavbar">
          <ul class="navbar-nav">
            <li class="navbar-item px-3 active">
              <a href="#" class="navbar-link">Home</a>
            </li>
            <li class="navbar-item px-3">
              <a href="#" class="navbar-link">About</a>
            </li>
            <li class="navbar-item px-3">
              <a href="#" class="navbar-link">Career</a>
            </li>
          </ul>
          <!-- Search bar -->
          <div class="ml-auto mb-0">
            <button onclick="window.location.href='showUserLoginForm'; return false;" type="submit" class="callLogin btn btn-success btn-sm font-weight-normal">Login</button>
            <button onclick="window.location.href='showUserSignupForm'; return false;" type="reset" class="btn btn-warning btn-sm">SignUp</button>
           
          </button>
        </div>
      </nav>
    </div>
    
    
  
	<!-- ****************** Start topic here ****************** -->
	<div class="container">
		<div class="bg-light p-3 mt-3">
			<h3 class="pb-2">Welcome</h3>
			<p>Welcome to Customer-Catalogue Home Page. Design is coming soon....</p>
			<hr />

			
		</div>
	</div>

	<!-- ****************** End topic here ****************** -->

	<!-- Bootstrap Connections -->

	<!-- JQuery -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

</body>
</html>
