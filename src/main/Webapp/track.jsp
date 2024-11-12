<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.example.demo.Task" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Task List</title>
    <style>
        .slogan {
            font-size: 14px;
            color: #ffd645;
            margin-left: 10px;
            font-weight: bold;
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

        .logo {
            font-size: 50px;
            font-family: 'Georgia', serif;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border: none; /* Remove border */
        }

        th, td {
            padding: 8px;
            text-align: left;
        }

        .status-waiting {
            color: #FFFF00;
            font-weight: bold;
        }

        .status-complete {
            color: #008000;
            font-weight: bold;
        }

        .status-uncomplete {
            color: #ff0000;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <header>
        <div class="logo">
            HelpHarbor <span class="slogan">Get More Done, Stress Less - Always Ready to Assist</span>
        </div>
    </header>

    <table>
        <tr>
            <th>Task Category</th>
            <th>Task Description</th>
            <th>Task Price</th>
            <th>Task Status</th>
        </tr>

        <%
            List<Task> tasklist = (List<Task>) session.getAttribute("tasklist");
            for (Task task : tasklist) {
        %>
        <tr>
            <td><%=task.getTaskcategory()%></td>
            <td><%=task.getDescription()%></td>
            <td><%=task.getPrice()%></td>
            <td class="<%
                switch (task.getStatus()) {
                    case "waiting":
                        out.print("status-waiting");
                        break;
                    case "complete":
                        out.print("status-complete");
                        break;
                    case "uncomplete":
                        out.print("status-uncomplete");
                        break;
                    default:
                        // No specific class for other statuses
                }
            %>"><%=task.getStatus()%></td>
        </tr>
        <%
            }
        %>
    </table>
</body>

</html>
