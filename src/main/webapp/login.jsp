<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>

<form action="userlogin">
<fieldset>

<legend>LOGIN PAGE</legend>

username:<input type="email" name="email"><br><br>
password:<input type="password" name="pass"><br><br>
<input type="submit" value="LOGIN">
<input type="reset" value="CANCEL">

</fieldset>
</form>
<a href="userSignup.jsp"><button>HOME</button> </a>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #ff7e5f, #feb47b);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #fff;
    }
    fieldset {
        background: #ffffff;
        color: #333;
        border-radius: 10px;
        box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.3);
        padding: 20px;
        width: 350px;
        animation: slideIn 1s ease-in-out;
    }
    legend {
        font-size: 20px;
        font-weight: bold;
        text-align: center;
    }
    input[type="email"], input[type="password"] {
        width: 90%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }
    input[type="email"]:focus, input[type="password"]:focus {
        border-color: #ff7e5f;
        outline: none;
    }
    .button-container {
        display: flex;
        justify-content: space-between;
    }
    input[type="submit"], input[type="reset"], a {
        width: 48%;
        background-color: #ff7e5f;
        color: #fff;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 14px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s;
        text-align: center;
        text-decoration: none;
    }
    input[type="submit"]:hover, input[type="reset"]:hover, a:hover {
        background-color: #feb47b;
        transform: scale(1.05);
    }
    .home-link {
        margin-top: 15px;
        display: flex;
        justify-content: center;
    }
    @keyframes slideIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
    a{
    	text-decoration:none;
    }
</style>
</head>
<body>

<form action="userlogin">
    <fieldset>
        <legend>LOGIN PAGE</legend>

        <label for="email">Username:</label><br>
        <input type="email" id="email" name="email" placeholder="Enter your email"><br>

        <label for="pass">Password:</label><br>
        <input type="password" id="pass" name="pass" placeholder="Enter your password"><br>

        <div class="button-container">
            <input type="submit" value="LOGIN">
            <input type="reset" value="CANCEL">
             <button><a href="userSignup.jsp" >HOME</a></button>
        </div>
    </fieldset>
</form>



</body>
</html>
