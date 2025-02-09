<%@page import="com.dto.Branch"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Custom CSS for styling -->
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

        /* Back and Admin Logout Button */
        .btn-back, .btn-logout {
            background-color: #e74c3c;
            color: white;
            padding: 10px 20px;
            font-size: 14px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-back:hover, .btn-logout:hover {
            background-color: #c0392b;
            box-shadow: 0 0 20px rgba(231, 76, 60, 0.6);
        }

        .container {
            text-align: center;
            margin-top: 20px;
        }

        /* Add Branch Link Styling */
        .add-branch-link {
            display: inline-block;
            margin-top: 20px;
            color: #fff;
            background-color: #27ae60;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: 0.3s;
        }

        .add-branch-link:hover {
            background-color: #229954;
            box-shadow: 0 0 20px rgba(39, 174, 96, 0.6);
        }

    </style>
</head>
<body>
	
	
	<!-- java code  -->
	<%
	List<Branch> listOfBranch = (List<Branch>) session.getAttribute("list");
	User admin = (User) session.getAttribute("admin");
	if(admin != null){
	%>
	

    <!-- Admin ID Heading -->
    <h1>Welcome, Admin ID: <%=admin.getId()%></h1>

    <!-- Table to display list of branches -->
    <table>
        <thead>
            <tr>
                <th>S.NO</th>
				<th>B_ID</th>
				<th>B_NAME</th>
				<th>B_ADDRESS</th>
				<th>B_PHONE_NUMBER</th>
				<th>UPDATE</th>
				<th>DELETE</th>
            </tr>
        </thead>
        <tbody>
            <%
            int i = 1;
            for (Branch b : listOfBranch) {
            %>
            <tr>
                <td><%=i++%></td>
                <td><%=b.getId()%></td>
                <td><%=b.getBranchname()%></td>
                <td><%=b.getAddress()%></td>
                <td><%=b.getPhonenumber()%></td>
                <td><a href="updateBranch.jsp?id=<%=b.getId()%>"><button class="btn-glow">UPDATE</button></a></td>
                <td><a href="deleteBranch?id=<%=b.getId()%>"><button class="btn-glow">DELETE</button></a></td>
            </tr>
            <%
            }
            %>
       
        </tbody>
    </table>

    <!-- Additional Admin Actions -->
    <div class="container">
        <a href="createbranch.jsp" class="add-branch-link">Add Branch</a>
        <a href="logout"><button class="btn-logout">Admin Logout</button></a>
        <a href="userSignup.jsp"><button class="btn-logout">Home</button></a>
        <button id="backButton" class="btn-back">Back</button>
    </div>

    <!-- Back button functionality -->
    <script>
        document.getElementById("backButton").onclick = function() {
            window.history.back();
        };
    </script>

    <%
    } else {
        response.getWriter().print("<h1>Login First</h1>");
        request.getRequestDispatcher("login.jsp").include(request, response);
    }
    %>

</body>
</html>
