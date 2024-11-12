<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Booking Confirmed</title>
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

        h2 {
            color: #5E362F;
            margin-top: 20px;
        }

        img {
            width: 100px; /* Adjust the width of the image */
            margin-top: 20px;
        }

        p {
            font-weight: bold;
            font-size: 20px;
            color: #5E362F;
            margin-top: 10px;
        }

        table {
            border-collapse: collapse;
            width: 50%;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #5E362F;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        button {
            background-color: #5E362F;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
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

        button:hover {
            background-color: #3D2022; /* Darker color on hover */
        }
    </style>
</head>

<%
    String email = (String) session.getAttribute("email");
 String currentdate = (String) session.getAttribute("currentdate");
    String taskid = (String) session.getAttribute("taskid");
    Double price = (Double) session.getAttribute("price");
    String buddyPhone = (String) session.getAttribute("buddyphone");
    
    
    %>

<body>
    <header>
        <div class="logo">HelpHarbor <span class="slogan">Get More Done, Stress Less - Always Ready to Assist</span></div>
    </header>
    <!-- Image of green tick -->
  <img src="booking.png" alt="Green Tick Image" style="border-radius: 5px;">
    <!-- Bold letters "BOOKED CONFIRMED" -->
    <p>BOOKING CONFIRMED</p>

    <!-- Display given details in a table -->
    <table>
        <tr>
            <th colspan="2">Confirmed Details</th>
        </tr>
       
        <tr>
            <td>User Email:</td>
            <td><%=email %></td>
        </tr>
        <tr>
            <td>Buddy Phone:</td>
            <td><%=buddyPhone%></td>
        </tr>
        <tr>
            <td>Hire Date:</td>
            <td><%=currentdate %></td>
        </tr>
         <tr>
            <td>Task price:</td>
            <td><%=price %></td>
        </tr>
    </table>

    <!-- Return home button -->
    <form action="/home" method="get">
        <button type="submit">Return Home</button>
    </form>
     <form action="/track" method="get">
        <button type="submit">Track Order</button>
    </form>
</body>

</html>
