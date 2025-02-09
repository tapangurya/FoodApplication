<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<a href="navigateToCreatefoodProduct"><button>ADD FOOD PRODUCT</button> </a><br><br><!--  -->
<a href="findAllFoodProduct"><button>FIND ALL FOOD PRODUCT</button> </a><br><br>
 <a href="createstaff.jsp"><button>CREATE STAFF</button> </a><br><br>
 <a href="findAllStaff"><button>FIND ALL STAFF</button> </a><br><br>
 

<br><br>
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
    <title>Admin Menu</title>
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 500px;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        button {
            background-color: #3498db;
            color: white;
            padding: 12px 20px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            margin: 10px 0;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(52, 152, 219, 0.4);
            transition: all 0.3s ease;
        }

        button:hover {
            background-color: #2980b9;
            box-shadow: 0 4px 12px rgba(41, 128, 185, 0.6);
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Admin Menu</h1>
        <a href="navigateToCreatefoodProduct">
            <button>ADD FOOD PRODUCT</button>
        </a>
        <br>
        <a href="findAllFoodProduct">
            <button>FIND ALL FOOD PRODUCT</button>
        </a>
        <br>
        <a href="createstaff.jsp">
            <button>CREATE STAFF</button>
        </a>
        <br>
        <a href="findAllStaff">
            <button>FIND ALL STAFF</button>
        </a>
        <br>
        <a href="logout">
            <button>LOGOUT</button>
        </a>
    </div>
</body>
</html>
