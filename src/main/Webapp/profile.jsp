<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile page</title>
    <link rel="stylesheet" href="style.css">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #F5E4DA;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        table {
            border-collapse: collapse;
            width: 60%;
            margin: 20px auto; /* Center the table horizontally */
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4caf50;
            color: white;
        }

        header {
            background-color: #3D2022;
            color: white;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
        }

        .logo {
            font-size: 50px;
            font-family: 'Georgia', serif; /* Changed to Georgia font */
        }

        .slogan {
            font-size: 14px;
            color: #ffd645;
            margin-left: 10px;
            font-weight: bold;
        }

        h2 {
            text-align: center;
            margin-top: 20px;
            color: #5E362F;
        }

        .logout-btn {
            background-color: #f44336;
            color: white;
            padding: 10px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <header>
        <div class="logo">HelpHarbor<span class="slogan">Get More Done, Stress Less - Always Ready to Assist</span></div>
    </header>

    <h2>User Profile</h2>

    <%
        String email = (String)session.getAttribute("email");
        String username = (String)session.getAttribute("username");
        String fullname = (String)session.getAttribute("fullname");
        String phone = (String)session.getAttribute("phone");
        String address = (String)session.getAttribute("address");
        String city = (String)session.getAttribute("city");
        String state = (String)session.getAttribute("state");
    %>

    <table>
        <tr>
            <td>Email:</td>
            <td><%= email %></td>
        </tr>
        <tr>
            <td>Username:</td>
            <td><%= username %></td>
        </tr>
        <tr>
            <td>Full Name:</td>
            <td><%= fullname %></td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td><%= phone %></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><%= address %></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><%= city %></td>
        </tr>
        <tr>
            <td>State:</td>
            <td><%= state %></td>
        </tr>
    </table>

    <a href="login.jsp" class="logout-btn">Logout</a>

</body>

</html>
