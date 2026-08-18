<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@page import="model.User"%>

<%
User user=(User)session.getAttribute("loggedInUser");
boolean loggedIn=(user!=null);
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width,initial-scale=1.0">

<title>Foody | Online Food Delivery</title>

<link rel="preconnect"
href="https://fonts.googleapis.com">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="css/index.css">

<script src="js/index.js"
defer></script>

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

<a href="index.jsp">

Home

</a>

</li>

<li>

<a href="#offers">

Offers

</a>

</li>

<li>

<a href="#restaurants">

Restaurants

</a>

</li>

<%

if(loggedIn){

%>

<li>

<a href="orders">

My Orders

</a>

</li>

<li>

<a href="cart">

Cart

</a>

</li>

<li>

<a href="profile.jsp">

Profile

</a>

</li>

<li>

<a href="logout">

Logout

</a>

</li>

<%

}else{

%>

<li>

<a href="login.jsp">

Login

</a>

</li>

<li>

<a href="register.jsp">

Register

</a>

</li>

<%

}

%>

</ul>

</nav>

</header>

<!-- ================= HERO ================= -->

<section class="hero">

<div class="hero-overlay">

<div class="hero-content">

<h1>

Discover Amazing Food Near You

</h1>

<p>

Order delicious food from the best restaurants.

</p>

<form action="restaurants"
method="get"
class="search-box">

<input

type="text"

name="search"

placeholder="Search restaurants or dishes..."

required>

<button type="submit">

Search

</button>

</form>

<div class="hero-buttons">

<a href="restaurants"
class="primary-btn">

Explore Restaurants

</a>

<%

if(!loggedIn){

%>

<a href="register.jsp"
class="secondary-btn">

Get Started

</a>

<%

}

%>

</div>

</div>

</div>

</section>

<!-- ================= OFFERS ================= -->

<section
id="offers"
class="offers">

<div class="section-title">

<h2>

🔥 Exclusive Offers

</h2>

<p>

Save more every day with exciting discounts.

</p>

</div>

<div class="offer-container">

<div class="offer-card">

<span>50% OFF</span>

<h3>

WELCOME50

</h3>

<p>

For New Users

</p>

</div>

<div class="offer-card">

<span>

FREE DELIVERY

</span>

<h3>

Above ₹299

</h3>

<p>

Limited Time

</p>

</div>

<div class="offer-card">

<span>

20% Cashback

</span>

<h3>

UPI Payments

</h3>

<p>

Maximum ₹100

</p>

</div>

<div class="offer-card">

<span>

BUY 1 GET 1

</span>

<h3>

Pizza Festival

</h3>

<p>

Weekend Special

</p>

</div>

</div>

</section>
<!-- =========================================
            WHAT'S ON YOUR MIND?
========================================= -->

<section class="categories">

    <div class="section-title">

        <h2>🍽 What's on your mind?</h2>

        <p>Choose your favourite food and discover restaurants serving it.</p>

    </div>

    <div class="category-container">

        <div class="category">

            <a href="restaurants?category=Biryani">

                <img src="images/menu/chicken_biryani.jpg" alt="Biryani">

                <span>Biryani</span>

            </a>

        </div>

        <div class="category">

            <a href="restaurants?category=Pizza">

                <img src="images/menu/veg_pizza.jpg" alt="Pizza">

                <span>Pizza</span>

            </a>

        </div>

        <div class="category">

            <a href="restaurants?category=Burger">

                <img src="images/menu/zinger_burger.jpg" alt="Burger">

                <span>Burger</span>

            </a>

        </div>

        <div class="category">

            <a href="restaurants?category=Dosa">

                <img src="images/menu/chicken_nuggets.jpg" alt="Dosa">

                <span>Chicken nuggets</span>

            </a>

        </div>

        <div class="category">

            <a href="restaurants?category=Chinese">

                <img src="images/menu/cheese_pizza.jpg" alt="Chinese">

                <span>Cheese</span>

            </a>

        </div>

        <div class="category">

            <a href="restaurants?category=Cake">

                <img src="images/menu/lava_cake.jpg" alt="Desserts">

                <span>Cake</span>

            </a>

        </div>

        

    </div>

</section>



<!-- =========================================
        FEATURED RESTAURANTS
========================================= -->

<section id="restaurants" class="featured">

    <div class="section-title">

        <h2>⭐ Top Restaurant Chains in Bangalore</h2>

        <p>Popular restaurants loved by thousands.</p>

    </div>

    <div class="restaurant-grid">

        <div class="restaurant-card">

            <img src="images/restaurants/paradise.jpg">

            <div class="restaurant-content">

                <h3>Paradise Biryani</h3>

                <div class="restaurant-info">

                    ⭐ 4.8 • 30 mins

                </div>

                <p>

                    Hyderabadi • North Indian • Biryani

                </p>

                <a href="menu?restaurantID=1">

                    <button>

                        View Restaurant

                    </button>

                </a>

            </div>

        </div>



        <div class="restaurant-card">

            <img src="images/restaurants/pizzahut.jpg">

            <div class="restaurant-content">

                <h3>Pizza Hut</h3>

                <div class="restaurant-info">

                    ⭐ 4.6 • 25 mins

                </div>

                <p>

                    Pizza • Pasta • Italian

                </p>

                <a href="menu?restaurantID=2">

                    <button>

                        View Restaurant

                    </button>

                </a>

            </div>

        </div>



        <div class="restaurant-card">

            <img src="images/restaurants/kfc.jpg">

            <div class="restaurant-content">

                <h3>KFC</h3>

                <div class="restaurant-info">

                    ⭐ 4.5 • 22 mins

                </div>

                <p>

                    Burger • Chicken • Fast Food

                </p>

                <a href="menu?restaurantID=3">

                    <button>

                        View Restaurant

                    </button>

                </a>

            </div>

        </div>



        <div class="restaurant-card">

            <img src="images/restaurants/pizzahut.jpg">

            <div class="restaurant-content">

                <h3>Pizza Hut</h3>

                <div class="restaurant-info">

                    ⭐ 4.7 • 28 mins

                </div>

                <p>

                    Veg pizza 

                </p>

                <a href="menu?restaurantID=4">

                    <button>

                        View Restaurant

                    </button>

                </a>

            </div>

        </div>

    </div>

    <div class="explore-more">

        <a href="restaurants" class="primary-btn">

            Explore All Restaurants →

        </a>

    </div>

</section>



<!-- =========================================
            WHY CHOOSE FOODY
========================================= -->

<section class="about">

    <div class="section-title">

        <h2>❤️ Why Choose Foody?</h2>

        <p>Fast, secure and delicious food delivery.</p>

    </div>

    <div class="features">

        <div class="feature">

            <span>⚡</span>

            <h3>Fast Delivery</h3>

            <p>

                Get your food delivered within 30 minutes.

            </p>

        </div>

        <div class="feature">

            <span>🍽</span>

            <h3>Top Restaurants</h3>

            <p>

                Order from the best restaurants near you.

            </p>

        </div>

        <div class="feature">

            <span>💳</span>

            <h3>Secure Payments</h3>

            <p>

                UPI, Cards, Wallets and Cash on Delivery.

            </p>

        </div>

        <div class="feature">

            <span>🎁</span>

            <h3>Daily Offers</h3>

            <p>

                Enjoy exciting discounts every day.

            </p>

        </div>

    </div>

</section>



<!-- =========================================
            CUSTOMER REVIEWS
========================================= -->

<section class="testimonials">

    <div class="section-title">

        <h2>⭐ What Our Customers Say</h2>

    </div>

    <div class="review-container">

        <div class="review">

            <h3>Rahul Sharma</h3>

            <p>

                ⭐⭐⭐⭐⭐

                <br><br>

                Amazing delivery and excellent food quality.

            </p>

        </div>

        <div class="review">

            <h3>Priya Reddy</h3>

            <p>

                ⭐⭐⭐⭐⭐

                <br><br>

                The interface is simple and restaurants are awesome.

            </p>

        </div>

        <div class="review">

            <h3>Arjun Kumar</h3>

            <p>

                ⭐⭐⭐⭐⭐

                <br><br>

                Best food delivery app for my daily orders.

            </p>

        </div>

    </div>

</section>



<!-- =========================================
            DOWNLOAD APP
========================================= -->

<section class="app">

    <h2>

        📱 Download Foody App

    </h2>

    <p>

        Order faster using our Android & iOS applications.

    </p>

    <div class="store-buttons">

        <a href="#">

            📲 Google Play

        </a>

        <a href="#">

            🍎 App Store

        </a>

    </div>

</section>
<!-- =========================================
                FOOTER
========================================= -->

<footer>

    <div class="footer-container">

        <div class="footer-column">

            <h3>🍔 Foody</h3>

            <p>

                Delivering happiness with every order.

                Fresh food, fast delivery and thousands

                of restaurants at your fingertips.

            </p>

        </div>



        <div class="footer-column">

            <h3>Company</h3>

            <a href="index.jsp">Home</a>

            <a href="#offers">Offers</a>

            <a href="restaurants">Restaurants</a>

            <a href="#">About Us</a>

        </div>



        <div class="footer-column">

            <h3>Support</h3>

            <a href="#">Help Center</a>

            <a href="#">FAQs</a>

            <a href="#">Terms & Conditions</a>

            <a href="#">Privacy Policy</a>

        </div>



        <div class="footer-column">

            <h3>Follow Us</h3>

            <div class="social-icons">

                <a href="#">📘 Facebook</a>

                <a href="#">📷 Instagram</a>

                <a href="#">🐦 Twitter</a>

                <a href="#">💼 LinkedIn</a>

            </div>

        </div>

    </div>



    <hr>

    <div class="copyright">

        © 2026 Foody. All Rights Reserved.

    </div>

</footer>

</body>

</html>