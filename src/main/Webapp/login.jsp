<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - My Buddy</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;
        }  .slogan {
    font-size: 14px; /* Adjust the font size as needed */
    color: #ffd645; /* An attractive color, you can change this based on your preference */
    margin-left: 10px; /* Add margin for spacing */
    font-weight: bold; /* Make the slogan bold for emphasis */
}
    

        main {
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #5E362F;
        }

        input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #5E362F;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease-in-out;
        }

        button:hover {
            background-color: #4a2c26;
        }

        .create-account-link {
            text-align: center;
            margin-top: 20px;
        }

        .create-account-link a {
            color: #5E362F;
            text-decoration: none;
        }

        .create-account-link a:hover {
            text-decoration: underline;
        }
          .message {
            text-align: center;
            color: red;
            padding: 10px;
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
        
    </style>
</head>
<body>

   <header>
    <div class="logo">HelpHarbor<span class="slogan">Get More Done, Stress Less - Always Ready to Assist</span></div>
  
</header>
  <% String message = (String) request.getAttribute("Message"); %>
        <% if (message != null && !message.isEmpty()) { %>
            <div class="message">
                <p><%= message %></p>
            </div>
        <% } %>
   <main>
        <section id="login">
            <h2 style="text-align: center; color: #5E362F;">Login</h2>
            <div class="login-form">
                <form action="checkuser" method="post">
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" required>
                    </div>

                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" required>
                    </div>

                    <div class="form-group">
                        <label>
                            <input type="checkbox" name="remember"> Remember Me
                        </label>
                    </div>

                    <button type="submit">Login</button>
                </form>
            </div>

            <div class="create-account-link">
                <p>Don't have an account? <a href="/register.jsp">Create Account</a></p>
            </div>
            <!-- ... existing code ... -->

<%-- Display error message if login fails --%>
<c:if test="${not empty param.error}">
    <p style="color: red">${param.error}</p>
</c:if>

<!-- ... existing code ... -->
            
        </section>
    </main>

    <footer>
        <!-- Include your footer content here -->
    </footer>

</body>
</html>
