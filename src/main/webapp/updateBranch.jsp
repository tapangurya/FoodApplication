<%-- <%@page import="com.dto.Branch"%>
<%@page import="com.dao.BrachDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update branch</title>
</head>
<body>

<%

int bracnchId=Integer.parseInt(request.getParameter("id"));
//fetch branch Based on id
BrachDao dao=new BrachDao();
Branch branch=dao.findBranchById(bracnchId);
%>

<form action="updateBranch">

<fieldset>
<legend>UPDATE BRANCH</legend>

id:<input type="text" name="id" value="<%=branch.getId()%>" readonly="readonly"><br><br>
branchName:<input type="text" name="bn" value="<%=branch.getBranchname()%>"><br><br>
address:<input type="text" name="address" value="<%=branch.getAddress()%>"><br><br>
phoneNumber:<input type="tel" name="mob" value="<%=branch.getPhonenumber()%>"><br><br>

<input type="submit" value="UPDATE BRANCH">
<input type="reset" value="CANCEL">

</fieldset>
<a href="logout"><button>ADMIN LOGOUT</button> </a>
<a href="userSignup.jsp"><button>HOME</button> </a>
</body>
</html> --%>
<%@page import="com.dto.Branch"%>
<%@page import="com.dao.BrachDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Branch</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    fieldset {
        background: #ffffff;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        padding: 20px;
        width: 300px;
        animation: fadeIn 1s ease-in-out;
    }
    legend {
        font-weight: bold;
        font-size: 18px;
    }
    input[type="text"], input[type="tel"] {
        width: 90%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: border-color 0.3s ease;
    }
    input[type="text"]:focus, input[type="tel"]:focus {
        border-color: #007bff;
        outline: none;
    }
    input[type="submit"], input[type="reset"], button {
        background-color: #007bff;
        color: #ffffff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: transform 0.2s, background-color 0.3s;
        margin: 5px;
    }
    input[type="submit"]:hover, input[type="reset"]:hover, button:hover {
        background-color: #0056b3;
        transform: scale(1.1);
    }
    button {
        margin-top: 10px;
    }
    a {
        text-decoration: none;
    }
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-10px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
<script>
    function confirmCancel() {
        return confirm("Are you sure you want to cancel?");
    }
</script>
</head>
<body>

<%
    int bracnchId = Integer.parseInt(request.getParameter("id"));
    // Fetch branch Based on id
    BrachDao dao = new BrachDao();
    Branch branch = dao.findBranchById(bracnchId);
%>

<form action="updateBranch">
    <fieldset>
        <legend>UPDATE BRANCH</legend>

        <label for="id">ID:</label><br>
        <input type="text" id="id" name="id" value="<%= branch.getId() %>" readonly="readonly"><br><br>

        <label for="bn">Branch Name:</label><br>
        <input type="text" id="bn" name="bn" value="<%= branch.getBranchname() %>"><br><br>

        <label for="address">Address:</label><br>
        <input type="text" id="address" name="address" value="<%= branch.getAddress() %>"><br><br>

        <label for="mob">Phone Number:</label><br>
        <input type="tel" id="mob" name="mob" value="<%= branch.getPhonenumber() %>"><br><br>

        <input type="submit" value="UPDATE BRANCH">
        <input type="reset" value="CANCEL" onclick="return confirmCancel();">
        <a href="logout"><button>ADMIN LOGOUT</button></a>
    	<a href="userSignup.jsp"><button>HOME</button></a>
        
    </fieldset>
</form>
</body>
</html>
