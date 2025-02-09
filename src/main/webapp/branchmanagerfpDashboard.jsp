<%-- <%@page import="com.dto.FoodProduct"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BRANCH MANAGER DASHBOARD</title>
</head>
<body>

	<%
	List<FoodProduct> list = (List<FoodProduct>) session.getAttribute("listoffp");
	%>

	<table border="1px solid black" cellspacing="2px" cellpadding="2px" width="100%">
		<tr>
			<th>SNO</th>
			<th>FP_ID</th>
			<th>FP_NAME</th>
			<th>FP_AVAILABILITY</th>
			<th>FP_ABOUT</th>
			<th>FP_PRICE</th>
			<th>FP_TYPE</th>
			<th>CHANGE STATUS</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>

		<%
		int i=1;
		for (FoodProduct f : list) {
		%>

			<tr>
			<td><%=i++ %></td>
			<td><%=f.getId() %></td>
			<td><%=f.getName()%></td>
			<td><%=f.isAvailability() %></td>
			<td><%=f.getAbout() %></td>
			<td><%=f.getPrice() %></td>
			<td><%=f.getType() %></td>
			<td><a href="changeAvailability?id=<%=f.getId()%>"><button>CHANGE STATUS</button></a></td>
			<td><a href="updatefoodproduct.jsp?fpid=<%=f.getId()%>"><button>UPDATE</button></a></td>
			<td><a href="deletefoodproduct?fpid=<%=f.getId()%>"><button>DELETE</button></a></td>
			</tr>
		<%
		}
		%>
	</table>
<a href="createfoodProduct.jsp"><button>ADD FOOD PRODUCT</button></a>
<a href="menu.jsp"><button>HOME</button></a>
<a href="logout"><button>LOGOUT</button> </a>

</body>
</html> --%>




<%@page import="com.dto.FoodProduct"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Branch Manager Dashboard</title>

    <!-- Google Fonts for better typography -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Custom CSS for styling -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f7fb;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #2980b9;
            padding: 15px;
            color: white;
            text-align: center;
            font-size: 1.5em;
            font-weight: bold;
        }

        .container {
            margin: 20px;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #2980b9;
            color: white;
        }

        td {
            background-color: #fff;
            color: #34495e;
        }

        tr:hover {
            background-color: #f0f0f0;
        }

        .button-container {
            display: flex;
            gap: 20px;
            margin-top: 20px;
            justify-content: center;
        }

        .button-container button {
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .button-container button:hover {
            background-color: #2980b9;
            box-shadow: 0 0 8px rgba(41, 128, 185, 0.6);
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            padding: 10px;
            background-color: #2980b9;
            color: white;
            position: fixed;
            width: 100%;
            bottom: 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                font-size: 14px;
            }
            .button-container {
                flex-direction: column;
                gap: 10px;
            }
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        Branch Manager Dashboard
    </header>

    <div class="container">
        <%
        List<FoodProduct> list = (List<FoodProduct>) session.getAttribute("listoffp");
        %>

        <!-- Food Product Table -->
        <table>
            <tr>
                <th>SNO</th>
                <th>FP_ID</th>
                <th>FP_NAME</th>
                <th>FP_AVAILABILITY</th>
                <th>FP_ABOUT</th>
                <th>FP_PRICE</th>
                <th>FP_TYPE</th>
                <th>CHANGE STATUS</th>
                <th>UPDATE</th>
                <th>DELETE</th>
            </tr>

            <%
            int i = 1;
            for (FoodProduct f : list) {
            %>

            <tr>
                <td><%=i++ %></td>
                <td><%=f.getId() %></td>
                <td><%=f.getName()%></td>
                <td><%=f.isAvailability() ? "Available" : "Unavailable" %></td>
                <td><%=f.getAbout() %></td>
                <td><%=f.getPrice() %></td>
                <td><%=f.getType() %></td>
                <td><a href="changeAvailability?id=<%=f.getId()%>"><button>Change Status</button></a></td>
                <td><a href="updatefoodproduct.jsp?fpid=<%=f.getId()%>"><button>Update</button></a></td>
                <td><a href="deletefoodproduct?fpid=<%=f.getId()%>"><button>Delete</button></a></td>
            </tr>

            <%
            }
            %>
        </table>

        <!-- Action Buttons -->
        <div class="button-container">
            <a href="createfoodProduct.jsp"><button>Add Food Product</button></a>
            <a href="menu.jsp"><button>Home</button></a>
            <a href="logout"><button>Logout</button></a>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        © 2024 Branch Manager Dashboard | All Rights Reserved
    </div>

</body>
</html>
