<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Buddy - Buddy Sign Up</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Define color variables */
        :root {
            --primary-color: #5E362F;
            --background-color: #F5E4DA;
            --form-background-color: #fff;
            --form-border-color: #ccc;
            --form-box-shadow-color: rgba(0, 0, 0, 0.1);
            --button-background-color: var(--primary-color);
            --button-text-color: #fff;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--background-color);
            margin: 0;
            padding: 0;
        }

        form {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: var(--form-background-color);
            box-shadow: 0 0 10px var(--form-box-shadow-color);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: var(--primary-color);
        }

        label {
            display: block;
            margin: 10px 0 5px;
            color: var(--primary-color);
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid var(--form-border-color);
            border-radius: 4px;
        }

        button {
            background-color: var(--button-background-color);
            color: var(--button-text-color);
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
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

<!-- Rest of the code remains unchanged -->

<body>
 <header>
    <div class="logo">HelpHarbor<span class="slogan">Get More Done, Stress Less - Always Ready to Assist</span></div>
  
</header>
 
    <form action="savebuddy" method="post">
        <h2>Buddy Sign Up</h2>
        <!-- <label for="image">Profile Image:</label>
    <input type="file" id="image" name="image" accept="image/*">
        
 -->
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

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select>

        <!-- Additional Fields for Safety Details -->
     <!--    <label for="emergencyContact">Emergency Contact:</label>
        <input type="text" id="emergencyContact" name="emergencyContact" required>

  -->     <label for="workExperience">Work Experience (if any):</label>
        <textarea id="workExperience" name="workExperience" rows="3"></textarea>

        <button type="submit">Sign Up</button>
    </form>
</body>

</html>
