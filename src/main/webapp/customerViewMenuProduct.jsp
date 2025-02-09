<%@page import="com.dto.FoodProduct"%>
<%@page import="java.util.List"%>
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
	List<FoodProduct> list = (List<FoodProduct>) session.getAttribute("listoffp");
	%>
	
	<h1>MENU LIST</h1>

<form action="foodorder">

	<table border="1px solid black" cellspacing="2px" cellpadding="2px"
		width="100%">
		<tr>
			<th>SNO</th>
			<th>FP_ID</th>
			<th>FP_NAME</th>
			<th>FP_AVAILABILITY</th>
			<th>FP_ABOUT</th>
			<th>FP_PRICE</th>
			<th>FP_TYPE</th>
			<th>ORDER</th>
			<th>QUANTITY</th>
		</tr>

		<%
		int i = 1;
		for (FoodProduct f : list) {
			if (f.isAvailability()) {
		%>

		<tr>
			<td><%=i++%></td>
			<td><%=f.getId()%></td>
			<td><%=f.getName()%></td>
			<td><%=f.isAvailability()%></td>
			<td><%=f.getAbout()%></td>
			<td><%=f.getPrice()%></td>
			<td><%=f.getType()%></td>
			<td><input type="checkbox" name="fp" value="<%=f.getId()%>">	</td>
			<td><input type="text" name="quantity" value="0"></td>
		</tr>
		<%
		}
		}
		%>

	</table>
<input type="submit" value="ORDER">
<input type="reset" value="CANCEL">
</form>

</body>
</html>