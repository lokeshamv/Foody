<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="model.User"%>

<%
User user = (User)session.getAttribute("loggedInUser");

if(user == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>Foody | My Profile</title>

<link rel="preconnect"
href="https://fonts.googleapis.com">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="css/profile.css">

</head>

<body>

<!-- ================= NAVBAR ================= -->

<header>

<nav>

<div class="logo">

🍔 Foody

</div>

<ul class="menu">

<li>
<a href="index.jsp">Home</a>
</li>

<li>
<a href="restaurants">Restaurants</a>
</li>

<li>
<a href="cart">Cart</a>
</li>

<li>
<a href="orders">My Orders</a>
</li>

<li>
<a href="logout">Logout</a>
</li>

</ul>

</nav>

</header>

<!-- ================= PROFILE ================= -->

<section class="profile">

<div class="profile-card">

<div class="profile-image">

<img src="images/profile/default-user.png"
alt="User">

</div>

<h2>

<%=user.getUsername()%>

</h2>

<p>

Welcome to Foody!

</p>

</div>

<div class="profile-details">

<h2>

Personal Information

</h2>

<div class="detail">

<label>

Username

</label>

<p>

<%=user.getUsername()%>

</p>

</div>

<div class="detail">

<label>

Email

</label>

<p>

<%=user.getEmail()%>

</p>

</div>

<div class="detail">

<label>

Address

</label>

<p>

<%=user.getAddress()%>

</p>

</div>

<div class="detail">

<label>

Role

</label>

<p>

<%=user.getRole()%>

</p>

</div>



