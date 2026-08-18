<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,Helvetica,sans-serif;
}

body{

display:flex;
justify-content:center;
align-items:center;

height:100vh;

background:linear-gradient(135deg,#ff6b35,#ff9800);

}

.container{

width:400px;

background:white;

padding:35px;

border-radius:12px;

box-shadow:0 10px 25px rgba(0,0,0,.2);

}

h2{

text-align:center;

margin-bottom:25px;

color:#ff5722;

}

input,textarea{

width:100%;

padding:12px;

margin-bottom:15px;

border:1px solid #ccc;

border-radius:6px;

font-size:15px;

}

button{

width:100%;

padding:12px;

background:#ff5722;

color:white;

border:none;

border-radius:6px;

font-size:16px;

cursor:pointer;

}

button:hover{

background:#e64a19;

}

p{

text-align:center;

margin-top:15px;

}

a{

text-decoration:none;

color:#ff5722;

font-weight:bold;

}

</style>

</head>

<body>

<div class="container">

<h2>Create Account</h2>

<form action="register" method="post">

<input type="text"
name="username"
placeholder="Enter Username"
required>

<input type="email"
name="email"
placeholder="Enter Email"
required>

<input type="password"
name="password"
placeholder="Enter Password"
required>

<textarea
name="address"
placeholder="Enter Address"
rows="4"
required></textarea>

<button type="submit">

Register

</button>

</form>

<p>

Already have an account?

<a href="login.jsp">

Login

</a>

</p>

</div>

</body>
</html>