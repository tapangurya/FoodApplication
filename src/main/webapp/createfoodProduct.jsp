<%-- <%@page import="com.dto.Menu"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>food Product</title>
</head>
<body>



<form action="createFoodProduct">

<fieldset>

<legend>FOOD PRODUCT</legend>
name:<input type="text" name="name"><br><br>
type:<input type="radio" name="type" value="veg">VEG
<input type="radio" name="type" value="non_veg">NON VEG<br><br>
about<input type="text" name="about"><br><br>
price:<input type="text" name="price"><br><br>

<input type="submit" value="CREATE FOOD PRODUCT">
<input type="reset" value="CANCEL">

</fieldset>


</form>
<a href="logout"><button>LOGOUT</button> </a>

</body>
</html> --%>




<%@page import="com.dto.Menu"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Food Product</title>

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

        input[type="text"], input[type="number"], select {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            color: #34495e;
            box-sizing: border-box;
        }

        /* Custom styles for the radio buttons and labels */
        .radio-group {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        input[type="radio"] {
            margin-right: 5px;
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
        <h1>Create Food Product</h1>
        
        <!-- Form for Food Product Creation -->
        <form action="createFoodProduct">
            <fieldset>
                <legend>Food Product Details</legend>
                
                <div class="form-group">
                    <label for="name">Food Name:</label>
                    <input type="text" id="name" name="name" required placeholder="Enter food name">
                </div>

                <div class="form-group">
                    <label for="type">Food Type:</label>
                    <div class="radio-group">
                        <input type="radio" id="veg" name="type" value="veg" required> <label for="veg">Veg</label>
                        <input type="radio" id="non_veg" name="type" value="non_veg"> <label for="non_veg">Non-Veg</label>
                    </div>
                </div>

                <div class="form-group">
                    <label for="about">Description:</label>
                    <input type="text" id="about" name="about" required placeholder="Enter food description">
                </div>

                <div class="form-group">
                    <label for="price">Price:</label>
                    <input type="text" id="price" name="price" required placeholder="Enter price">
                </div>

                <!-- Submit and Reset Buttons -->
                <div class="button-container">
                    <input type="submit" value="Create Food Product">
                    <input type="reset" value="Cancel">
                </div>
                
                <!-- Footer Section with Logout Button -->
                <div class="footer">
                    <a href="logout"><button style="padding: 10px 20px; background-color: #e74c3c; color: white; border: none; border-radius: 5px; font-size: 14px;">Logout</button></a>
                </div>

            </fieldset>
        </form>

    </div>

</body>
</html>

