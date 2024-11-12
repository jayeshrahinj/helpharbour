<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us - My Buddy</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Add any additional styles for this specific page */
        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;
        }

        main {
            padding: 20px;
        }

        .about-list {
            margin-top: 20px;
        }

        .about-list h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .about-list ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .about-list li {
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 10px;
        }

        @media only screen and (max-width: 768px) {
            .about-list h3 {
                font-size: 22px;
            }

            .about-list li {
                font-size: 14px;
            }
        }
        .contact-form {
    max-width: 400px;
    margin: 0 auto;
    background-color: #ffd645; /* Deep Purple */
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 8px;
}

input,
textarea {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    background-color: #ff4577; /* Rich Pink */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #555; /* Dark Gray */
}


        .logo {
    font-size: 50px;
    font-family: 'Georgia', serif; /* Changed to Georgia font */
}

nav ul {
    list-style-type: none;
    display: flex;
}

nav ul li {
    margin-right: 20px;
}

nav a {
    text-decoration: none;
    color: white;
    transition: color 0.3s ease;
}

nav a:hover {
    color: #ffd700; /* Light Yellow */
}
 h2 {
            text-align: center;
        }

        #taskCategory {
            display: block;
            margin: 0 auto;
        }
          header {
    background-color: #3D2022;
    color: white;
    padding: 10px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
footer {
    background-color: #3D2022;
    color: #2C3227;
    padding: 20px;
}
      .slogan {
    font-size: 14px; /* Adjust the font size as needed */
    color: #ffd645; /* An attractive color, you can change this based on your preference */
    margin-left: 10px; /* Add margin for spacing */
    font-weight: bold; /* Make the slogan bold for emphasis */
}
    
        
    </style>
</head>
<body>

    <header>
    <div class="logo">HelpHarbor <span class="slogan">Get More Done, Stress Less - Always Ready to Assist</span></div>
    <nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="hire.jsp">Hire Buddy</a></li>
            <li><a href="about.jsp">About Us</a></li>
        </ul>
    </nav>
</header>
    
    </header>
        <main>
        <section id="about-us">
            <h2>About Us</h2>
            <p>Welcome to My Buddy, where convenience meets excellence. We are your trusted partner in getting things done, dedicated to simplifying your life through reliable and skilled assistance.</p>

            <p>Life can be hectic, and that's where we come in. At My Buddy, we recognize the value of your time and the occasional need for an extra set of hands. Whether it's running errands, completing chores, or tackling specific projects, our team of dedicated buddies is here to make your life easier.</p>

            <div class="about-list">
                <h3>Why choose My Buddy?</h3>
                <ul>
                    <li><strong>Professional Assistance:</strong> Our buddies are not just helpers; they are experienced and professional individuals ready to handle a variety of tasks efficiently.</li>
                    <li><strong>Wide Range of Services:</strong> From routine errands to more extensive projects, we offer a diverse range of services tailored to meet your unique needs.</li>
                    <li><strong>Reliability:</strong> Trust is our foundation. You can count on our buddies to get the job done with precision and commitment.</li>
                    <li><strong>Flexible Scheduling:</strong> Enjoy the convenience of our flexible scheduling system. Easily hire a buddy through our platform and have tasks completed on your terms.</li>
                    <li><strong>Community Support:</strong> Join our thriving community of satisfied customers who have experienced the reliability and convenience of having a My Buddy by their side.</li>
                    <li><strong>Customer Satisfaction:</strong> Your satisfaction is our priority. We go the extra mile to exceed your expectations in every task we undertake.</li>
                    <li><strong>Innovation:</strong> Embracing innovation, we continually strive to enhance our services and offer you the best possible experience.</li>
                    <li><strong>Environmentally Conscious:</strong> My Buddy is committed to eco-friendly practices. We aim to minimize our environmental impact in every task we perform.</li>
                </ul>
            </div>

            <p>Whether you need help with grocery shopping, home repairs, or any other task, My Buddy is here to simplify your life. Let us be your reliable partner in getting things done!</p>
        </section>
    </main>

     <footer>
        <section id="contact-us">
            <div class="contact-form">
                <h2>Contact Us</h2>
                <form id="contactForm">
                    <div class="form-group">
                        <label for="name">Your Name:</label>
                        <input type="text" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Your Email:</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="message">Your Message:</label>
                        <textarea id="message" name="message" rows="4" required></textarea>
                    </div>
                    <button type="button" onclick="submitForm()">Submit</button>
                </form>
            </div>
        </section>
    </footer>
</body>
</html>
