<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="model.Menu"%>

<%

List<Menu> menus =
(List<Menu>)request.getAttribute("menus");

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Restaurant Menu</title>

<link rel="stylesheet"
href="css/style.css">

<style>

.container{

display:grid;

grid-template-columns:repeat(auto-fit,minmax(300px,1fr));

gap:30px;

padding:50px;

}

.card{

background:white;

border-radius:15px;

overflow:hidden;

box-shadow:0 8px 20px rgba(0,0,0,.1);

transition:.3s;

}

.card:hover{

transform:translateY(-8px);

}

.card img{

width:100%;

height:220px;

object-fit:cover;

}

.content{

padding:20px;

}

.price{

margin-top:12px;

font-size:22px;

font-weight:bold;

color:#ff5200;

}

button{

width:100%;

padding:14px;

margin-top:18px;

background:#ff5200;

color:white;

border:none;

border-radius:8px;

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

<a href="restaurants">

Restaurants</a>

<a href="#">Cart</a>

<a href="#">Orders</a>

</div>

</nav>

<div class="heading">

Restaurant Menu

</div>

<div class="container">

<%

if(menus!=null){

for(Menu m:menus){

%>

<div class="card">

<img src="<%=request.getContextPath()%>/<%=m.getImagePath()%>">

<div class="content">

<h2>

<%=m.getItemName()%>

</h2>

<p>

<%=m.getDescription()%>

</p>

<div class="price">

₹ <%=m.getPrice()%>

</div>

<form action="cart" method="post">

<input
type="hidden"
name="menuID"
value="<%=m.getMenuID()%>">

<input
type="hidden"
name="quantity"
value="1">

<button>

Add To Cart

</button>

</form>

</div>

</div>

<%

}

}

else{

%>

<h2>No Menu Items Found</h2>

<%

}

%>

</div>

</body>

</html>