<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="">

   		 body, html {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-image: url('images/2.jpg'); /* Add your background image here */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed; /* Optional: keeps the background fixed when scrolling */
    	}

 

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Roboto', sans-serif;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    background: #00b849;
    border-radius: 20px;
    box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
                0 10px 10px rgba(0,0,0,0.22);
    position: relative;
    width: 768px;
    max-width: 100%;
    min-height: 480px;
    overflow: hidden;
    left: 0;
}

/* Forms Container */
.form-container {
    position: absolute;
    top: 0;
    height: 100%;
    transition: all 0.6s ease-in-out;
}

/* Sign In Container */
.sign-in-container {
    left: 0;
    width: 50%;
    z-index: 2;
}

/* Sign Up Container */
.sign-up-container {
    left: 0;
    width: 50%;
    opacity: 0;
    z-index: 1;
}

/* Active State */
.container.right-panel-active .sign-in-container {
    transform: translateX(100%);
    opacity: 0;
    z-index: 1;
}

.container.right-panel-active .sign-up-container {
    transform: translateX(100%);
    opacity: 1;
    z-index: 5;
}

/* Form Styling */
.form {
    background: rgba(255, 255, 255, 0.85);
    display: flex;
    flex-direction: column;
    padding: 0 50px;
    height: 100%;
    justify-content: center;
    align-items: center;
}

.form h2 {
    margin-bottom: 20px;
    color: #333;
}

.input-group {
    width: 100%;
    margin-bottom: 15px;
}

.input-group label {
    display: block;
    margin-bottom: 6px;
    color: #555;
}

.input-icon {
    position: relative;
}

.input-icon i {
    position: absolute;
    top: 50%;
    left: 15px;
    transform: translateY(-50%);
    color: #999;
}

.input-icon input {
    width: 100%;
    padding: 10px 15px;
    padding-left: 40px; /* Space for the icon */
    border: 1px solid #ccc;
    border-radius: 5px;
    transition: border-color 0.3s;
}

.input-icon input:focus {
    border-color: #58e26c;
    outline: none;
}

.toggle-password {
    position: absolute;
    top: 50%;
    right: 15px;
    transform: translateY(-50%);
    cursor: pointer;
    color: #999;
}

.toggle-password:hover {
    color: #4fd75c;
}

.btn {
    width: 100%;
    padding: 12px;
    background-color: #135e19;
    border: none;
    border-radius: 5px;
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
    margin-top: 10px;
}

.btn:hover {
    background-color: #2d8b40;
}

.btn.ghost {
    background: transparent;
    border: 1px solid #a1fcb3;
    color: #7ac589;
    padding: 12px 45px;
    font-size: 14px;
}

.btn.ghost:hover {
    background-color: #2d8b40;
    color: white;
}

.switch-form {
    text-align: center;
    margin-top: 15px;
    color: #666;
}

.switch-form a {
    color: #2d8b40;
    text-decoration: none;
    font-weight: bold;
    transition: color 0.3s;
}

.switch-form a:hover {
    color: #80fa7e;
}

/* Overlay Container */
.overlay-container {
    position: absolute;
    top: 0;
    left: 50%;
    width: 50%;
    height: 100%;
    overflow: hidden;
    transition: transform 0.6s ease-in-out;
    z-index: 100;
}

.container.right-panel-active .overlay-container {
    transform: translateX(-100%);
}

/* Overlay */
.overlay {
    background: linear-gradient(135deg, #00b849 10%, #0b6a0c 100%);
    color: #fff;
    position: relative;
    left: -100%;
    height: 100%;
    width: 200%;
    transform: translateX(0);
    transition: transform 0.6s ease-in-out;
}

.container.right-panel-active .overlay {
    transform: translateX(50%);
}

/* Overlay Panels */
.overlay-panel {
    position: absolute;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 0 40px;
    text-align: center;
    top: 0;
    height: 100%;
    width: 50%;
    transform: translateX(0);
    transition: transform 0.6s ease-in-out;
}

.overlay-left {
    left: 0;
}

.overlay-right {
    right: 0;
    transform: translateX(0);
}

.container.right-panel-active .overlay-left {
    transform: translateX(20%);
}

.container.right-panel-active .overlay-right {
    transform: translateX(20%);
}

/* Validation Styles */
input:invalid {
    border-color: #177f33;
}

input:valid {
    border-color: #2ecc71;
}

/* Responsive Design */
@media (max-width: 768px) {
    .container {
        width: 100%;
        min-height: 600px;
    }

    .overlay-container {
        display: none;
    }

    .sign-in-container,
    .sign-up-container {
        width: 100%;
        transform: translateX(0) !important;
        opacity: 1 !important;
    }
    
}




</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<title>Medicine Order - Login & Signup</title>
    <!-- Link to CSS -->
    <link rel="stylesheet" href="styles.css">
    <!-- Font Awesome CDN for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" 
          integrity="sha512-pVHOXHntjVSEu2dQqzH+f1hV6ZIX0YtbIhPRfXwH+Nd0vF7j3wJzvx+E9du9CkBuFqWhmAzV6S+bY+psNxmwFw==" 
          crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>


    
<div class="container" id="container">
        <!-- Sign Up Form -->
        <div  class="form-container sign-up-container">
            <form class="form" action="RegisterServlet" method="POST">
                <h2>Create Account</h2>
                <div class="input-group">
                    <label for="signup-fullname">Full Name</label>
                    <div class="input-icon">
                        <i class="fas fa-user"></i>
                        <input type="text" id="signup-fullname" name="name" required placeholder="Enter your full name">
                    </div>
                </div>
                <div class="input-group">
                    <label for="signup-email">Email Address</label>
                    <div class="input-icon">
                        <i class="fas fa-envelope"></i>
                        <input type="email" id="signup-email" name="email" required placeholder="Enter your email">
                    </div>
                </div>
                <div class="input-group">
                    <label for="signup-password">Password</label>
                    <div class="input-icon">
                        <i class="fas fa-lock"></i>
                        <input type="password" id="signup-password" name="pass" required minlength="8" placeholder="Create a password">
                        <span class="toggle-password"><i class="fas fa-eye"></i></span>
                    </div>
                </div>
                <div class="input-group">
                    <label for="signup-confirm-password">Confirm Password</label>
                    <div class="input-icon">
                        <i class="fas fa-lock"></i>
                        <input type="password" id="signup-confirm-password" name="compass" required minlength="8" placeholder="Confirm your password">
                        <span class="toggle-password"><i class="fas fa-eye"></i></span>
                    </div>
                </div>
                <button type="submit" class="btn">Sign Up</button>
            </form>
        </div>

        <!-- Sign In Form -->
        <div class="form-container sign-in-container">
            <form class="form" action="LoginServlet" method="POST">
                <h2>Login</h2>
                <div class="input-group">
                    <label for="login-email">Email Address</label>
                    <div class="input-icon">
                        <i class="fas fa-envelope"></i>
                        <input type="email" id="login-email" name="email" required placeholder="Enter your email">
                    </div>
                </div>
                <div class="input-group">
                    <label for="login-password">Password</label>
                    <div class="input-icon">
                        <i class="fas fa-lock"></i>
                        <input type="password" id="login-password" name="password" required placeholder="Enter your password" minlength="8">
                        <span class="toggle-password"><i class="fas fa-eye"></i></span>
                    </div>
                </div>
                <button type="submit" class="btn">Login</button>
            </form>
        </div>

        <!-- Overlay -->
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h2>Welcome Back!</h2>
                    <p>To keep connected with us please login with your personal info</p>
                    <button class="btn ghost" id="signIn">Login</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h2>Welcome!</h2>
                    <p>Enter your personal details and start your journey with us</p>
                    <button class="btn ghost" id="signUp">Sign Up</button>
                    <a href="login.jsp" class="btn ghost" id="signUp">Admin Login</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Link to JavaScript -->
    <script src="scripts.js"></script>
</body>
</html>