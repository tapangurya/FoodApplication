<%-- <%@page import="com.dao.CustomerDao"%>
<%@page import="com.dto.Item"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.dto.Customer"%>
<%@page import="com.dto.Branch"%>
<%@page import="com.dto.User"%>
<%@page import="com.dto.FoodOrder"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.FoodOrderDao"%>
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
	User staff = (User) session.getAttribute("staff");
	Branch branch = staff.getBranchs().get(0);
	List<Item> listOfItem=null;
	Customer c=null;

	List<FoodOrder> list = new FoodOrderDao().findByFoodOrderStatus();
	if (!list.isEmpty()) {
		
	%>
	<h3>branch id:<%=branch.getId()%></h3>
	<h3>branch name:<%=branch.getBranchname() %></h3>
	
	
	
	<table border="1px solid black" cellpadding="2px" cellspacing="3px"
		width="100%">
		<tr>
			<th>SN</th>
			<th>BRANCH ID</th>
			<th>Cust_Id</th>
			<th>cust_Name</th>
			<th>Cust_Mob</th>
			<th>Cust_Address</th>
			<th>Cust_FoodOrderId</th>
			<th>Cust_FoodOrderTime</th>
			<th>Cust_FoodOrderPrice</th>
			<th>status</th>
			<th>View Item</th>
			<th>TAKE</th>
		</tr>
		
		<% 
		//System.out.println("branch id "+branch.getId());
		//System.out.println( "cust id "+c.getId());
		int id=1;
		for(FoodOrder f:list)
		{
			if(f.getBranchId()==branch.getId())
			{
				c=new CustomerDao().findCustomerByID(f.getCustId());
				System.out.println(c.getId());
				System.out.println("branchid:"+f.getBranchId()+"-food Id "+f.getId());
			
				%>
				<tr>
						 <td><%=id++ %></td>
						 <td><%=branch.getId()%></td>
						 <td><%=c.getId() %></td>
						 <td><%=c.getName() %></td>
						 <td><%=c.getMob() %></td>
						 <td><%=c.getAddress() %></td>
						 <td><%=f.getId() %></td>
						 <td><%=f.getOrdertime() %></td>
						 <td><%=f.getTotalprice() %></td>
						 <td><%=f.isStatus() %></td>
						 <td><a href="viewItem.jsp?foid=<%=f.getId()%>"><button>VIEW ITEM</button> </a> </td>
						 <td><a href="takeFoodOrder?foid=<%=f.getId()%>&cid=<%=c.getId()%>&bid=<%=branch.getId()%>"><button>TAKE</button> </a> </td>	 
				 </tr>
				<%	
			}
		}
		
		%>
	</table>
	<%} %>
	
	
	
	
	<a href="stafflogin.jsp"> HOME </a>
</body>
</html> --%>



<%@page import="com.dao.CustomerDao"%>
<%@page import="com.dto.Item"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.dto.Customer"%>
<%@page import="com.dto.Branch"%>
<%@page import="com.dto.User"%>
<%@page import="com.dto.FoodOrder"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.FoodOrderDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Food Order Dashboard</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }

        h1, h3 {
            color: #333;
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
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        button:hover {
            background-color: #2980b9;
            box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.15);
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
            font-size: 28px;
        }

        .container {
            padding: 10px 85px;
            max-width: 1200px;
        }

        .navbar {
            background-color: #34495e;
            padding: 10px;
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
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

<!-- Header Section -->
<div class="header">
    <h1>Customar Order Dashboard</h1>
</div>

<!-- Navbar Section -->
<div class="navbar">
    <a href="staffProfile.jsp">Profile</a>
    <a href="viewOrders.jsp">Orders</a>
    <a href="logout">Logout</a>
</div>

<!-- Main Content Section -->
<div class="container">
    <%

        User staff = (User) session.getAttribute("staff");
        Branch branch = staff.getBranchs().get(0);
        List<Item> listOfItem = null;
        Customer c = null;

        List<FoodOrder> list = new FoodOrderDao().findByFoodOrderStatus();
        if (!list.isEmpty()) {

    %>

    <h3>Branch ID: <%= branch.getId() %></h3>
    <h3>Branch Name: <%= branch.getBranchname() %></h3>

    <table>
        <thead>
            <tr>
                <th>SN</th>
                <th>BRANCH ID</th>
                <th>CUST_ID</th>
                <th>CUST_NAME</th>
                <th>CUST_MOB</th>
                <th>CUST_ADDRESS</th>
                <th>CUST_FOOD_ORDER_ID</th>
                <th>ORDER_TIME</th>
                <th>TOTAL_PRICE</th>
                <th>STATUS</th>
                <th>VIEW ITEM</th>
                <th>TAKE</th>
            </tr>
        </thead>
        <tbody>
            <%
                int id = 1;
                for (FoodOrder f : list) {
                    if (f.getBranchId() == branch.getId()) {
                        c = new CustomerDao().findCustomerByID(f.getCustId());
            %>
            <tr>
                <td><%= id++ %></td>
                <td><%= branch.getId() %></td>
                <td><%= c.getId() %></td>
                <td><%= c.getName() %></td>
                <td><%= c.getMob() %></td>
                <td><%= c.getAddress() %></td>
                <td><%= f.getId() %></td>
                <td><%= f.getOrdertime() %></td>
                <td><%= f.getTotalprice() %></td>
                <td><%= f.isStatus() %></td>
                <td><a href="viewItem.jsp?foid=<%= f.getId() %>"><button>VIEW ITEM</button></a></td>
                <td><a href="takeFoodOrder?foid=<%= f.getId() %>&cid=<%= c.getId() %>&bid=<%= branch.getId() %>"><button>TAKE</button></a></td>
            </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>

    <% } %>
</div>

<!-- Footer Section -->
<div class="footer">
    <p>&copy; 2024 flyyingBird PLT. All Rights Reserved.</p>
</div>

</body>
</html>
