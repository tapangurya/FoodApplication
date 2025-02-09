<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user Signup page </title>
</head>
<body>


<form action="userSignup">

<fieldset>

<legend>User Signup</legend>
name:<input type="text" name="name"><br><br>
email:<input type="email" name="email"><br><br>
password:<input type="password" name="pass"><br><br>
role:<input type="radio" name="role" value="admin">Admin
<input type="radio" name="role" value="branchmanager">Branch Manager<br><br>	
<!-- <input type="radio" name="role" value="staff">Staff<br><br> -->

<input type="submit" value="SIGNUP">
<input type="reset" value="CANCEL">

</fieldset>

</form>

<p>Already Having Account as Admin or BranchManager?<a href="login.jsp">Login Now</a></p>
<p>Already Having Account as staff?<a href="stafflogin.jsp">Login Now</a></p>
<p>login as customer?<a href="customerlogin.jsp">Login Now</a></p>




</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Signup Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #6a11cb, #2575fc);
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
header{
        font-size: 20px;
        font-weight: bold;
        text-align: center;
    }
    input[type="text"], input[type="email"], input[type="password"] {
        width: 90%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }
    input[type="radio"] {
        margin-right: 5px;
    }
    input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus {
        border-color: #6a11cb;
        outline: none;
    }
    .button-container {
        display: flex;
        justify-content: space-between;
    }
    input[type="submit"], input[type="reset"] {
        width: 48%;
        background-color: #6a11cb;
        color: #fff;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 14px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s;
    }
    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #2575fc;
        transform: scale(1.05);
    }
    a {
        color: red;
        text-decoration: none;
        font-weight: bold;
    }
    a:hover {
        text-decoration: underline;
    }
    p {
        text-align: center;
        margin-top: 10px;
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
</style>
<script>
    function validateForm() {
        const name = document.forms["signupForm"]["name"].value.trim();
        const email = document.forms["signupForm"]["email"].value.trim();
        const pass = document.forms["signupForm"]["pass"].value.trim();
        const role = document.forms["signupForm"]["role"].value;

        if (name === "") {
            alert("Name must be filled out");
            return false;
        }
        if (email === "") {
            alert("Email must be filled out");
            return false;
        }
        if (pass === "") {
            alert("Password must be filled out");
            return false;
        }
        if (!role) {
            alert("Please select a role");
            return false;
        }
        return true;
    }
</script>
</head>
<body>

<form name="signupForm" action="userSignup" onsubmit="return validateForm()">
    <fieldset>
        
        <header>User Signup</header>

        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email"><br>

        <label for="pass">Password:</label><br>
        <input type="password" id="pass" name="pass"><br>

        <label>Role:</label><br>
        <input type="radio" id="admin" name="role" value="admin">
        <label for="admin">Admin</label><br>
        <input type="radio" id="branchmanager" name="role" value="branchmanager">
        <label for="branchmanager">Branch Manager</label><br><br>

        <div class="button-container">
            <input type="submit" value="SIGNUP">
            <input type="reset" value="CANCEL">
        </div>

        <p>Already Having Account as Admin or Branch Manager? <a href="login.jsp">Login Now</a></p>
        <p>Already Having Account as Staff? <a href="stafflogin.jsp">Login Now</a></p>
        <p>Login as Customer? <a href="customerlogin.jsp">Login Now</a></p>
    </fieldset>
</form>

</body>
</html>
