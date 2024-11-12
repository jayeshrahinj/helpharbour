<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <style>
        /* Add any additional inline styles here */

        /* Header Fade In Animation */
        header {
            opacity: 0;
            animation: fadeIn 1.5s forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /* Section Fade In Animation */
        section {
            opacity: 0;
            animation: fadeIn 1.5s forwards;
        }

        /* Carousel Slide In Animation */
        /* Update the styles for the #home section in your existing CSS */
        #home .carousel-container {
            display: flex;
            overflow: hidden; /* Hide overflowing slides */
        }

        #home .carousel-item {
            width: 100%; /* Full width for one slide at a time */
            box-sizing: border-box;
            text-align: center;
            background-color: #3D2022;
            color: white;
            font-size: 24px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }

        #home .carousel-item img {
            max-width: 100%;
            height: auto;
            max-height: 200px; /* Maximum image height */
            margin-top: 20px; /* Adjust spacing */
        }

        @keyframes slideIn {
            0%, 100% {
                transform: translateX(0);
            }
            12.5%, 37.5%, 62.5%, 87.5% {
                transform: translateX(-100%);
            }
            25%, 50%, 75% {
                transform: translateX(-200%);
            }
        }

        #slideshow {
            position: relative;
            max-width: 100%;
            overflow: hidden;
        }

        .carousel-container {
            display: flex;
            transition: transform 1s ease;
        }

        .carousel-item {
            width: 100%;
        }

        #home .carousel-container.active .carousel-item {
            opacity: 1;
        }
        /* About Us Section */
        /* Add these styles to your existing CSS */
        #about-us {
            background-color: #3D2022;
            color: white;
            padding: 40px;
            margin-top: 20px;
        }

        #about-us h2 {
            font-size: 32px;
            margin-bottom: 20px;
        }

        #about-us p {
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 20px;
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
            #about-us {
                padding: 20px;
            }

            #about-us h2 {
                font-size: 28px;
            }

            .about-list h3 {
                font-size: 22px;
            }

            .about-list li {
                font-size: 14px;
            }
        }
        /* Add this to your existing CSS for slideshow */
       #slideshow {
        position: relative;
        max-width: 100%;
        overflow: hidden;
    }

    .carousel-container {
        display: flex;
        transition: transform 1s ease;
    }

    .carousel-item {
        width: 100%;
        display: flex;
        flex-direction: row-reverse; /* Align content in row-reverse direction */
     
        justify-content: space-between;
    }
    .login-btn, .buddy-login-btn {
    display: inline-block;
    padding: 10px 20px;
    text-decoration: none;
    color: #fff;
    background-color: #5E362F;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.login-btn:hover, .buddy-login-btn:hover {
    background-color: #734846;
}
     .slogan {
    font-size: 14px; /* Adjust the font size as needed */
    color: #ffd645; /* An attractive color, you can change this based on your preference */
    margin-left: 10px; /* Add margin for spacing */
    font-weight: bold; /* Make the slogan bold for emphasis */
}

    
    /* Add this to your existing CSS for slideshow navigation buttons */
    .carousel-navigation {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }
 .profile-btn-container {
            text-align: center;
        }

        .profile-btn {
            display: inline-block;
            width: 60px; /* Adjust the width as needed */
            height: 60px; /* Adjust the height as needed */
            border-radius: 50%; /* Create a circular shape */
            overflow: hidden; /* Ensure the image doesn't overflow the circle */
        }

        .profile-btn img {
            width: 100%; /* Make sure the image covers the entire button */
            height: auto; /* Maintain the aspect ratio of the image */
            border-radius: 50%; /* Apply circular shape to the image */
        }
    .nav-button {
        background-color: #5E362F;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
    }
    </style>
    <title>HelpHarbor</title>
</head>

<body>
   
    <%
    String email = request.getParameter("email");
    %> <header>
    <div class="logo">HelpHarbor <span class="slogan">Get More Done, Stress Less - Always Ready to Assist</span></div>
    <nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="hire.jsp">Hire Buddy</a></li>
            <li><a href="about.jsp">About Us</a></li>
             <% 
    if(email!=null)
    {%>
    	<li><a href="${pageContext.request.contextPath}/track">My Orders</a></li>
    	
    	 <% 
    }
    	%>
        </ul>
    </nav>
    <% 
    if(email==null)
    {
    	%>
    	  <div class="login-btns">
          <a href="login.jsp"  class="login-btn">Login</a>
          <a href="buddylogin.jsp"  class="buddy-login-btn">Buddy Login</a>
      </div>
      <%
      }  else
      {
      %>
    <div class="profile-btn-container">
    <a href="/showprofile" class="profile-btn">
        <img src="pro.jpg" alt="Profile Image">
    </a><p style="font-size: 10px;"> <%=email %></p>
    </div>
     <%
    }
    %>
    
      
        
    </header>

    <main>
        <section id="home">
            <!-- Home content goes here -->
        </section>

        <section id="home">
            <div class="carousel-container" id="slideshow">
              <!-- Add this to your existing HTML for each carousel item -->
<div class="carousel-item">
    <!-- Slide 1 content goes here -->
    <h3 style="max-width: 45%; box-sizing: border-box; text-align: right; margin-right: 20px;">Buying Helper</h3>
    <p style="max-width: 45%; box-sizing: border-box;">Looking for someone to assist you with your shopping needs? Our Buying Helper service is here for you. Whether it's groceries, clothing, or any other essentials, our buddies are ready to make your purchases hassle-free.</p>
  
</div>
              
            </div>

            <!-- Add navigation buttons for slideshow -->
        
        </section>

        <section id="image-gallery">
            <h2>Image Gallery</h2>

            <div class="image-container">
                <img src="my.jpg" alt="Image 1">
                <img src="my1.jpg" alt="Image 2">
                <img src="https://img.freepik.com/premium-vector/man-women-with-construction-hammer-paint-brush-bucket-design-remodeling-working-repairing-theme_24877-69267.jpg?w=740"
                    alt="Image 3">
            </div>
        </section>

        <section id="our-services">
            <h2>Our Services</h2>

            <div class="service-item">
                <h3>Task Assistance</h3>
                <p>Need help with daily tasks or errands? Our buddies are here to assist you with grocery shopping, picking up dry cleaning, and more.</p>
            </div>

            <div class="service-item">
                <h3>Home Maintenance</h3>
                <p>From minor repairs to home improvement projects, our skilled buddies can tackle various maintenance tasks to keep your home in top shape.</p>
            </div>

            <div class="service-item">
                <h3>Personal Projects</h3>
                <p>Working on a personal project? Hire a buddy to provide support and assistance, whether it's organizing, crafting, or any other creative endeavor.</p>
            </div>

            <div class="service-item">
                <h3>Technology Support</h3>
                <p>Struggling with tech issues? Our tech-savvy buddies can help you with device setup, troubleshooting, and providing guidance on various technologies.</p>
            </div>

            <p>Discover the convenience of our services and let our buddies handle the tasks, so you can focus on what matters most to you!</p>
        </section>

        <section id="about-us">
            <h2>About Us</h2>
            <p>Welcome to HelpHarbor, your trusted partner in getting things done! Our mission is to make your life easier by connecting you with reliable and skilled buddies who are ready to assist you with any task or work.</p>

            <p>At My Buddy, we understand that everyone has a busy schedule, and sometimes you need an extra pair of hands to help you out. Whether it's running errands, completing chores, or tackling specific projects, our team of dedicated buddies is here for you.</p>

            <div class="about-list">
                <h3>Why choose HelpHarbor?</h3>
                <ul>
                    <li><strong>Professional Assistance:</strong> Our buddies are experienced and professional individuals ready to handle a variety of tasks efficiently.</li>
                    <li><strong>Flexible Services:</strong> From small errands to more extensive projects, we offer a range of services tailored to meet your unique needs.</li>
                    <li><strong>Reliability:</strong> You can trust our buddies to get the job done. We carefully vet and select individuals who are reliable and committed to providing excellent service.</li>
                    <li><strong>Convenience:</strong> Easily hire a buddy through our platform, and enjoy the convenience of having tasks completed on your schedule.</li>
                </ul>
            </div>

            <p>Whether you need help with grocery shopping, home repairs, or any other task, My Buddy is here to simplify your life. Join our community of satisfied customers who have experienced the convenience of having a reliable buddy by their side.</p>
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

    <script>
    
    function redirectToLogin() {
        // Replace 'login.jsp' with the actual JSP page you want to redirect to for customer login
        window.location.href = 'login.jsp';
    }

    function redirectToBuddyLogin() {
        // Replace 'buddy-login.jsp' with the actual JSP page you want to redirect to for buddy login
        window.location.href = 'buddy-login.jsp';
    }
        document.addEventListener("DOMContentLoaded", function () {
            const slideshow = document.getElementById("slideshow");
            const carousel = document.querySelector(".carousel-container");
            const navButtons = document.querySelectorAll(".nav-button");
            let activeSlide = 0;

            function toggleActiveClass() {
                slideshow.classList.toggle("active");
            }

            function changeSlide() {
                activeSlide = (activeSlide + 1) % 3; // Number of slides
                carousel.style.transform = `translateX(${-activeSlide * 100}%)`;
                toggleActiveClass();
                setTimeout(changeSlide, 2000); // Change slide every 2 seconds
            }

            setTimeout(changeSlide, 2000);

            // Manual navigation buttons
            navButtons.forEach((button, index) => {
                button.addEventListener("click", () => {
                    activeSlide = index;
                    carousel.style.transform = `translateX(${-activeSlide * 100}%)`;
                    toggleActiveClass();
                });
            });
        });
    </script>
</body>

</html>
