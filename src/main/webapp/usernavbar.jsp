<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap" rel="stylesheet">
    <style>
        /* Page styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f3e4;
            overflow-x: hidden;
        }

        /* Header bar (Navbar + Sidebar integrated) */
        .header-bar {
            background-color: #ffcc5c;
            padding: 15px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
            position: relative;
        }

        /* Center title */
        .header-title {
            flex-grow: 1;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: #4b0082;
            margin: 0;
            font-family: 'Merriweather', serif;
        }

        /* Navbar links styling (for Virtual Tours and Logout) */
        .navbar-links {
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .navbar-links a {
            text-decoration: none;
            color: #422800;
            font-weight: bold;
            padding: 8px 15px;
            background-color: transparent;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .navbar-links a:hover {
            background-color: #ffcc5c;
        }

        /* User icon and name */
        .user-info {
            display: flex;
            align-items: center;
            gap: 10px;
            color: #422800;
            font-weight: bold;
        }

        .user-icon {
            width: 35px;
            height: 35px;
            background-color: #ccc;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 20px;
            color: #422800;
        }

        /* Sidebar Menu styling */
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 60px; /* Push it below the navbar */
            left: -250px; /* Initially hidden */
            background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
            overflow-x: hidden;
            transition: 0.3s;
            padding-top: 60px;
            z-index: 10; /* Ensures it appears above other content */
        }

        /* Sidebar links */
        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            color: #422800;
            display: block;
            transition: 0.3s;
            border-radius: 5px;
        }

        .sidebar a:hover {
            background-color: #ffcc5c;
            color: #422800;
        }

        /* Show the sidebar */
        .sidebar.show {
            left: 0;
        }

        /* Button to open/close sidebar */
        .open-sidebar-btn {
            font-size: 24px;
            background-color: transparent;
            border: none;
            color: #4b0082;
            cursor: pointer;
        }

        /* Content area */
        .content {
            transition: margin-left 0.3s;
            margin-left: 0;
            padding: 20px;
            z-index: 1; /* Ensure content stays behind the sidebar */
        }

        .content.sidebar-open {
            margin-left: 250px; /* To shift content when sidebar is open */
        }

        /* Overlay to close sidebar when clicked outside */
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Transparent background */
            display: none;
            z-index: 5;
        }

        .overlay.show {
            display: block;
        }

        /* Button styles */
        .header-bar button {
            font-size: 18px;
            color: #422800;
            background-color: #ffcc5c;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .header-bar button:hover {
            background-color: #ff9900;
        }

    </style>
    <script>
        // Function to toggle the sidebar visibility
        function toggleSidebar() {
            var sidebar = document.getElementById("sidebar");
            var content = document.getElementById("content");
            var overlay = document.getElementById("overlay");

            sidebar.classList.toggle("show");
            content.classList.toggle("sidebar-open");
            overlay.classList.toggle("show");
        }

        // Function to close the sidebar if the overlay is clicked
        function closeSidebar() {
            var sidebar = document.getElementById("sidebar");
            var content = document.getElementById("content");
            var overlay = document.getElementById("overlay");

            sidebar.classList.remove("show");
            content.classList.remove("sidebar-open");
            overlay.classList.remove("show");
        }

        // Function to confirm logout
        function confirmLogout(event) {
            event.preventDefault(); // Prevents the default behavior of the link
            var userConfirmed = confirm("Confirm Logout?");
            if (userConfirmed) {
                window.location.href = '/'; // Redirects to the home page
            }
        }
    </script>
</head>
<body>
    <!-- Sidebar menu -->
    <div id="sidebar" class="sidebar">
        <a href="dashboard">Dashboard</a>
        <a href="userprofile">Profile</a>
        <a href="useraboutus">Contact Us</a>
        <a href="#" onclick="confirmLogout(event)">Logout</a>
    </div>

    <!-- Overlay to close the sidebar when clicked outside -->
    <div id="overlay" class="overlay" onclick="closeSidebar()"></div>

    <!-- Header bar with integrated sidebar and button design for logout and virtual tours -->
    <div class="header-bar">
        <button class="open-sidebar-btn" onclick="toggleSidebar()">&#9776;</button> <!-- Hamburger icon -->
        <h2 class="header-title">CULTURE COVE</h2>
        <div class="navbar-links">
            <button onclick="window.location.href='virtual-tours'">Virtual Tours</button> <!-- Virtual Tours button -->
            <button onclick="confirmLogout(event)">Logout</button> <!-- Logout button -->
            <div class="user-info">
                <div class="user-icon">👤</div>
                <span>${username}</span> <!-- Dynamically show the username -->
            </div>
        </div>
    </div>

    <!-- Main content area (No content here since you already have it in the dashboard) -->
    <div id="content" class="content">
        <!-- Your existing dashboard content will go here -->
    </div>
</body>
</html>
