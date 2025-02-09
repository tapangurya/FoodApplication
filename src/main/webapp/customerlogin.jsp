<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CUSTOMER LOGIN</title>
</head>
<body>

<form action="customerlogin">
<fieldset>

<legend>CUSTOMER LOGIN PAGE</legend>

username:<input type="email" name="email"><br><br>
password:<input type="password" name="pass"><br><br>
<input type="submit" value="LOGIN">
<input type="reset" value="CANCEL">

</fieldset>
</form>
<p>Don`t Have Account?<a href="customerSignup.jsp">signup Now</a></p><br><br>

</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Login</title>
    
    <!-- Google Fonts for better typography -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Custom CSS for styling -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f7fb;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 30px;
            font-weight: 700;
        }

        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            color: #34495e;
            box-sizing: border-box;
        }

        input[type="submit"], input[type="reset"] {
            width: 48%;
            padding: 12px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #2980b9;
            box-shadow: 0 0 8px rgba(41, 128, 185, 0.6);
        }

        .signup-link {
            color: #3498db;
            font-weight: bold;
        }

        .signup-link:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .login-container {
                padding: 20px;
                width: 90%;
            }
            h2 {
                font-size: 1.8em;
            }
        }
    </style>
</head>
<body>

    <div class="login-container">
        <h2>Customer Login</h2>

        <form action="customerlogin">
            
                
                
                <label for="email">Username (Email):</label>
                <input type="email" name="email" id="email" required placeholder="Enter your email"><br><br>
                
                <label for="pass">Password:</label>
                <input type="password" name="pass" id="pass" required placeholder="Enter your password"><br><br>

                <input type="submit" value="Login">
                <input type="reset" value="Cancel">
           
        </form>

        <p>Don't have an account? <a href="customerSignup.jsp" class="signup-link">Sign up now</a></p>
    </div>

</body>
</html>
