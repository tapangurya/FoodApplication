<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer signup</title>
</head>
<body>

<form action="customersignup">

<fieldset>

<legend>customer Signup</legend>
name:<input type="text" name="name"><br><br>
email:<input type="email" name="email"><br><br>
password:<input type="password" name="pass"><br><br>
mob:<input type="tel" name="mob"><br><br>
address:<input type="text" name="address"><br><br>

<input type="submit" value="SIGNUP">
<input type="reset" value="CANCEL">

</fieldset>

</form>

</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Signup</title>
    
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

        .signup-container {
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

        input[type="text"], input[type="email"], input[type="password"], input[type="tel"] {
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

        .footer {
            margin-top: 20px;
        }

        .footer a {
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .signup-container {
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

    <div class="signup-container">
        <h2>Customer Signup</h2>

        <form action="customersignup">
          
                
                <label for="name">Full Name:</label>
                <input type="text" name="name" id="name" required placeholder="Enter your full name"><br><br>

                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required placeholder="Enter your email"><br><br>

                <label for="pass">Password:</label>
                <input type="password" name="pass" id="pass" required placeholder="Enter your password"><br><br>

                <label for="mob">Mobile Number:</label>
                <input type="tel" name="mob" id="mob" required placeholder="Enter your mobile number"><br><br>

                <label for="address">Address:</label>
                <input type="text" name="address" id="address" required placeholder="Enter your address"><br><br>

                <input type="submit" value="Sign Up">
                <input type="reset" value="Cancel">
            
        </form>

        <div class="footer">
            <p>Already have an account? <a href="customerlogin.jsp">Login here</a></p>
        </div>
    </div>

</body>
</html>
