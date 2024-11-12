<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.HireHistory" %>
<%@ page import="com.example.demo.Task" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>History</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        main {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        h2 {
            background-color: #5E362F;
            color: #fff;
            padding: 20px;
            margin: 0;
            border-bottom: 2px solid #3D2022;
        }

        .task-card {
            display: flex;
            justify-content: space-between;
            border: 1px solid #ddd;
            margin: 10px;
            padding: 10px;
            border-radius: 5px;
            background-color: #fff;
            transition: box-shadow 0.3s ease;
        }

        .task-card:hover {
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        .hire-details, .task-details {
            flex: 1;
            padding: 10px;
        }

        .transaction-history {
            background-color: #e6ffe6; /* Light green for transaction history */
            padding: 10px;
            border-radius: 5px;
        }
.slogan {
	font-size: 14px; /* Adjust the font size as needed */
	color: #ffd645;
	/* An attractive color, you can change this based on your preference */
	margin-left: 10px; /* Add margin for spacing */
	font-weight: bold; /* Make the slogan bold for emphasis */
}
header {
	background-color: #3D2022;
	color: white;
	padding: 10px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.logo {
	font-size: 50px;
	font-family: 'Georgia', serif; /* Changed to Georgia font */
}
        .price {
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>
<Header>
<div class="logo">
			HelpHarbor <span class="slogan">Get More Done, Stress Less -
				Always Ready to Assist</span>
		</div></Header>
    <main>
        <h4>Task History</h4>
        <%
            List<HireHistory> hireList = (List<HireHistory>) session.getAttribute("history");
            List<Task> taskList = (List<Task>) session.getAttribute("task");

            if (hireList != null && !hireList.isEmpty() && taskList != null && !taskList.isEmpty()) {
                int maxSize = Math.max(hireList.size(), taskList.size());

                for (int i = 0; i < maxSize; i++) {
        %>
                    <div class="task-card">
                        <div class="hire-details">
                            <% if (i < hireList.size()) { %>
                                <div class="transaction-history">
                                    <p>Hire Date: <%= hireList.get(i).getHireDate() %></p>
                                    <p>User Email: <%= hireList.get(i).getUserEmail() %></p>
                                </div>
                            <% } %>
                        </div>

                        <div class="task-details">
                            <% if (i < taskList.size()) { %>
                                <p>Task Category: <%= taskList.get(i).getTaskcategory() %></p>
                                <p>Task Description: <%= taskList.get(i).getDescription() %></p>
                                <b>    <p>Task Status: <%= taskList.get(i).getStatus() %></p></b>
                           
                                <p class="price">Task Price: <%= taskList.get(i).getPrice() %></p>
                            <% } %>
                        </div>
                    </div>
        <%
                }
            } else {
        %>
            <p>No tasks found.</p>
        <%
            }
        %>
    </main>
</body>
</html>
