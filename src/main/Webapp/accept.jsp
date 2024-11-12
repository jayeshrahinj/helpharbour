<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Accepted</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #4CAF50; /* Green background color */
            color: #fff; /* White text color */
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .message-container {
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
        }
         .back-button {
           padding: 10px 20px;
            background-color: #fff; /* White button background */
            color: #4CAF50; /* Green button text color */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .back-button:hover {
            background-color: #e0e0e0; /* Light gray on hover */
        }
             </style>
</head>
<body>

<div class="message-container">
    <h2>Task Accepted</h2>
    <p>Congratulations! You have successfully accepted the task.</p>
    <a href="buddyhome.jsp" class="back-button">Back to Home</a>
    
</div>

</body>
</html>
