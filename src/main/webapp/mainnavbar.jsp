<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JFSD</title>
<link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap" rel="stylesheet">

<!-- Google Font Link -->
<style>
    /* Page styling */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f3e4; /* Soft neutral background */
        overflow-x: hidden;
    }

    /* Header bar */
    .header-bar {
        background-color: #ffcc5c; /* Soft golden color */
        padding: 15px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        position: relative;
    }

    /* Center title with new font */
    .header-title {
        flex-grow: 1;
        text-align: center;
        font-size: 28px;
        font-weight: bold;
        color: #4b0082; /* Indigo color */
        margin: 0;
        font-family: 'Merriweather', serif; /* New font */
    }

    /* Hamburger menu button */
    .menu-toggle {
        cursor: pointer;
        padding: 10px;
    }

    .menu-toggle span {
        display: block;
        width: 30px;
        height: 3px;
        margin: 5px;
        background-color: #422800;
    }

    /* Navbar links styling */
    .navbar-links {
        display: flex;
        gap: 15px;
        align-items: center;
    }

    /* Button style for links */
    .navbar-links a {
        text-decoration: none;
        color: #4b0082; /* Indigo color for text */
        font-weight: bold;
        padding: 10px 20px;
        background-color: #fff; /* Light background */
        border: 2px solid #4b0082; /* Indigo border */
        border-radius: 5px;
        transition: all 0.3s ease;
        display: inline-block;
    }

    /* Hover effect for button-style links */
    .navbar-links a:hover {
        background-color: #f8e3b2; /* Soft light golden color */
        color: #422800; /* Dark color for text on hover */
        border-color: #ffcc5c; /* Golden border on hover */
    }

    /* Sidebar styling */
    .sidebar {
        height: 100%;
        width: 250px;
        position: fixed;
        top: 0;
        left: 0;
        background-color: rgba(251, 238, 224, 0.8); /* Adjust the alpha for desired transparency */
        overflow-x: hidden;
        padding-top: 60px;
        box-shadow: 2px 0 5px rgba(0, 0, 0, 0.3);
        transform: translateX(-100%);
        transition: transform 0.3s ease;
        z-index: 1;
    }

    /* Sidebar links */
    .sidebar a {
        padding: 15px 25px;
        text-decoration: none;
        color: #422800;
        font-weight: bold;
        display: block;
        transition: background-color 0.3s ease;
    }

    .sidebar a:hover {
        background-color: #ffcc5c;
    }

    /* Sidebar toggle class */
    .sidebar.open {
        transform: translateX(0);
    }
</style>
</head>
<body>
    <!-- Header bar with hamburger on the left, title centered, and navbar links on the right -->
    <div class="header-bar">
        <!-- Hamburger menu button -->
        <div class="menu-toggle" onclick="toggleMenu()">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <h2 class="header-title">CULTURE COVE</h2>
        <!-- Navbar links -->
        <div class="navbar-links">
            <a href="userreg">Register</a>
            <a href="userlogin">Login</a>
        </div>
    </div>

    <!-- Sidebar menu -->
    <div class="sidebar" id="sidebarMenu">
        <a href="/">Home</a>
        <a href="aboutus">About Us</a>
        <a href="blogs">Blogs</a>
        <a href="gallery">Gallery</a>
    </div>

    <script>
        // JavaScript function to toggle sidebar menu
        function toggleMenu() {
            var sidebar = document.getElementById("sidebarMenu");
            sidebar.classList.toggle("open");
        }

        // Close sidebar menu when clicking outside of it
        document.addEventListener('click', function(event) {
            var sidebar = document.getElementById("sidebarMenu");
            var menuToggle = document.querySelector('.menu-toggle');

            // Check if the sidebar is open and the click happened outside the sidebar and menu toggle button
            if (sidebar.classList.contains('open') && !sidebar.contains(event.target) && !menuToggle.contains(event.target)) {
                sidebar.classList.remove('open');
            }
        });
    </script>
</body>
</html>
