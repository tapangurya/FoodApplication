<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="staffLogin">
<fieldset>

<legend>STAFF LOGIN PAGE</legend>

username:<input type="email" name="email"><br><br>
password:<input type="password" name="pass"><br><br>
<input type="submit" value="LOGIN">
<input type="reset" value="CANCEL">
<a href="userSignup.jsp"><button>HOME</button> </a>
</fieldset>
</form>


</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Staff Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('background-image.jpg') no-repeat center center fixed;
        background-size: cover;
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5); /* Add a dark overlay */
        backdrop-filter: blur(8px); /* Blur effect */
        z-index: -1; /* Place the background below the form */
    }
    fieldset {
        background: rgba(255, 255, 255, 0.9);
        border: none;
        border-radius: 10px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        padding: 20px;
        width: 350px;
        text-align: center;
        animation: fadeIn 1s ease-in-out;
    }
    legend {
        
    }
    input[type="email"], input[type="password"] {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }
    input[type="email"]:focus, input[type="password"]:focus {
        border-color: #6a11cb;
        outline: none;
        
    }
    .button-container {
        display: flex;
        justify-content: space-between;
        gap: 10px;
    }
    input[type="submit"], input[type="reset"], .home-button {
        width: 48%;
        padding: 10px;
        background-color: #6a11cb;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
        transition: background-color 0.3s ease, transform 0.2s;
    }
    input[type="submit"]:hover, input[type="reset"]:hover, .home-button:hover {
        background-color: #2575fc;
        transform: scale(1.05);
    }
    a.home-button {
        display: inline-block;
        text-decoration: none;
        text-align: center;
        line-height: 2.5;
    }
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
    header{
    font-size: 24px;
        font-weight: bold;
        color: #333;
        margin-bottom: 15px;}
</style>
</head>
<body>

<form action="staffLogin">
    <fieldset>
       
        <header>STAFF LOGIN PAGE</header>

        <label for="email">Username:</label><br>
        <input type="email" id="email" name="email" placeholder="Enter your email"><br>

        <label for="pass">Password:</label><br>
        <input type="password" id="pass" name="pass" placeholder="Enter your password"><br>

        <div class="button-container">
            <input type="submit" value="LOGIN">
            <input type="reset" value="CANCEL">
        </div>
        
        <div style="margin-top: 15px;">
            <a href="userSignup.jsp" class="home-button">HOME</a>
        </div>
    </fieldset>
</form>

</body>
</html>
