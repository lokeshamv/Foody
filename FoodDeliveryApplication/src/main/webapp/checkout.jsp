<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="model.Cart"%>
<%@ page import="model.CartItem"%>

<%
Cart cart = (Cart) session.getAttribute("cart");

if(cart == null || cart.isEmpty()){
    response.sendRedirect("cart.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Foody | Checkout</title>

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

background:#fff;

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

/* Container */

.container{

width:90%;

max-width:900px;

margin:40px auto;

background:white;

padding:30px;

border-radius:12px;

box-shadow:0 5px 20px rgba(0,0,0,.1);

}

h2{

margin-bottom:20px;

color:#ff5200;

}

table{

width:100%;

border-collapse:collapse;

margin-bottom:25px;

}

th{

background:#ff5200;

color:white;

padding:15px;

}

td{

padding:15px;

border-bottom:1px solid #ddd;

text-align:center;

}

.total{

text-align:right;

font-size:26px;

font-weight:bold;

margin-top:20px;

color:#ff5200;

}

label{

font-weight:600;

display:block;

margin:20px 0 10px;

}

select{

width:100%;

padding:12px;

border-radius:6px;

border:1px solid #ccc;

}

button{

width:100%;

margin-top:30px;

padding:15px;

border:none;

border-radius:8px;

background:#ff5200;

color:white;

font-size:18px;

cursor:pointer;

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

</div>

</nav>

<div class="container">

<h2>Order Summary</h2>

<table>

<tr>

<th>Item</th>

<th>Price</th>

<th>Qty</th>

<th>Total</th>

</tr>

<%

for(CartItem item : cart.getItems()){

%>

<tr>

<td><%=item.getItemName()%></td>

<td>₹ <%=item.getPrice()%></td>

<td><%=item.getQuantity()%></td>

<td>₹ <%=item.getTotalPrice()%></td>

</tr>

<%

}

%>

</table>

<div class="total">

Grand Total : ₹ <%=cart.getGrandTotal()%>

</div>

<form action="checkout" method="post">

<label>

Select Payment Method

</label>

<select name="paymentMethod">

<option value="COD">

Cash On Delivery

</option>

<option value="UPI">

UPI

</option>

<option value="CARD">

Credit / Debit Card

</option>

</select>

<button type="submit">

Place Order

</button>

</form>

</div>

</body>

</html>