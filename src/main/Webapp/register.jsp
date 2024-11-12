<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Buddy User - Sign Up</title>
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
   
    <form action="/saveuser" method="post">
        <h2>Hire a Buddy - Sign Up</h2>
        <label for="UserName">User Name:</label>
        <input type="text" id="UserName" name="UserName" required>

        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" required>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>

        <label for="city">City:</label>
        <input type="text" id="city" name="city" required>

        <label for="state">State:</label>
        <input type="text" id="state" name="state" required>

        <button type="submit">Sign Up</button>
    </form>
   
</body>

</html>
