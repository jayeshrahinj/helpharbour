<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Website</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            overflow: hidden; /* Hide scroll bars during animation */
            background-color: #f0f0f0; /* Set a background color */
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Make the body take the full height of the viewport */
        }

        #loading-container,
        #logo-container {
            display: flex;
            align-items: center;
            justify-content: center;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }

        #loading-spinner {
            border: 8px solid #3498db;
            border-top: 8px solid #f0f0f0;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        #logo-container {
            display: none; /* Initially hide the logo container */
        }

        #logo {
            max-width: 100%;
            max-height: 100%;
        }
    </style>
</head>

<body>
    <div id="loading-container">
        <div id="loading-spinner"></div>
    </div>
    <div id="logo-container">
        <img id="logo" src="logo1.png" alt="Your Logo">
    </div>
    <%-- Wait for 3 seconds using a meta refresh tag and then show the logo container --%>
    <meta http-equiv="refresh" content="3;url=home.jsp">
    <script>
        // After the loading period, show the logo container and hide the loading container
        setTimeout(function() {
            document.getElementById('loading-container').style.display = 'none';
            document.getElementById('logo-container').style.display = 'flex';
        }, 3000);
    </script>
</body>

</html>
