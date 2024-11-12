<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Confirmation Page</title>
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

        h2,
        p {
            margin: 5px 0; /* Decrease the margin between lines */
        }

        h3 {
            margin-top: 20px; /* Add some space above the h3 heading */
        }

        table {
            width: 50%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
        }

        th,
        td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #5E362F;
            color: white;
        }

        form {
            display: flex; /* Display forms as flex to arrange them side by side */
            justify-content: space-around; /* Add space around forms */
            margin-top: 10px;
        }

        button {
            background-color: #5E362F;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
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
Double price = (Double) session.getAttribute("price");

    String email = (String) session.getAttribute("email");
    String buddyId = request.getParameter("buddyId");
 	
   	session.setAttribute("buddyId", buddyId);
    String currentdate = (String) session.getAttribute("Hiredate");
    String taskid = (String) session.getAttribute("taskid");
    String buddyName = request.getParameter("buddyName");
    String buddyAge = request.getParameter("buddyAge");
    String buddyEmail = request.getParameter("buddyEmail");
    String buddyPhone = request.getParameter("buddyPhone");
    session.setAttribute("buddyphone", buddyPhone);
    String buddyAddress = request.getParameter("buddyAddress");
    String buddyGender = request.getParameter("buddyGender");
    String buddyWork = request.getParameter("buddyWork");
%>

<body>
    <header>
        <div class="logo">HelpHarbor <span class="slogan">Get More Done, Stress Less - Always Ready to Assist</span></div>
    </header>
    <div style="margin: 0; padding: ;">
    <h2 style="color: #5E362F; margin:0 ;">Confirmation</h2>
    <h5 style="color: #000000; margin: 0;">Please Note Buddy Contact details</h5>
</div>
    
    <table>
        <tr>
            <th colspan="2">Confirmation Details</th>
        </tr>
        <tr>
            <td>Task price:</td>
            <td><%=price %></td>
        </tr>
        <tr>
            <td>User Email:</td>
            <td><%=email %></td>
        </tr>
        <tr>
            <td>Buddy ID:</td>
            <td><%=buddyId %></td>
        </tr>
        <tr>
            <td>Hire Date:</td>
            <td><%=currentdate %></td>
        </tr>
    </table>

    <!-- Display buddy details -->
    <h3>Selected Buddy Details:</h3>
     <table>
        <tr>
            <th>Attribute</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Name:</td>
            <td><%= buddyName%></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><%= buddyEmail%></td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td><%= buddyPhone%></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><%= buddyAddress%></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><%=buddyAge %></td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td><%=buddyGender%></td>
        </tr>
        <tr>
            <td>Work Experience:</td>
            <td><%=buddyWork %></td>
        </tr>
    </table>

    <!-- Confirm and Cancel buttons in a horizontal line -->
    <div class="button-container">
        <form action="/confirmed" method="post">
            <button type="submit">Confirm</button>
        </form>

        <form action="/home" method="get">
            <button type="submit">Cancel</button>
        </form>
    </div>
</body>

</html>
