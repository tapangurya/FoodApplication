<%@page import="com.dto.Item"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.Date"%>
<%@page import="com.dto.FoodOrder"%>
<%@page import="com.dao.BrachDao"%>
<%@page import="com.dao.CustomerDao"%>
<%@page import="com.dto.Customer"%>
<%@page import="com.dto.Branch"%>
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

Customer customerObject = (Customer) request.getSession().getAttribute("customer");
Branch b = (Branch) request.getSession().getAttribute("branch");
FoodOrder f = (FoodOrder) request.getSession().getAttribute("foodorder");


Customer c=new CustomerDao().findCustomerByID(customerObject.getId());
Branch branch=new BrachDao().findBranchById(b.getId());

%>

<h1>Your order:</h1>

<p><%=b.getBranchname() %></p>
<p><%=b.getAddress() %> </p>
<p>receipt time<%=LocalDateTime.now() %> </p>
<p>customername:<%=c.getName() %></p>
<p>order id:<%=f.getId() %></p>
<p>order time:<%=f.getOrdertime() %></p>

<table border="1px solid black">
<tr>
<th>sn</th>
<th>item name</th>
<th>quantity</th>
<th>total</th>
</tr>
<%
int i1=1;
double sum=0.0;
for(Item i:f.getItems())
{
%>
<tr> 
<td><%=i1++ %></td>
<td><%=i.getProductName() %></td>
<td><%=i.getQuantity() %></td>
<td><%=i.getPrice() %></td>
<%sum+=i.getPrice(); %>
</tr>
<%} %>

</table>
<p>total with 18% GST <h4><%= sum+(sum*0.18) %></h4> </p>
<%
session.setAttribute("pay",(sum+(sum*0.18)));
%>
<a href="customerpayment.jsp"><button>PAY</button> </a>

</body>
</html>