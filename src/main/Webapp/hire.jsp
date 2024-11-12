<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Buddy - Hire a Buddy</title>
<style>
/* Add your CSS styles here */
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

h2 {
	color: #5E362F;
}

form {
	max-width: 400px;
	margin: 20px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 8px;
}

select, input {
	width: 100%;
	padding: 10px;
	margin-bottom: 16px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

button {
	background-color: #5E362F;
	color: #fff;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #3D2022;
}

header {
	background-color: #3D2022;
	color: white;
	padding: 10px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

footer {
	background-color: #3D2022;
	color: #2C3227;
	padding: 20px;
}

/* Contact form styling */
.contact-form {
	max-width: 400px;
	margin: 0 auto;
	background-color: #ffd645; /* Deep Purple */
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 8px;
}

input, textarea {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
}

button {
	background-color: #ff4577; /* Rich Pink */
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #555; /* Dark Gray */
}

.logo {
	font-size: 50px;
	font-family: 'Georgia', serif; /* Changed to Georgia font */
}

nav ul {
	list-style-type: none;
	display: flex;
}

nav ul li {
	margin-right: 20px;
}

nav a {
	text-decoration: none;
	color: white;
	transition: color 0.3s ease;
}

nav a:hover {
	color: #ffd700; /* Light Yellow */
}

h2 {
	text-align: center;
}

#taskCategory {
	display: block;
	margin: 0 auto;
}

.slogan {
	font-size: 14px; /* Adjust the font size as needed */
	color: #ffd645;
	/* An attractive color, you can change this based on your preference */
	margin-left: 10px; /* Add margin for spacing */
	font-weight: bold; /* Make the slogan bold for emphasis */
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

.login-btn, .buddy-login-btn {
	display: inline-block;
	padding: 10px 20px;
	text-decoration: none;
	color: #fff;
	background-color: #5E362F;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.login-btn:hover, .buddy-login-btn:hover {
	background-color: #734846;
}

.profile-btn img {
	width: 100%; /* Make sure the image covers the entire button */
	height: auto; /* Maintain the aspect ratio of the image */
	border-radius: 50%;
}
</style>
</head>
<body>
	<header>
		<%
		String email = (String) session.getAttribute("email");
		%>
		<div class="logo">
			HelpHarbor <span class="slogan">Get More Done, Stress Less -
				Always Ready to Assist</span>
		</div>
		<nav>
			<ul>
				<li><a href="home.jsp">Home</a></li>
				<li><a href="hire.jsp">Hire Buddy</a></li>
				<li><a href="about.jsp">About Us</a></li>
			</ul>
		</nav>
		<%
		if (email == null) {
		%>
		<div class="login-btns">
			<a href="login.jsp" class="login-btn">Login</a> <a
				href="buddylogin.jsp" class="buddy-login-btn">Buddy Login</a>
		</div>
		<%
		} else {
		%>
		<div class="profile-btn-container">
			<a href="/showprofile" class="profile-btn"> <img src="pro.jpg"
				alt="Profile Image">
			</a>
			<p style="font-size: 10px;">
				<%=email%></p>
		</div>
		<%
		}
		%>
	</header>

	<h2>Hire a Buddy</h2>
	<%
		if (email == null) {
		%>
	<form action="/login" method="post">
		<label for="taskCategory">Select Task Category:</label> <select
			id="taskCategory" name="taskCategory">
			<option value="home">Home Tasks</option>
			<option value="outside">Outside Tasks</option>
			<option value="driving">Driving</option>
			<option value="cleaning">Cleaning</option>
			<option value="delivery">Delivery</option>
			<option value="gardening">Gardening</option>
			<option value="pets">Pet Care</option>
			<option value="painting">Painting</option>
			<option value="cooking">Cooking</option>
			<!-- Add more categories if needed -->
		</select> <label for="description">Task Description:</label>
		<textarea id="description" name="description" rows="4"></textarea>

		<label for="price">Price :</label> <input type="text" id="price"
			name="price" required>

		<button type="submit">Hire Buddy</button>
	</form>
	<%
		} else {
		%><form action="/task" method="post">
		<label for="taskCategory">Select Task Category:</label> <select
			id="taskCategory" name="taskCategory">
			<option value="home">Home Tasks</option>
			<option value="outside">Outside Tasks</option>
			<option value="driving">Driving</option>
			<option value="cleaning">Cleaning</option>
			<option value="delivery">Delivery</option>
			<option value="gardening">Gardening</option>
			<option value="pets">Pet Care</option>
			<option value="painting">Painting</option>
			<option value="cooking">Cooking</option>
			<!-- Add more categories if needed -->
		</select> <label for="description">Task Description:</label>
		<textarea id="description" name="description" rows="4"></textarea>

		<label for="price">Price :</label> <input type="text" id="price"
			name="price" required>

		<button type="submit">Hire Buddy</button>
	</form>
	<%
		}
		%>
	<footer>
		<section id="contact-us">
			<div class="contact-form">
				<h2>Contact Us</h2>
				<form id="contactForm">
					<div class="form-group">
						<label for="name">Your Name:</label> <input type="text" id="name"
							name="name" required>
					</div>
					<div class="form-group">
						<label for="email">Your Email:</label> <input type="email"
							id="email" name="email" required>
					</div>
					<div class="form-group">
						<label for="message">Your Message:</label>
						<textarea id="message" name="message" rows="4" required></textarea>
					</div>
					<button type="button" onclick="submitForm()">Submit</button>
				</form>
			</div>
		</section>
	</footer>


</body>
</html>
