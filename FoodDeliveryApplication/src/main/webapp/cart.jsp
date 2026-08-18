<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="model.Cart"%>
<%@ page import="model.CartItem"%>

<%
Cart cart=(Cart)session.getAttribute("cart");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>

Foody | My Cart

</title>

<link rel="preconnect"
href="https://fonts.googleapis.com">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="css/cart.css">

</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav>

<div class="logo">

🍔 Foody

</div>

<div class="menu">

<a href="index.jsp">

Home

</a>

<a href="restaurants">

Restaurants

</a>

<a href="orders">

My Orders

</a>

<a href="profile.jsp">

Profile

</a>

</div>

</nav>



<div class="container">

<h1>

🛒 My Cart

</h1>

<%

if(cart!=null && !cart.isEmpty()){

for(CartItem item : cart.getItems()){

%>

<div class="cart-card">

<div class="food-image">

<img
src="<%=request.getContextPath()%>/<%=item.getImagePath()%>"
alt="Food">

</div>

<div class="food-details">

<h2>

<%=item.getItemName()%>

</h2>

<p class="restaurant">

🏪

<%=item.getRestaurantName()%>

</p>

<p class="price">

₹ <%=item.getPrice()%>

</p>

<div class="quantity">

<a
href="cart?action=decrease&menuID=<%=item.getMenuID()%>">

➖

</a>

<span>

<%=item.getQuantity()%>

</span>

<a
href="cart?action=increase&menuID=<%=item.getMenuID()%>">

➕

</a>

</div>

</div>

<div class="item-total">

<h3>

₹ <%=item.getTotalPrice()%>

</h3>

<a class="remove"

href="cart?action=remove&menuID=<%=item.getMenuID()%>">

🗑 Remove

</a>

</div>

</div>

<%

}

%>
<div class="cart-summary">

    <div class="summary-left">

        <h2>Order Summary</h2>

        <div class="summary-row">
            <span>Items</span>
            <span><%=cart.getItems().size()%></span>
        </div>

        <div class="summary-row">
            <span>Subtotal</span>
            <span>₹ <%=cart.getGrandTotal()%></span>
        </div>

        <div class="summary-row">
            <span>Delivery Fee</span>
            <span>₹ 40</span>
        </div>

        <div class="summary-row">
            <span>GST (5%)</span>
            <span>
                ₹ <%=String.format("%.2f", cart.getGrandTotal()*0.05)%>
            </span>
        </div>

        <hr>

        <div class="grand-total">

            <span>Grand Total</span>

            <span>

                ₹ <%=String.format("%.2f",
                cart.getGrandTotal()+40+(cart.getGrandTotal()*0.05))%>

            </span>

        </div>

    </div>

    <div class="summary-buttons">

        <%
int restaurantID = 0;

if(cart != null && !cart.isEmpty()){

    restaurantID = cart.getItems().iterator().next().getRestaurantID();
}
%>

<a href="menu?restaurantID=<%=restaurantID%>">

<button class="shop">

Continue Shopping

</button>

</a>

        <a href="cart?action=clear" class="clear-btn">

            🗑 Clear Cart

        </a>

        <a href="checkout.jsp" class="checkout-btn">

            Proceed To Checkout →

        </a>

    </div>

</div>

<%

}

else{

%>

<div class="empty-cart">

<img src="images/cart/empty-cart.png"
     alt="Empty Cart">

<h2>

Your Cart is Empty

</h2>

<p>

Looks like you haven't added anything yet.

</p>

<a href="restaurants"
class="continue-btn">

Browse Restaurants

</a>

</div>

<%

}

%>

</div>

<footer>

<div class="footer-content">

<p>

© 2026 Foody | Fresh Food Delivered Fast

</p>

</div>

</footer>

</body>

</html>