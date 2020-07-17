
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

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
	$(document).ready(function() {
		$('.callLogin').live("click", function() {
			var id = $(this).attr('data-id');
			window.location = "showLog" + id;
		})
	});
</script>
<script src="https://kit.fontawesome.com/6e1478f4b2.js"
	crossorigin="anonymous"></script>


<title>user-dashboard</title>
</head>
<body>



	<!-- ****************** Start topic here ****************** -->
	<div class="container mt-5">

		<nav
			class="navbar navbar-dark bg-primary text-center navbar-expand-sm">
			<a href="#" class="navbar-brand font-weight-bolder">HDFC Bank
				Application</a>
			<button class="navbar-toggler" data-toggle="collapse"
				data-target="#simplenavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="simplenavbar">
				<ul class="navbar-nav">
					<li class="navbar-item px-3 active"><a href="#"
						class="navbar-link">Home</a></li>
					<li class="navbar-item px-3"><a href="#" class="navbar-link">About</a>
					</li>
					<li class="navbar-item px-3"><a href="#" class="navbar-link">Career</a>
					</li>
				</ul>
				<!-- Search bar -->


				<div class="ml-auto mb-0">
					<security:authorize access="isAuthenticated()">
   				  Hello  
   				 <security:authentication property="principal.username" />
					</security:authorize>
					<button onclick="window.location.href='logout'; return false;"
						type="submit"
						class="callLogin btn btn-success btn-sm font-weight-normal">Logout</button>


					<hr />


				</div>
		</nav>
	</div>



	<!-- ****************** Start topic here ****************** -->
	<div class="container">
		<div class="bg-light p-3 mt-3">
			<h5 class="pb-2">User Dashboard</h5>
			<p>Welcome User. Dashboard Design is coming soon....</p>
			<hr />







			<!-- Major Navigation Component of user DashBoard for - Bank Accounts -->





			<div class="card text-center">
				<div class="card-header">

					<ul class="nav nav-tabs nav nav-pills card-header-pills">

						<li><a class="nav-link " data-toggle="tab" href="#menu11">Saving
								Accounts</a></li>
						<li><a class="nav-link " data-toggle="tab" href="#menu22">Current
								Accounts</a></li>
					</ul>
				</div>

				<div class="tab-content bg-white">

					<div id="menu11" class="tab-pane card-body fade">

						<span class="text-primary">${ addcustomerresulmsg}</span> <input
							type="button" value="Add Customer"
							onclick="window.location.href='showFormForAdd'; return false;"
							id="addbutton" />



						<table id="customers" class="table table-striped table-borderd">
							<tr>
								<th>Sr. No.</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Mobile</th>
								<th>Action</th>
							</tr>

							<c:forEach var="tempCustomer" items="${usersProfilesList}">

								<c:url var="updateLink" value="/customer/showCustomerForm">
									<c:param name="customerId" value="${tempCustomer.id}"></c:param>
								</c:url>


								<c:url var="deleteLink" value="/customer/delete">
									<c:param name="customerId" value="${tempCustomer.id}"></c:param>
								</c:url>

								<tr>
									<td>${tempCustomer.id}</td>
									<td>${tempCustomer.firstName}</td>
									<td>${tempCustomer.lastName}</td>
									<td>${tempCustomer.email}</td>
									<td>${tempCustomer.mobile}</td>
									<td><a href="${updateLink}"> <i
											class="fas fa-user-edit px-10"></i>
									</a> | <a href="${deleteLink}"> <i class="fas fa-trash-alt"></i>
									</a></td>
								</tr>
							</c:forEach>

						</table>

					</div>
					<div id="menu22" class="tab-pane card-body fade">

						<h5 class="card-title">Current Account Details</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>

					</div>

				</div>


			</div>





			<!-- Major Navigation Component of user DashBoard for - Bank Cards -->





			<div class="card text-center mt-5">
				<div class="card-header">

					<ul class="nav nav-tabs nav nav-pills card-header-pills">

						<li><a class="nav-link " data-toggle="tab" href="#menu33">Credit
								Cards </a></li>
						<li><a class="nav-link " data-toggle="tab" href="#menu44">Debit
								Cards </a></li>
					</ul>
				</div>

				<div class="tab-content bg-white">

					<div id="menu33" class="tab-pane card-body fade">

						<span class="text-primary">${ addcustomerresulmsg}</span> <input
							type="button" value="Add Customer"
							onclick="window.location.href='showFormForAdd'; return false;"
							id="addbutton" />



						<table id="customers" class="table table-striped table-borderd">
							<tr>
								<th>Sr. No.</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Mobile</th>
								<th>Action</th>
							</tr>

							<c:forEach var="tempCustomer" items="${usersProfilesList2}">

								<c:url var="updateLink" value="/customer/showCustomerForm">
									<c:param name="customerId" value="${tempCustomer.id}"></c:param>
								</c:url>


								<c:url var="deleteLink" value="/customer/delete">
									<c:param name="customerId" value="${tempCustomer.id}"></c:param>
								</c:url>

								<tr>
									<td>${tempCustomer.id}</td>
									<td>${tempCustomer.firstName}</td>
									<td>${tempCustomer.lastName}</td>
									<td>${tempCustomer.email}</td>
									<td>${tempCustomer.mobile}</td>
									<td><a href="${updateLink}"> <i
											class="fas fa-user-edit px-10"></i>
									</a> | <a href="${deleteLink}"> <i class="fas fa-trash-alt"></i>
									</a></td>
								</tr>
							</c:forEach>

						</table>

					</div>
					<div id="menu44" class="tab-pane card-body fade">

						<h5 class="card-title">Current Account Details</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>

					</div>

				</div>


			</div>







			<!-- Major Navigation Component of user DashBoard for - Bank Loans -->





			<div class="card text-center mt-5">
				<div class="card-header">

					<ul class="nav nav-tabs nav nav-pills card-header-pills">

						<li><a class="nav-link " data-toggle="tab" href="#menu55">Personal
								Loan </a></li>
						<li><a class="nav-link " data-toggle="tab" href="#menu66">Home
								Loan </a></li>
						<li><a class="nav-link " data-toggle="tab" href="#menu77">Car
								Loan </a></li>
						<li><a class="nav-link " data-toggle="tab" href="#menu88">Educational
								Loan </a></li>

					</ul>
				</div>

				<div class="tab-content bg-white">

					<div id="menu55" class="tab-pane card-body fade">

						<span class="text-primary">${ addcustomerresulmsg}</span> <input
							type="button" value="Add Customer"
							onclick="window.location.href='showFormForAdd'; return false;"
							id="addbutton" />



						<table id="customers" class="table table-striped table-borderd">
							<tr>
								<th>Sr. No.</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Mobile</th>
								<th>Action</th>
							</tr>

							<c:forEach var="tempCustomer" items="${usersProfilesList}">

								<c:url var="updateLink" value="/customer/showCustomerForm">
									<c:param name="customerId" value="${tempCustomer.id}"></c:param>
								</c:url>


								<c:url var="deleteLink" value="/customer/delete">
									<c:param name="customerId" value="${tempCustomer.id}"></c:param>
								</c:url>

								<tr>
									<td>${tempCustomer.id}</td>
									<td>${tempCustomer.firstName}</td>
									<td>${tempCustomer.lastName}</td>
									<td>${tempCustomer.email}</td>
									<td>${tempCustomer.mobile}</td>
									<td><a href="${updateLink}"> <i
											class="fas fa-user-edit px-10"></i>
									</a> | <a href="${deleteLink}"> <i class="fas fa-trash-alt"></i>
									</a></td>
								</tr>
							</c:forEach>

						</table>

					</div>
					<div id="menu66" class="tab-pane card-body fade">

						<h5 class="card-title">Current Account Details</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>

					</div>

					<div id="menu77" class="tab-pane card-body fade">

						<h5 class="card-title">Current Account Details</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>

					</div>

					<div id="menu88" class="tab-pane card-body fade">

						<h5 class="card-title">Current Account Details</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>

					</div>

				</div>


			</div>





			<!-- Major Navigation Component of user DashBoard for - Bank Applications -->





			<div class="card text-center mt-5">
				<div class="card-header">

					<ul class="nav nav-tabs nav nav-pills card-header-pills">

						<li><a class="nav-link " data-toggle="tab"
							href="#AccountApplications">Account-Applications </a></li>
						<li><a class="nav-link " data-toggle="tab"
							href="#CreditCards-Applicaiton">CreditCards-Applicaiton </a></li>
						<li><a class="nav-link " data-toggle="tab"
							href="#Loan-Application">Loan-Application </a></li>
						<li><a class="nav-link " data-toggle="tab"
							href="#Other-Applications">Other-Applications </a></li>

					</ul>
				</div>

				<div class="tab-content bg-white">

					<div id="#AccountApplications" class="tab-pane card-body fade">

						<span class="text-primary">${ addcustomerresulmsg}</span> <input
							type="button" value="Add Customer"
							onclick="window.location.href='showFormForAdd'; return false;"
							id="addbutton" />



						<table id="customers" class="table table-striped table-borderd">
							<tr>
								<th>Sr. No.</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Mobile</th>
								<th>Action</th>
							</tr>

							<c:forEach var="tempCustomer" items="${usersProfilesList}">

								<c:url var="updateLink" value="/customer/showCustomerForm">
									<c:param name="customerId" value="${tempCustomer.id}"></c:param>
								</c:url>


								<c:url var="deleteLink" value="/customer/delete">
									<c:param name="customerId" value="${tempCustomer.id}"></c:param>
								</c:url>

								<tr>
									<td>${tempCustomer.id}</td>
									<td>${tempCustomer.firstName}</td>
									<td>${tempCustomer.lastName}</td>
									<td>${tempCustomer.email}</td>
									<td>${tempCustomer.mobile}</td>
									<td><a href="${updateLink}"> <i
											class="fas fa-user-edit px-10"></i>
									</a> | <a href="${deleteLink}"> <i class="fas fa-trash-alt"></i>
									</a></td>
								</tr>
							</c:forEach>

						</table>

					</div>
					<div id="#CreditCards-Applicaiton" class="tab-pane card-body fade">

						<h5 class="card-title">CreditCards-Applicaitons</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>

					</div>

					<div id="#Loan-Application" class="tab-pane card-body fade">

						<h5 class="card-title">Loan-Applicaitons</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>

					</div>

					<div id="#Other-Applications" class="tab-pane card-body fade">

						<h5 class="card-title">Other-Applications</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>

					</div>

				</div>


			</div>


































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
