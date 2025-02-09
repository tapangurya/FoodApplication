<%-- <%@page import="com.dto.Branch"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CustomarDashboard</title>
</head>
<body>

<%

 List<Branch> listOfBranch=(List<Branch>)session.getAttribute("list");

%>

<table border="1px solid black" cellpadding="2px" cellspacing="3px" width="100%">
<tr>

			<th>S.NO</th>
			<th>B_ID</th>
			<th>B_NAME</th>
			<th>B_ADDRESS</th>
			<th>B_PHONE_NUMBER</th>
			<th>SEE MENU</th>

</tr>
<%
int i=1;
for(Branch b:listOfBranch)
{
%>
<tr>
<tr>
			<td><%=i++%></td>
			<td><%=b.getId()%></td>
			<td><%=b.getBranchname()%></td>
			<td><%=b.getAddress()%></td>
			<td><%=b.getPhonenumber()%></td>
			<td> <a href="viewMenu?id=<%=b.getId() %>"><button>MENU</button></a> </td>
			
		</tr>

</tr>

<%} %>



</table>

</body>
</html> --%>

<%@page import="com.dto.Branch"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Dashboard</title>
    <!-- Adding some custom CSS for styling the popup and page layout -->
    <style>
        /* Global styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc;
        }

        h1, h2 {
            color: #333;
        }

        /* Popup CSS */
        .popup {
            display: none;
            position: fixed;
            top: 20%;
            left: 50%;
            transform: translateX(-50%);
            background-color: #28a745;
            color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            width: 300px;
            text-align: center;
        }

        .popup .close-btn {
            position: absolute;
            top: 5px;
            right: 10px;
            color: white;
            font-size: 20px;
            font-weight: bold;
            cursor: pointer;
        }

        .popup .close-btn:hover {
            color: #f1f1f1;
        }

        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #3498db;
            color: white;
        }

        td {
            background-color: #fff;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        /* Button Styles */
        button {
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2980b9;
        }

        /* Header Section */
        .header {
            background-color: #2c3e50;
            color: white;
            padding: 10px 0;
            text-align: center;
        }

        .header h1 {
            margin: 0;
            font-size: 24px;
        }

        .container {
            padding: 20px;
            max-width: 1200px;
            margin: auto;
        }

        .navbar {
            background-color: #34495e;
            padding: 10px;
            display: flex;
            justify-content: space-around;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #2980b9;
        }

        .footer {
            background-color: #2c3e50;
            color: white;
            padding: 20px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

    </style>
</head>
<body>

<!-- Popup Div -->
<div id="popup" class="popup">
    <span class="close-btn" onclick="closePopup()">&times;</span>
    <p>Customer Login Successful!</p>
</div>

<!-- Header Section -->
<div class="header">
    <h1>Customer Dashboard</h1>
</div>

<!-- Navbar Section -->
<div class="navbar">
    <a href="customerProfile.jsp">Profile</a>
    <a href="viewOrders.jsp">Orders</a>
    <a href="logout">Logout</a>
</div>

<!-- Main Content Section -->
<div class="container">

    <h2>Available Branches</h2>

    <%
        List<Branch> listOfBranch = (List<Branch>) session.getAttribute("list");
    %>

    <table>
        <thead>
            <tr>
                <th>S.NO</th>
                <th>B_ID</th>
                <th>B_NAME</th>
                <th>B_ADDRESS</th>
                <th>B_PHONE_NUMBER</th>
                <th>SEE MENU</th>
            </tr>
        </thead>
        <tbody>
            <%
                int i = 1;
                for (Branch b : listOfBranch) {
            %>
            <tr>
                <td><%= i++ %></td>
                <td><%= b.getId() %></td>
                <td><%= b.getBranchname() %></td>
                <td><%= b.getAddress() %></td>
                <td><%= b.getPhonenumber() %></td>
                <td><a href="viewMenu?id=<%= b.getId() %>"><button>MENU</button></a></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>

</div>

<!-- Footer Section -->
<div class="footer">
    <p>&copy; 2024 Company Name. All Rights Reserved.</p>
</div>

<!-- JS to display popup and close it after 2 seconds -->
<script>
    // Show the popup
    function showPopup() {
        var popup = document.getElementById('popup');
        popup.style.display = 'block';

        // Hide the popup after 2 seconds
        setTimeout(function() {
            popup.style.display = 'none';
        }, 2000);
    }

    // Close the popup manually
    function closePopup() {
        var popup = document.getElementById('popup');
        popup.style.display = 'none';
    }

    // Trigger the popup when the page loads
    window.onload = function() {
        showPopup();
    };
</script>

</body>
</html>
