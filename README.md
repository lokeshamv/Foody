🍔 Foody — Food Delivery Application

Foody is a full-stack food delivery web application developed using Java, JEE, JDBC, JSP, HTML, CSS, and JavaScript.

The application provides users with a seamless food-ordering experience, from browsing restaurants and menus to adding items to a cart, completing checkout, and viewing order history.

This project was developed to gain practical experience in full-stack Java web development, CRUD operations, database connectivity, layered architecture, and web application development using JEE technologies.

---

🚀 Features

👤 User Management

- User registration
- User login and authentication
- User profile management
- Session-based user flow

🍽️ Restaurant & Menu

- Browse available restaurants
- View restaurant menus
- Display food/menu items
- Manage menu-related data using CRUD operations

🛒 Shopping Cart

- Add food items to cart
- View cart items
- Manage cart contents
- Calculate order details before checkout

📦 Order Management

- Place food orders
- Checkout functionality
- Order confirmation
- View previous orders/order history

🔄 CRUD Operations

The application implements core Create, Read, Update, and Delete (CRUD) operations for application data through the DAO layer and database integration.

---

🛠️ Technology Stack

Technology| Usage
☕ Java| Core application development
🌐 JEE| Enterprise web application development
🔌 JDBC| Database connectivity
🖥️ JSP| Dynamic web pages
⚙️ Servlets| Request handling and business flow
🎨 HTML| Web page structure
🎨 CSS| Styling and responsive UI
⚡ JavaScript| Client-side functionality
🗄️ Relational Database| Application data persistence

---

🏗️ Project Architecture

The project follows a layered structure that separates application responsibilities.

Foody
│
├── src
│   └── main
│       ├── java
│       │   └── ...
│       │
│       └── webapp
│           ├── css
│           ├── images
│           ├── js
│           ├── META-INF
│           ├── WEB-INF
│           │
│           ├── index.jsp
│           ├── login.jsp
│           ├── register.jsp
│           ├── restaurants.jsp
│           ├── menu.jsp
│           ├── cart.jsp
│           ├── checkout.jsp
│           ├── orders.jsp
│           ├── orderSuccess.jsp
│           └── profile.jsp
│
└── ...

Java Package Structure

dao
├── MenuDAO.java
├── OrderDAO.java
├── RestaurantDAO.java
└── UserDAO.java

daoimpl
├── MenuDAOImpl.java
├── OrderDAOImpl.java
├── RestaurantDAOImpl.java
└── UserDAOImpl.java

model
├── Cart.java
├── CartItem.java
├── Menu.java
├── Order.java
├── OrderItem.java
├── Restaurant.java
└── User.java

servlet
├── CartServlet.java
├── CheckoutServlet.java
├── LoginServlet.java
├── MenuServlet.java
├── OrderHistoryServlet.java
├── RegisterServlet.java
└── RestaurantServlet.java

---

🧩 Application Flow

The application follows a typical Java web application flow:

User
  │
  ▼
JSP / HTML / CSS / JavaScript
  │
  ▼
Servlet
  │
  ▼
DAO
  │
  ▼
DAO Implementation
  │
  ▼
JDBC
  │
  ▼
Database

This separation helps keep the presentation, request handling, data access, and model layers organized and maintainable.

---

📱 Main Application Pages

🏠 Home Page

Provides the entry point to the Foody application and navigation to the major features.

🔐 Login & Registration

Users can create an account and log into the application.

🍴 Restaurants

Users can browse restaurants available through the application.

🍕 Menu

Users can explore food items offered by a restaurant.

🛒 Cart

Users can review and manage selected food items before placing an order.

💳 Checkout

Users can proceed through the checkout process and place their order.

📋 Orders

Users can view their previous orders and order history.

👤 Profile

Users can view and manage their profile information.

✅ Order Success

Provides confirmation after successfully placing an order.

---

💡 Key Learning Outcomes

Building Foody helped strengthen my practical understanding of:

- Full-stack Java web development
- Java Servlets and JSP
- JEE web application architecture
- JDBC database connectivity
- DAO and DAO Implementation patterns
- CRUD operations
- Session management
- Request/response handling
- MVC-style separation of responsibilities
- Frontend and backend integration
- Relational database interaction
- Building an end-to-end web application

---

⚙️ Getting Started

Prerequisites

Make sure you have the following installed:

- Java JDK
- Eclipse IDE or another Java IDE
- Apache Tomcat or a compatible Java web server
- A relational database
- JDBC driver for the selected database

Installation

1. Clone the repository:

git clone https://github.com/your-username/foody.git

2. Import the project into Eclipse as a Java/JEE web project.

3. Configure the database connection in the application's database utility/configuration class.

4. Create the required database and tables.

5. Add the appropriate JDBC driver to the project.

6. Configure Apache Tomcat.

7. Deploy the application on the server.

8. Start the server and open the application in your browser.

http://localhost:8080/FoodDeliveryApplication/

«Update the URL according to your Tomcat context path.»

---

🗄️ Database Configuration

The application uses JDBC to communicate with the relational database.

Before running the application:

1. Create the required database.
2. Create the necessary tables.
3. Configure the database URL.
4. Configure the database username.
5. Configure the database password.
6. Make sure the JDBC driver is available to the application.

«Security Note: Do not commit real database passwords, API keys, or other credentials to GitHub. Use environment variables or a local configuration file that is excluded from version control.»

---

📂 Important Components

Component| Responsibility
"model"| Represents application entities
"dao"| Defines database/data-access operations
"daoimpl"| Implements DAO functionality
"servlet"| Handles HTTP requests and application flow
"webapp"| Contains JSP pages and frontend resources
"css"| Application styling
"js"| Client-side JavaScript
"images"| Application images/assets

---

🔮 Future Enhancements

Possible improvements for future versions include:

- 💳 Online payment gateway integration
- 📍 Real-time order tracking
- 🔔 Order status notifications
- ⭐ Restaurant and food ratings
- 🔎 Advanced restaurant/menu search
- 🧑‍💼 Admin dashboard
- 📊 Restaurant analytics
- 📱 Improved mobile responsiveness
- 🔐 Enhanced authentication and authorization
- 🚚 Delivery partner management

---

🎯 Project Goal

The primary goal of Foody was to build a practical, end-to-end food delivery application while applying concepts learned in Java, JEE, JDBC, JSP, Servlets, HTML, CSS, and JavaScript.

It demonstrates how frontend interfaces, Java web components, DAO-based data access, and database operations can work together to create a complete web application.

---

👨‍💻 Developer

Your Name

Java | JEE | JDBC | JSP | Full-Stack Web Development

---

⭐ Support

If you find this project useful or interesting, consider giving the repository a ⭐ on GitHub!

---

📜 License

This project is created for educational and portfolio purposes.