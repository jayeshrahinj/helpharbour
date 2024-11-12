<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Buddy - Buddy Login</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Add the provided CSS code here */

        body {
            font-family: 'Arial', sans-serif;
            background-color: #F5E4DA;
            margin: 0;
            padding: 0;
        }

        form {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: #5E362F;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            color: #5E362F;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #5E362F;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .create-account-link {
            text-align: center;
            margin-top: 15px;
        }

        .create-account-link a {
            color: #5E362F;
            text-decoration: none;
            font-weight: bold;
        }
         .logo {
    font-size: 50px;
    font-family: 'Georgia', serif; /* Changed to Georgia font */
}
      header {
    background-color: #3D2022;
    color: white;
    padding: 10px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
   .slogan {
    font-size: 14px; /* Adjust the font size as needed */
    color: #ffd645; /* An attractive color, you can change this based on your preference */
    margin-left: 10px; /* Add margin for spacing */
    font-weight: bold; /* Make the slogan bold for emphasis */
}
        /* Add more styles if needed */
    </style>
</head>

<body>
 <header>
    <div class="logo">HelpHarbor<span class="slogan">Get More Done, Stress Less - Always Ready to Assist</span></div>
  
</header>
 
    <form action="buddyhome" method="post">
      
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Login</button>

        <div class="create-account-link">
            <p>Don't have an buddy account? <a href="/buddySignup.jsp">Create Account</a></p>
        </div>
    </form>
</body>

</html>
