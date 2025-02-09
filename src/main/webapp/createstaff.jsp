<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREATE STAFF</title>
</head>
<body>

<form action="createStaff">

<fieldset>

<legend>CREATE STAFF</legend>
name:<input type="text" name="name"><br><br>
email:<input type="email" name="email"><br><br>
password:<input type="password" name="pass"><br><br>
<input type="submit" value="CREATE STAFF">
<input type="reset" value="CANCEL">

</fieldset>

</form>
<a href="menu.jsp">GO TO</a>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Staff</title>
    
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

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        h1 {
            text-align: center;
            color: #34495e;
            margin-bottom: 30px;
            font-size: 2em;
        }

        fieldset {
            border: none;
            padding: 0;
        }

        legend {
            font-size: 1.5em;
            color: #2980b9;
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: 500;
            margin-bottom: 8px;
            color: #34495e;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            color: #34495e;
        }

        input[type="submit"], input[type="reset"] {
            width: 48%;
            padding: 12px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #2980b9;
            box-shadow: 0 0 8px rgba(41, 128, 185, 0.6);
        }

        .button-container {
            display: flex;
            justify-content: space-between;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #2980b9;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Create Staff</h1>
        <form action="createStaff">
            <fieldset>
                <legend>Staff Details</legend>
                
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter staff name" required><br><br>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter staff email" required><br><br>

                <label for="pass">Password:</label>
                <input type="password" id="pass" name="pass" placeholder="Enter password" required><br><br>

                <div class="button-container">
                    <input type="submit" value="Create Staff">
                    <input type="reset" value="Cancel">
                </div>
            </fieldset>
        </form>

        <a href="menu.jsp">Back to Menu</a>
    </div>

</body>
</html>
