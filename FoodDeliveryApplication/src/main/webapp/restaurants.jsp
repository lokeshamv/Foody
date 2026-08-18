<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="model.Restaurant"%>

<%
List<Restaurant> restaurants = (List<Restaurant>) request.getAttribute("restaurants");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Foody | Restaurants</title>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<nav>

    <div class="logo">
        🍔 Foody
    </div>

    <div class="menu">

        <a href="index.jsp">Home</a>

        <a href="cart.jsp">Cart</a>

        <a href="http://localhost:8080/FoodDeliveryApplication/orders">Orders</a>

        <a href="#">Profile</a>

        <a href="login.jsp">Logout</a>

    </div>

</nav>


<section class="hero">

<h1>Discover Great Food</h1>

<p>Order Delicious Food Near You</p>

</section>


<div class="search">

<input
type="text"
id="search"
placeholder="🔍 Search Restaurants..."
onkeyup="searchRestaurant()">

</div>


<div class="heading">

Popular Restaurants

</div>


<div class="container">

<%

if(restaurants!=null){

for(Restaurant r:restaurants){

String img=r.getImagePath();

if(img==null || img.trim().equals("")){

img="https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=700";

}

%>

<div class="card">

<img src="<%=img%>">

<div class="content">

<div class="row">

<div class="name">

<%=r.getName()%>

</div>

<div class="rating">

⭐ <%=r.getRating()%>

</div>

</div>


<div class="info">

🍽 <%=r.getCuisineType()%>

</div>


<div class="info">

📍 <%=r.getAddress()%>

</div>


<div class="info">

🛵 <%=r.getDeliveryTime()%> mins

</div>


<form action="menu" method="get">

<input
type="hidden"
name="restaurantID"
value="<%=r.getRestaurantID()%>">

<button>

View Menu

</button>

</form>

</div>

</div>

<%

}

}

else{

%>

<h2>No Restaurants Found</h2>

<%

}

%>

</div>

<footer>

© 2026 Foody | Food Delivery Application

</footer>

<script src="js/script.js"></script>

</body>
</html>