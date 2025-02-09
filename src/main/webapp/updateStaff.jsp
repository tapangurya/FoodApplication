<%-- <%@page import="com.dto.User"%>
<%@page import="com.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update staff</title>
</head>
<body>

<%
int staffId=Integer.parseInt(request.getParameter("id"));
UserDao userDao=new UserDao();
User  staff=userDao.findUserById(staffId);
%>

<form action="updatestaff">

<fieldset>

<legend>UPDATE STAFF</legend>
id:<input type="text" name="id" value="<%=staff.getId()%>" readonly="readonly"><br><br>
name:<input type="text" name="name" value="<%=staff.getName()%>"><br><br>
email:<input type="email" name="email" value="<%=staff.getEmail()%>"><br><br>
<input type="submit" value="UPDATE STAFF">
<input type="reset" value="CANCEL">

</fieldset>

</form>
<a href="menu.jsp">GO TO</a>

</body>
</html> --%>


<%@page import="com.dto.User"%>
<%@page import="com.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Staff</title>
<style>
    /* General body styling */
    body {
        font-family: 'Roboto', sans-serif;
        background: linear-gradient(to right, #6a11cb, #2575fc);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #fff;
    }

    /* Centered card styling */
    .card {
        background: #ffffff;
        color: #333;
        border-radius: 12px;
        box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
        padding: 30px 40px;
        width: 400px;
        animation: fadeIn 1s ease-in-out;
    }

    /* Legend and fieldset */
    fieldset {
        border: none;
    }

    legend {
        font-size: 24px;
        font-weight: bold;
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    /* Input styles */
    input[type="text"], input[type="email"] {
        width: 100%;
        padding: 12px 15px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 16px;
        transition: border-color 0.3s ease;
    }

    input[type="text"]:focus, input[type="email"]:focus {
        border-color: #6a11cb;
        outline: none;
    }

    /* Button styling */
    input[type="submit"], input[type="reset"] {
        width: 48%;
        padding: 12px 15px;
        margin: 10px 1%;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
        background: #6a11cb;
        color: #fff;
        transition: all 0.3s ease;
    }

    input[type="submit"]:hover, input[type="reset"]:hover {
        background: #2575fc;
        transform: scale(1.05);
    }

    /* Go To link styling */
    .goto-link {
        display: block;
        text-align: center;
        margin-top: 20px;
        font-size: 16px;
        color: #fff;
        text-decoration: none;
        font-weight: bold;
    }

    .goto-link:hover {
        text-decoration: underline;
    }

    /* Animation for the card */
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Responsive design for smaller devices */
    @media (max-width: 500px) {
        .card {
            width: 90%;
        }

        input[type="submit"], input[type="reset"] {
            width: 100%;
            margin-bottom: 10px;
        }
    }
</style>
</head>
<body>

<div class="card">
    <%
        int staffId = Integer.parseInt(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User staff = userDao.findUserById(staffId);
    %>
    <form action="updatestaff">
        <fieldset>
            <legend>UPDATE STAFF</legend>

            <label for="id">ID:</label>
            <input type="text" id="id" name="id" value="<%=staff.getId()%>" readonly="readonly">

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="<%=staff.getName()%>">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%=staff.getEmail()%>">

            <div style="display: flex; justify-content: space-between;">
                <input type="submit" value="UPDATE STAFF">
                <input type="reset" value="CANCEL">
            </div>
        </fieldset>
    </form>
    <a href="menu.jsp" class="goto-link">GO TO</a>
</div>

</body>
</html>
