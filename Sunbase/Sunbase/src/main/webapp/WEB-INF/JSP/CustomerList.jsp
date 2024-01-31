<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer list</title>
<style type="text/css">
body {
	margin: 30px;
	display: flex;
	flex-direction: column;
	/* align-items: center; */
	/* justify-content: center; */
	height: 100vh;
	background-color: rgb(255, 255, 255);
}

h1 {
	transform: translateX(450px);
	margin-bottom: 50px;
	margin-top: 0px;
	font-size: 50px;
	color: rgb(0, 0, 0);
}

.list {
	display: flex;
	flex-direction: row;
	margin-bottom: 0px;
	/* align-items: center;  */
	/* justify-content: center;  */
}

button, select, input {
	height: 40px;
	width: 200px;
	margin: 2px;
	font-size: 18px;
	font-weight: bold;
	border-radius: 5px;
}

button {
	background-color: rgb(99, 176, 231);
}

button:hover {
	background-color: rgb(46, 157, 236);
}

.table {
	/* margin: 0px ; */
	
}

table {
	/* padding-left: 300px; */
	width: 95%;
	border-collapse: collapse;
	margin-top: 5px;
}

th, td {
	border-top: 3px solid rgb(0, 0, 0);
	border-bottom: 3px solid rgb(0, 0, 0);
	/* border: 2px solid #ddd; */
	padding: 8px;
	text-align: left;
}

th {
	background-color: #ffffff;
	color: rgb(0, 0, 0);
	font-size: 20px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}
</style>

</head>


<body>

	<div>
		<h1>Customer list</h1>
	</div>
	<div class="list">
		<form action="add" method="get">
			<button>Add Customer</button>
		</form>
		<!-- <input type="text" id="search-input" placeholder="Enter your search"> -->
		<form action="getAll" method="get">
			<select id="search-category" name="type">
				<option value="firstName">FirstName</option>
				<option value="city">City</option>
				<option value="email">Email</option>
				<option value="phone">Phone</option>
			</select> <input type="text" placeholder="Enter Key" name="key">
			<button id="search-button" type="submit">Search</button>
		</form>
	</div>

	<div class="table">
		<table>
			<thead>
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Address</th>
					<th>City</th>
					<th>State</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Action</th>
				</tr>

			</thead>
			<tbody>

				<c:forEach var="list" items="${List}">
					<tr>
						<td>${list.firstName}</td>
						<td>${list.lastName}</td>
						<td>${list.address}</td>
						<td>${list.city}</td>
						<td>${list.state}</td>
						<td>${list.email}</td>
						<td>${list.phone}</td>

						<form action="delete" method = "delete">
						<td><button type="submit" name="fName"
								value="${list.firstName}">delete</button></td>
							
						</form>
						
						<form action="add" method = "get">
							<td><button type="submit">edit</button></td>
						</form>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>