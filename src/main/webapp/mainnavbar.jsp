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
    /* Search bar styling */
.search-bar {
    display: flex;
    align-items: center;
    gap: 5px;
    margin-left: 15px;
}

.search-bar input {
    padding: 5px 10px;
    border: 1px solid #4b0082;
    border-radius: 5px;
    font-size: 14px;
    outline: none;
}

.search-bar button {
    background-color: #ffcc5c;
    color: #422800;
    border: none;
    padding: 5px 10px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 14px;
    transition: background-color 0.3s ease;
}

.search-bar button:hover {
    background-color: #ff9900;
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
        <!-- Search bar -->
<div class="search-bar">
    <input type="text" id="searchInput" placeholder="Search..." oninput="searchSite()">
    <button onclick="searchSite()">🔍</button>
</div>
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
     // Simulated search function
        function searchSite() {
    const searchInput = document.getElementById('searchInput').value.toLowerCase();
    
    if (!searchInput.trim()) {
        alert('Please enter something to search!');
        return;
    }

    // Use encodeURIComponent in JavaScript, not EL
    const encodedSearchQuery = encodeURIComponent(searchInput);

    // Fetch search results from the backend API
    fetch(`/search?query=${encodedSearchQuery}`)
        .then(response => {
            if (!response.ok) throw new Error('Failed to fetch search results');
            return response.json(); // Parse the JSON response
        })
        .then(results => {
            // Display search results
            displayResults(results);
        })
        .catch(error => console.error('Error fetching search results:', error));
}

function displayResults(results) {
    const resultContainer = document.getElementById('resultContainer') || createResultContainer();
    resultContainer.innerHTML = '';

    if (results.length > 0) {
        results.forEach(result => {
            const item = document.createElement('p');
            item.textContent = result;
            item.style.backgroundColor = '#ffcc5c'; // Highlight matching results
            resultContainer.appendChild(item);
        });
    } else {
        resultContainer.textContent = 'No results found.';
    }
}

function createResultContainer() {
    const container = document.createElement('div');
    container.id = 'resultContainer';
    container.style.marginTop = '20px';
    container.style.padding = '10px';
    container.style.backgroundColor = '#f8e3b2';
    container.style.border = '1px solid #4b0082';
    document.body.appendChild(container);
    return container;
}
    </script>
</body>
</html>
