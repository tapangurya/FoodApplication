<%-- <%@page import="com.dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>staff dashboard</title>
</head>
<body>

	<%
	List<User> listOfStaff = (List<User>) session.getAttribute("listOfStaff");
	%>

	<table border="1px solid" cellspacing="5px" cellpadding="5px"
		width="100%">
		<tr>

			<th>S.NO</th>
			<th>STAFF_ID</th>
			<th>STAFF_NAME</th>
			<th>STAFF_EMAIL</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>

		<!-- java code -->

		<%
		int i = 1;
		for (User u : listOfStaff) {
		%>

		<tr>
			<td><%=i++%></td>
			<td><%=u.getId()%></td>
			<td><%=u.getName()%></td>
			<td><%=u.getEmail()%></td>
			<td><a href="updateStaff.jsp?id=<%=u.getId()%>"><button>UPDATE</button>
			</a></td>
			<td><a href="deleteStaff?id=<%=u.getId()%>"><button>DELETE</button>
			</a></td>
		</tr>

		<%
		}
		%>
	</table>
	<a href="createstaff.jsp"><button>ADD STAFF</button> </a>
	<a href="menu.jsp">GO TO</a>

</body>
</html> --%>






<%@page import="com.dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Dashboard</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        table th, table td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        table th {
            background-color: #3498db;
            color: white;
        }

        table tr:hover {
            background-color: #f1f1f1;
        }

        table td a {
            text-decoration: none;
        }

        /* Glowing Button Styles */
        .btn-glow {
            padding: 10px 20px;
            color: #fff;
            border: none;
            background-color: #3498db;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
            border-radius: 5px;
            box-shadow: 0 0 20px rgba(52, 152, 219, 0.4);
            transition: all 0.3s ease;
        }

        .btn-glow:hover {
            background-color: #2980b9;
            box-shadow: 0 0 20px rgba(41, 128, 185, 0.8);
        }

        /* Action Buttons */
        .btn-add, .btn-logout, .btn-back {
            padding: 10px 20px;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-add {
            background-color: #27ae60;
        }

        .btn-add:hover {
            background-color: #229954;
            box-shadow: 0 0 20px rgba(39, 174, 96, 0.6);
        }

        .btn-logout {
            background-color: #e74c3c;
        }

        .btn-logout:hover {
            background-color: #c0392b;
            box-shadow: 0 0 20px rgba(231, 76, 60, 0.6);
        }

        .btn-back {
            background-color: #f39c12;
        }

        .btn-back:hover {
            background-color: #d68910;
            box-shadow: 0 0 20px rgba(243, 156, 18, 0.6);
        }

        .container {
            text-align: center;
            margin-top: 20px;
        }

        /* Back button functionality */
        #backButton {
            margin-top: 15px;
        }
    </style>
</head>
<body>

    <!-- Java Code -->
    <%
    List<User> listOfStaff = (List<User>) session.getAttribute("listOfStaff");
    %>

    <h1>Staff Dashboard</h1>

    <!-- Table for Staff Data -->
    <table>
        <thead>
            <tr>
                <th>S.NO</th>
                <th>STAFF_ID</th>
                <th>STAFF_NAME</th>
                <th>STAFF_EMAIL</th>
                <th>UPDATE</th>
                <th>DELETE</th>
            </tr>
        </thead>
        <tbody>
            <%
            int i = 1;
            for (User u : listOfStaff) {
            %>
            <tr>
                <td><%=i++%></td>
                <td><%=u.getId()%></td>
                <td><%=u.getName()%></td>
                <td><%=u.getEmail()%></td>
                <td><a href="updateStaff.jsp?id=<%=u.getId()%>"><button class="btn-glow">UPDATE</button></a></td>
                <td><a href="deleteStaff?id=<%=u.getId()%>"><button class="btn-glow">DELETE</button></a></td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>

    <!-- Action Buttons -->
    <div class="container">
        <a href="createstaff.jsp"><button class="btn-add">Add Staff</button></a>
        <a href="menu.jsp"><button class="btn-back">Go to Menu</button></a>
        <a href="logout"><button class="btn-logout">Logout</button></a>
    </div>

</body>
</html>
