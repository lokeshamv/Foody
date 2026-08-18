<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="model.Order"%>

<%
List<Order> orders = (List<Order>) request.getAttribute("orders");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Foody | My Orders</title>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#f5f5f5;
}

/* Navbar */

nav{

height:70px;

background:white;

display:flex;

justify-content:space-between;

align-items:center;

padding:0 60px;

box-shadow:0 2px 10px rgba(0,0,0,.1);

}

.logo{

font-size:30px;

font-weight:bold;

color:#ff5200;

}

.menu a{

text-decoration:none;

margin-left:25px;

color:#333;

font-weight:600;

}

.menu a:hover{

color:#ff5200;

}

/* Heading */

.heading{

padding:40px;

font-size:32px;

font-weight:bold;

}

/* Table */

table{

width:95%;

margin:auto;

border-collapse:collapse;

background:white;

box-shadow:0 8px 20px rgba(0,0,0,.1);

}

th{

background:#ff5200;

color:white;

padding:18px;

}

td{

padding:18px;

text-align:center;

border-bottom:1px solid #ddd;

}

.status{

font-weight:bold;

padding:8px 15px;

border-radius:20px;

color:white;

display:inline-block;

}

.PLACED{

background:#2196F3;

}

.PREPARING{

background:#ff9800;

}

.OUT_FOR_DELIVERY{

background:#9c27b0;

}

.DELIVERED{

background:#4CAF50;

}

.empty{

text-align:center;

margin-top:120px;

font-size:30px;

}

button{

padding:14px 30px;

margin:30px;

background:#ff5200;

color:white;

border:none;

border-radius:8px;

cursor:pointer;

font-size:16px;

}

button:hover{

background:#e64a19;

}

</style>

</head>

<body>

<nav>

<div class="logo">

🍔 Foody

</div>

<div class="menu">

<a href="restaurants">Restaurants</a>

<a href="cart">Cart</a>

<a href="index.jsp">Home</a>

</div>

</nav>

<div class="heading">

My Orders

</div>

<%

if(orders!=null && !orders.isEmpty()){

%>

<table>

<tr>

<th>Order ID</th>

<th>Restaurant ID</th>

<th>Order Date</th>

<th>Total Amount</th>

<th>Payment</th>

<th>Status</th>

</tr>

<%

for(Order order : orders){

%>

<tr>

<td>

#<%=order.getOrderID()%>

</td>

<td>

<%=order.getRestaurantID()%>

</td>

<td>

<%=order.getOrderDate()%>

</td>

<td>

₹ <%=order.getTotalAmount()%>

</td>

<td>

<%=order.getPaymentMethod()%>

</td>

<td>

<span class="status <%=order.getStatus()%>">

<%=order.getStatus()%>

</span>

</td>

</tr>

<%

}

%>

</table>



<form action="restaurants">

<button>

Order Again

</button>

</form>



<%

}

else{

%>

<div class="empty">

<h2>

No Orders Found 📦

</h2>

<br>

<form action="restaurants">

<button>

Start Ordering

</button>

</form>

</div>

<%

}

%>

</body>

</html>