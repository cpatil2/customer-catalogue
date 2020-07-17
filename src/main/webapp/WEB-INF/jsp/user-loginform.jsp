
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


<title>customer-login</title>
</head>
<body>
	<nav class="navbar-dark bg-primary text-center">
		<a href="#" class="navbar-brand ">HDFC Bank Application</a>
	</nav>

	<!-- ****************** Start topic here ****************** -->
	<div class="container">
		<div class="bg-light p-3 mt-3">
			<h3 class="pb-2">LogIn</h3>
			<p>Please enter your login credentials.</p>
			<p>${invalid}</p>
			<p>${success}</p>
			<hr />

			<%-- <form method="POST" action="/showUserLoginForm" class="form-signin">
				<h2 class="form-heading">Log in</h2>

				<div class="form-group ">
					<span></span> <input name="username" type="text"
						class="form-control" placeholder="Username" autofocus="true" /> <input
						name="password" type="password" class="form-control"
						placeholder="Password" /> <span></span>

					<button class="btn btn-lg btn-primary btn-block" type="submit">Log
						In</button>
				</div>

			</form> --%>



			<!-- modelAttribute="usercrentialdto" -->
			<form action="/showUserLoginForm" method="POST">
				<div class="form-group">
					<label for="" class="form-label">User Name</label> <input
						type="text" class="form-control" placeholder="Enter username"
						name="username" />
				</div>
				<div class="form-group">
					<label for="" class="form-label">Password</label> <input
						type="password" class="form-control" placeholder="Enter password"
						name="password" />
				</div>





				
				<button type="submit" class="btn btn-success">LogIn</button>
				<button type="reset" class="btn btn-warning">Reset</button>
				<button
					onclick="window.location.href='showUserSignupForm'; return false;"
					class="btn btn-danger">Signup</button>
				<!-- </div> -->
			</form>
			
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
