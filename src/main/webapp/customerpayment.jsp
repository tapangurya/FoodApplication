<%@page import="com.dao.BrachDao"%>
<%@page import="com.dao.CustomerDao"%>
<%@page import="com.dto.FoodOrder"%>
<%@page import="com.dto.Branch"%>
<%@page import="com.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CustomarPaymentPage</title>
</head>
<body>

<%

Customer customerObject = (Customer) request.getSession().getAttribute("customer");
Branch b = (Branch) request.getSession().getAttribute("branch");
FoodOrder f = (FoodOrder) request.getSession().getAttribute("foodorder");


Customer c=new CustomerDao().findCustomerByID(customerObject.getId());
Branch branch=new BrachDao().findBranchById(b.getId());

%>

<form action="payment">
customer id:<input type="text" name="id" value="<%=c.getId()%>" readonly="readonly"><br><br>
customer name:<input type="text" name="name" value="<%=c.getName()%>" readonly="readonly"><br><br>
branchId:<input type="text" name="bid" value="<%=b.getId()%>"><br><br>
foodOrderID:<input type="text" name="fid" value="<%=f.getId()%>"><br><br>
payment<input type="text" name="payment" value="<%=(double)session.getAttribute("pay") %>">
<br><br>
<input type="submit" value="PAYMENT">
</form>
</body>
</html>