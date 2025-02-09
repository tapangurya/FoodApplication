<%-- <%@page import="com.dto.Item"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.FoodOrder"%>
<%@page import="com.dao.FoodOrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
int foID=Integer.parseInt(request.getParameter("foid"));
List<Item> list=new FoodOrderDao().foodOrderById(foID).getItems();
%>

<table border="1px solid black" cellpadding="2px" cellspacing="3px" width="100%">

<tr>
<th>SN</th>
<th>Item_Id</th>
<th>Item_name</th>
<th>Item_type</th>
<th>Item_price</th>
<th>Item_Quantity</th>

</tr>

<%
int i1=1;
for(Item i:list){ %>
<tr>
<td><%=i1++ %></td>
<td><%=i.getId() %></td>
<td><%=i.getProductName() %></td>
<td><%=i.getType() %></td>
<td><%=i.getPrice() %></td>
<td><%=i.getQuantity() %></td>
<tr>
<%} %>
</table>

<a href="staff.jsp"> back </a>
<a href="stafflogin.jsp"> HOME </a>

</body>
</html> --%>


<%@page import="com.dto.Item"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.FoodOrder"%>
<%@page import="com.dao.FoodOrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Order Details</title>
    
    <!-- Google Fonts for better typography -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Custom CSS for styling -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f7fb;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #2980b9;
            padding: 15px;
            color: white;
            text-align: center;
            font-size: 1.5em;
            font-weight: bold;
        }

        .container {
            margin: 20px;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #2980b9;
            color: white;
        }

        td {
            background-color: #fff;
            color: #34495e;
        }

        tr:hover {
            background-color: #f0f0f0;
        }

        .button-container {
            display: flex;
            gap: 20px;
            margin-top: 20px;
            justify-content: center;
        }

        .button-container a {
            text-decoration: none;
        }

        .button-container button {
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .button-container button:hover {
            background-color: #2980b9;
            box-shadow: 0 0 8px rgba(41, 128, 185, 0.6);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                font-size: 14px;
            }
            .button-container {
                flex-direction: column;
                gap: 10px;
            }
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        Food Order Details
    </header>

    <div class="container">
        <%
        int foID = Integer.parseInt(request.getParameter("foid"));
        List<Item> list = new FoodOrderDao().foodOrderById(foID).getItems();
        %>

        <!-- Food Order Items Table -->
        <table>
            <tr>
                <th>SN</th>
                <th>Item ID</th>
                <th>Item Name</th>
                <th>Item Type</th>
                <th>Item Price</th>
                <th>Item Quantity</th>
            </tr>

            <%
            int i1 = 1;
            for (Item i : list) {
            %>
            <tr>
                <td><%=i1++ %></td>
                <td><%=i.getId() %></td>
                <td><%=i.getProductName() %></td>
                <td><%=i.getType() %></td>
                <td><%=i.getPrice() %></td>
                <td><%=i.getQuantity() %></td>
            </tr>
            <% 
            }
            %>
        </table>

        <!-- Navigation Buttons -->
        <div class="button-container">
            <a href="staff.jsp"><button>Back</button></a>
            <a href="stafflogin.jsp"><button>Home</button></a>
        </div>
    </div>

</body>
</html>
