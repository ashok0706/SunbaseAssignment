<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

button, select {
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
		<select id="search-category">
			<option value="firstName">FirstName</option>
			<option value="city">City</option>
			<option value="email">Email</option>
			<option value="phone">Phone</option>
		</select>
		<button id="search-button">Search</button>
	</div>

	<div class="table">
		<table>
			<thead>
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Address</th>
					<th>City</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Action</th>
				</tr>

			</thead>
			<tbody>
				<c:forEach var="list" items="${list}">
					<tr>
						<td>${list.firstName}</td>
						<td>${list.lastName}</td>

						<td>${list.address}</td>
						<td>${list.city}</td>
						<td>${list.state}</td>
						<td>${list.email}</td>
						<td>${list.phone}</td>
						<td><button  width = 50px >delete</button></td>
						<td><button width = 50px>edit</button></td>
					</tr>
			</tbody>
		</table>
	</div>

</body>
</html>