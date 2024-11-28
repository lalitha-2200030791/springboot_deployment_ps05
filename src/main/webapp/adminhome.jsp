<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<!-- Inline CSS for the Admin Home page -->
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
    }

    h3 {
        color: #333;
        text-align: center;
        margin-top: 50px;
        font-size: 28px;
    }

    .greeting {
        color: #2c3e50;
        font-size: 24px;
        text-align: center;
        margin-top: 20px;
    }

    .navbar {
        background-color: #2c3e50;
        padding: 10px;
        color: #fff;
        text-align: center;
    }

    .navbar a {
        color: #fff;
        text-decoration: none;
        margin: 0 15px;
        font-weight: bold;
    }

    .navbar a:hover {
        text-decoration: underline;
    }

    .container {
        padding: 20px;
    }

    .admin-content {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin: 30px auto;
        max-width: 800px;
        padding: 30px;
    }

    .footer {
        text-align: center;
        padding: 10px;
        background-color: #2c3e50;
        color: #fff;
        position: fixed;
        bottom: 0;
        width: 100%;
    }
</style>
</head>
<body>

<!-- Navbar Section -->
<%@ include file="adminnavbar.jsp" %>

<!-- Admin Greeting -->
<div class="container">
    <div class="admin-content">
        <h3>Hello, Administrator!</h3>
        <p class="greeting">Handle your website here.</p>
    </div>
</div>

<!-- Footer Section -->
<div class="footer">
    <p>&copy; 2024 CultureCove-Lalitha. All rights reserved.</p>
</div>

</body>
</html>
