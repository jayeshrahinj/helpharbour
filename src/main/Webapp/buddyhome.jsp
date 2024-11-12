<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.example.demo.Task"%>
<%@ page import="java.util.List"%>
<html>
<head>
<meta charset="UTF-8">
<title>Buddy Dashboard</title>
<style>
nav {
	background-color:;
	overflow: hidden;
}

nav a {
	float: left;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

nav a:hover {
	background-color: #ffd645;
	color: black;
}

.tab-content {
	display: none;
	padding: 20px;
}

.tab-content.active {
	display: block;
}

ul {
	list-style-type: none;
	padding: 0;
}

li {
	margin-bottom: 10px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 10px;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

.profile-btn img {
	width: 100%; /* Make sure the image covers the entire button */
	height: auto; /* Maintain the aspect ratio of the image */
	border-radius: 50%;
}

.slogan {
	font-size: 14px; /* Adjust the font size as needed */
	color: #ffd645;
	/* An attractive color, you can change this based on your preference */
	margin-left: 10px; /* Add margin for spacing */
	font-weight: bold; /* Make the slogan bold for emphasis */
}

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
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

.logo {
	font-size: 50px;
	font-family: 'Georgia', serif; /* Changed to Georgia font */
}

.profile-btn {
	display: inline-block;
	width: 60px; /* Adjust the width as needed */
	height: 60px; /* Adjust the height as needed */
	border-radius: 50%; /* Create a circular shape */
	overflow: hidden; /* Ensure the image doesn't overflow the circle */
}

button-link {
	display: inline-block;
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	text-decoration: none;
	border-radius: 5px;
	cursor: pointer;
}

.button-link:hover {
	background-color: #45a049;
}

.task-box {
	background-color: #ffd645;
	padding: 20px;
	margin-top: 20px;
	border-radius: 8px;
}
   
    #noTaskContainer {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; /* Optional: Set the height of the container to 100% of the viewport height */
    }
 .no-task-message {
            font-weight: bold;
            font-size: medium;
        }
       
.task-details {
	margin-bottom: 10px;
}

.action-buttons button {
	margin-right: 10px;
}
</style>
<meta http-equiv="refresh" content="3;URL=/buddyhome.jsp">
</head>
<body>
	<header>
		<%
		String email = (String) session.getAttribute("bemail");
		%>
		<div class="logo">
			HelpHarbor <span class="slogan">Get More Done, Stress Less -
				Always Ready to Assist</span>
		</div>
		<nav>
			<a href="buddyhome.jsp">Available Task</a>
			<!--  <a href="#Chat">Chat with Users</a>
    -->
			<a href="TaskHistory">Task History</a> <a href="Earnings.jsp">Earnings</a>
		</nav>

		<div class="profile-btn-container">
			<a href="/showprofile" class="profile-btn"> <img src="pro.jpg"
				alt="Profile Image">
			</a>
			<p style="font-size: 10px;">
				<%=email%></p>
		</div>
	</header>
	<div id="Notifications" class="tab-content active">

		<%
		List<Task> tasklist = (List<Task>) session.getAttribute("tasklist");

		for (Task task : tasklist) {

			if (task.getStatus().equalsIgnoreCase("waiting")) {
		%>
		<!-- Task Box -->
		<h2>Available Task</h2>
		<div class="task-box">
			<div class="task-details">
				<h3>Task Category</h3>
				<p><%=task.getTaskcategory()%></p>
				<h3>Task Description</h3>
				<p><%=task.getDescription()%></p>
				<h3>Task Price</h3>
				<p><%=task.getPrice()%></p>

			</div>

			<%--   <input type="hidden" name="taskId" value="<%=task.getId()%>"> --%>
			<!-- Action Buttons -->
			<div class="action-buttons">
				<form action="/accept" method="post">
					<input type="hidden" name="taskId" value="<%=task.getId()%>">
					<button type="submit"
						style="background-color: #4CAF50; color: white;">Accept</button>
				</form>
				<form id="rejectForm" action="/reject" method="post" target="rejectIframe">
    <input type="hidden" name="taskId" value="<%=task.getId()%>">
    <button type="submit" style="background-color: #FF0000; color: white;">Reject</button>
</form>
				<form action="/negotiate" method="post">
					<input type="hidden" name="taskId" value="<%=task.getId()%>">
					<button style="background-color: #FFD700; color: black;">Negotiate</button>
				</form>


			</div>
		</div>
	</div>
	<%
	}  else {
	    %>
	    <!-- Loading spinner while simulating a 3-second delay -->
	  <div class="no-task-container" id="noTaskContainer">
    <div class="no-task-message">Sorry! No Task Available</div>
</div>
	  	    <%
	        }}
	    %>
</body>
</html>
