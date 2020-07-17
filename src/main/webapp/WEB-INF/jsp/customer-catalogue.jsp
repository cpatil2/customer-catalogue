
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Catalogue</title>

<!-- CSS Links -->
<!-- <link type="text/css" rel="stylesheet"
	href="src/main/resources/static/css/bootstrap.css " />
<link type="text/css" rel="stylesheet"
	href="src/main/resources/static/css/mdb.css " />
<link type="text/css" rel="stylesheet"
	href="src/main/resources/static/css/style.css " /> -->

<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css"
	rel="stylesheet">



<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->

<script src="https://kit.fontawesome.com/6e1478f4b2.js"
	crossorigin="anonymous"></script>
</head>
<body>

	<div id="wrapper">
		<div id=header">Customer List</div>
	</div>



	<div id=container">
		<div id="content">
			 
			 <span class="text-primary">${ addcustomerresulmsg}</span>
			
			 <input
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
	</div>

	<!-- Bootstrap Connections -->

	<!-- <script
		src="src/main/resources/static/js/jquery.js"></script>
	<script
		src="src/main/resources/static/js/popper.js"></script>
	<script
		src="src/main/resources/static/js/bootstrap.js"></script>
	<script
		src="src/main/resources/static/js/mdb.js"></script> -->

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