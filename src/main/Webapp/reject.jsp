<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Rejected</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
             background-color: #FF0000; /* Green background color */
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height: 100vh;
        }

        .message-container {
            text-align: center;
            margin-bottom: 20px;
        }

        h2 {
            margin-bottom: 10px;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .back-button {
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            transition: background-color 0.3s;
            background-color: #fff; /* Red button background */
            color: #FF0000; /* White text color */
        }

        .back-button:hover {
            background-color: #e00000; /* Lighter red on hover */
        }
    </style>
</head>
<body>

<div class="message-container">
    <h2>Task Rejected</h2>
    <p>Sorry, the task has been rejected.</p>
</div>

<a href="buddyhome.jsp" class="back-button">Back to Home</a>

</body>
</html>
