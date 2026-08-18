<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Foody | Order Placed</title>

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

display:flex;

justify-content:center;

align-items:center;

height:100vh;

background:#f5f5f5;

}

.container{

width:500px;

background:white;

padding:50px;

border-radius:15px;

text-align:center;

box-shadow:0 8px 25px rgba(0,0,0,.15);

}

.success{

font-size:80px;

color:#4CAF50;

}

h1{

margin:20px 0;

color:#333;

}

p{

font-size:18px;

color:#666;

margin-bottom:35px;

}

.buttons{

display:flex;

justify-content:center;

gap:20px;

}

button{

padding:15px 30px;

border:none;

border-radius:8px;

cursor:pointer;

font-size:16px;

font-weight:600;

}

.orders{

background:#ff5200;

color:white;

}

.orders:hover{

background:#e64a19;

}

.home{

background:#2196F3;

color:white;

}

.home:hover{

background:#1976D2;

}

</style>

</head>

<body>

<div class="container">

<div class="success">

✅

</div>

<h1>

Order Placed Successfully!

</h1>

<p>

Thank you for ordering with Foody.

Your food is being prepared.

</p>

<div class="buttons">

<form action="orders">

<button class="orders">

My Orders

</button>

</form>

<form action="restaurants">

<button class="home">

Continue Shopping

</button>

</form>

</div>

</div>

</body>

</html>