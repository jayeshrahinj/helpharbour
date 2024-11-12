<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.Buddy"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Buddy - Hire a Buddy</title>
<link rel="stylesheet" href="style.css">
<!-- Include your main stylesheet -->
<style>
/* Additional styles for the buddy list */
.buddy-list {
	display: flex;
	flex-wrap: wrap;
	gap: 20px;
	padding: 20px;
	justify-content: center; /* Center the buddies horizontally */
}

.buddy-card {
	max-width: 400px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	overflow: hidden;
	margin-bottom: 20px;
}

.buddy-card img {
	width: 100%;
	height: 100px; /* Adjusted height for smaller images */
	object-fit: cover;
}

.buddy-details {
	padding: 18px;
	text-align: center; /* Center-align text */
}

.hire-button {
	background-color: #5E362F;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.hire-button:hover {
	background-color: #3D2022; /* Darker color on hover */
}

.logo {
	font-size: 50px;
	font-family: 'Georgia', serif; /* Changed to Georgia font */
}

header {
	background-color: #3D2022;
	color: white;
	padding: 10px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.profile-btn-container {
	text-align: center;
}

.profile-btn {
	display: inline-block;
	width: 60px; /* Adjust the width as needed */
	height: 60px; /* Adjust the height as needed */
	border-radius: 50%; /* Create a circular shape */
	overflow: hidden; /* Ensure the image doesn't overflow the circle */
}

table {
	border-collapse: collapse;
	width: 100%;
	margin-top: 20px;
}

th, td {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 4px;
}

th {
	
}

.profile-btn img {
	width: 100%; /* Make sure the image covers the entire button */
	height: auto; /* Maintain the aspect ratio of the image */
	border-radius: 50%;
}

.slogan {
	font-size: 14px;
	color: #ffd645;
	margin-left: 10px;
	font-weight: bold;
}
</style>
</head>

<body>
	<header>
		<%
		String email = (String) session.getAttribute("email");
		%>
		<div class="logo">
			HelpHarbor<span class="slogan">Get More Done, Stress Less -
				Always Ready to Assist</span>
		</div>
		<nav>
			<ul>
				<li><a href="home.jsp">Home</a></li>
				<li><a href="hire.jsp">Hire Buddy</a></li>
				<li><a href="about.jsp">About Us</a></li>
			</ul>
		</nav>
		<div class="profile-btn-container">
			<a href="/showprofile" class="profile-btn"> <img src="pro.jpg"
				alt="Profile Image">
			</a>
			<p style="font-size: 10px;">
				<%=email%></p>
		</div>
	</header>

	<main>
		<h2>Hire a Buddy</h2>
		<div class="buddy-list">
			<%
			List<Buddy> buddyList = (List<Buddy>) request.getAttribute("buddyList");

			if (buddyList != null && !buddyList.isEmpty()) {
				for (Buddy buddy : buddyList) {
			%>
			<form action="confirm" method="post">
				<div class="buddy-card">
					<div class="buddy-details">
						<div class="profile-btn">
							<img src="buddy.png" alt="Profile Image">
						</div>
						<table>
							<tr>
								<th>Name</th>
								<td><%=buddy.getFullName()%></td>

							</tr>
							<tr>
								<th>Email</th>
								<td><%=buddy.getEmail()%></td>
							</tr>
							<tr>
								<th>Phone</th>
								<td><%=buddy.getPhone()%></td>
							</tr>
							<tr>
								<th>Address</th>
								<td><%=buddy.getAddress()%></td>
							</tr>
							<tr>
								<th>Age</th>
								<td><%=buddy.getAge()%></td>
							</tr>
							<tr>
								<th>Gender</th>
								<td><%=buddy.getGender()%></td>
							</tr>
							<tr>
								<th>Work Experience</th>
								<td><%=buddy.getWorkExperience()%></td>
							</tr>
						</table>
						<input type="hidden" name="buddyId" value="<%=buddy.getId()%>">
						<input type="hidden" name="buddyName" value="<%=buddy.getFullName()%>"> 
						<input type="hidden" name="buddyEmail" value="<%=buddy.getEmail()%>"> 
						<input	type="hidden" name="buddyAddress" value="<%=buddy.getAddress()%>">
						<input type="hidden" name="buddyAge" value="<%=buddy.getAge()%>">
						<input type="hidden" name="buddyGender" value="<%=buddy.getGender()%>"> 
						<input type="hidden" name="buddyWork" value="<%=buddy.getWorkExperience()%>">
						<input type="hidden" name="buddyPhone" value="<%=buddy.getPhone()%>">

						<button class="hire-button">Hire</button>
					</div>
				</div>
			</form>
			<%
			}
			} else {
			%>
			<p>No buddies found.</p>
			<%
			}
			%>
		</div>
	</main>

	<footer>
		<!-- Your footer content here -->
	</footer>
</body>

</html>
