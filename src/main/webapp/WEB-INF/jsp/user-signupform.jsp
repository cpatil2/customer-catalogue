
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


<title>customer-signup</title>
</head>
<body>
	<nav class="navbar-dark bg-primary text-center">
		<a href="#" class="navbar-brand ">HDFC Bank Application</a>
	</nav>

	<!-- ****************** Start topic here ****************** -->
	<div class="container">
		<div class="bg-light p-3 mt-3">
			<h3 class="pb-2">SignUp</h3>
			<p>Please fill in this form to create an account.</p>
			<hr />

			<form:form action="registerUser" modelAttribute="usersignupdto" method="POST">
				<form:hidden path="id" />


				<div class="form-group">
					<label for="" class="form-label">First Name</label>
					<form:input type="text" class="form-control"
						placeholder="Enter your name"  path="firstName" />
				</div>
				<div class="form-group">
					<label for="" class="form-label">Last Name</label>
					<form:input type="text" class="form-control"
						placeholder="Enter your name"  path="lastName" />
				</div>
				<div class="form-group">
					<label for="" class="form-label">Password</label>
					<form:input type="text" class="form-control"
						placeholder="Enter email" path="password" />
					<small id="emailHelp" class="form-text text-muted">Password instructions will appear here</small>
				</div>
				<div class="form-group">
					<label for="" class="form-label">Email</label>
					<form:input type="text" class="form-control"
						placeholder="Enter email" path="email" />
					<small id="emailHelp" class="form-text text-muted">We'll
						never share your email with anyone else.</small>
				</div>

				<div class="form-group">
					<label for="" class="form-label">Mobile Number</label>
					<form:input type="text" class="form-control"
						placeholder="Enter mobile number" path="mobile" />
					<small id="emailHelp" class="form-text text-muted">We'll
						never share your mobile number with anyone else.</small>
				</div>


				<%-- <div class="form-group mb-5">
					<label for="">Select your city of residence</label>
					<form:select path="city" class="form-control"
						id="exampleFormControlSelect1">
						<form:option value="Pune">Pune</form:option>
						<form:option value="Banglore">Banglore</form:option>
						<form:option value="Mumbai">Mumbai</form:option>
						<form:option value="Hyderabad">Hyderabad</form:option>
					</form:select>
				</div>
				

				<div class="form-group">
					<label for="">Upload your passport photo</label> <input
						class="form-control-file" type="file" name="" id="" />
				</div>

				<div class="form-group">
					<label for="">Upload your Aadhar card</label> <input
						class="form-control-file" type="file" name="" id="" />
				</div> --%>
				
				



				<div>
					<p>
						By creating an account you agree to our <a href="#" class="">Terms
							& Privacy</a> .
					</p>
				</div>




				<!-- <div class="btn btn-group btn-block btn-outline-secondary"> -->
				<button type="submit" class="btn btn-success">Submit</button>
				<button type="reset" class="btn btn-warning">Reset</button>
				<button onclick="window.location.href='showUserLoginForm'; return false;" class="btn btn-danger">Cancel</button>
				<!-- </div> -->
			</form:form>
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
