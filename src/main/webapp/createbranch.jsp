<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="createbranch">

<fieldset>
<legend>CREATE BRANCH</legend>

branchName:<input type="text" name="bn"><br><br>
address:<input type="text" name="address"><br><br>
phoneNumber:<input type="tel" name="mob"><br><br>
<input type="submit" value="CREATE BRANCH">
<input type="reset" value="CANCEL">

</fieldset>


</form>
<a href="userSignup.jsp"><button>HOME</button> </a>
<a href="logout"><button>LOGOUT</button> </a>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Branch</title>

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
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            margin: 20px;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
            font-size: 2.2em;
            margin-bottom: 25px;
            font-weight: 700;
        }

        fieldset {
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 8px;
        }

        legend {
            font-size: 1.4em;
            color: #2980b9;
            margin-bottom: 20px;
            font-weight: 600;
        }

        label {
            display: block;
            font-weight: 500;
            margin-bottom: 8px;
            color: #34495e;
        }

        input[type="text"], input[type="tel"] {
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

        .button-container {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        .footer {
            margin-top: 20px;
            text-align: center;
        }

        a {
            display: inline-block;
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
            margin-top: 10px;
            margin-right: 20px;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            h1 {
                font-size: 1.8em;
            }
            .container {
                padding: 20px;
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Create Branch</h1>
        
        <!-- Form for Branch Creation -->
        <form action="createbranch">
            <fieldset>
                <legend>Branch Details</legend>
                
                <div class="form-group">
                    <label for="bn">Branch Name:</label>
                    <input type="text" id="bn" name="bn" required placeholder="Enter branch name">
                </div>

                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address" required placeholder="Enter branch address">
                </div>

                <div class="form-group">
                    <label for="mob">Phone Number:</label>
                    <input type="tel" id="mob" name="mob" required placeholder="Enter phone number">
                </div>

                <!-- Submit and Reset Buttons -->
                <div class="button-container">
                    <input type="submit" value="Create Branch">
                    <input type="reset" value="Cancel">
                </div>
            </fieldset>
        </form>

        <!-- Footer Section with Links -->
        <div class="footer">
            <a href="userSignup.jsp"><button style="padding: 10px 20px; background-color: #2ecc71; color: white; border: none; border-radius: 5px; font-size: 14px;">Home</button></a>
            <a href="logout"><button style="padding: 10px 20px; background-color: #e74c3c; color: white; border: none; border-radius: 5px; font-size: 14px;">Logout</button></a>
        </div>
    </div>

</body>
</html>
