<%-- <%@page import="com.dto.FoodProduct"%>
<%@page import="com.dao.FoodProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
int foodProductId=Integer.parseInt(request.getParameter("fpid"));
//fetch data in database
FoodProductDao dao=new FoodProductDao();
FoodProduct fp=dao.findFoodProductById(foodProductId);
%>

<form action="updatefoodproduct">

<fieldset>

<legend>UPDATE FOOD PRODUCT</legend>
id:<input type="text" name="id" value="<%=fp.getId()%>" readonly="readonly"><br><br>
name:<input type="text" name="name" value="<%=fp.getName()%>" readonly="readonly"><br><br>
about<input type="text" name="about" value="<%=fp.getAbout()%>"><br><br>
price:<input type="text" name="price" value="<%=fp.getPrice()%>"><br><br>

<input type="submit" value="UPDATE FOOD PRODUCT">
<input type="reset" value="CANCEL">

</fieldset>


</form>
<a href="logout"><button>LOGOUT</button> </a>
</body>
</html> --%>