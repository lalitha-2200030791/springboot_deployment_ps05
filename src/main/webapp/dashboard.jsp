<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="usernavbar.jsp" %> <!-- Include the navbar here -->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f3e4;
            margin: 0;
            padding: 0;
        }

        .dashboard-content {
            padding: 20px;
            text-align: center;
        }

        h1 {
            color: #a83232;
            font-size: 36px;
            margin-bottom: 20px;
        }

        .card-container {
            display: flex;
            justify-content: center;
            margin-top: 40px;
            flex-wrap: wrap;
        }

        .card {
            width: 250px;
            height: 350px;
            margin: 20px;
            perspective: 1000px; /* Add perspective to create 3D effect */
        }

        .card-inner {
            width: 100%;
            height: 100%;
            position: relative;
            transform-style: preserve-3d;
            transition: transform 0.5s;
        }

        .card:hover .card-inner {
            transform: rotateY(180deg); /* Rotate the card when hovered */
        }

        .card-front,
        .card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden; /* Hide the back when the card is flipped */
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        /* Front of the card: Image and name */
        .card-front {
            background-color: #fff;
            background-size: cover;
            background-position: center;
            color: white;
            font-size: 24px;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Back of the card: Description */
        .card-back {
            background-color: #f8f3e4;
            transform: rotateY(180deg);
            color: #333;
            padding: 20px;
            font-size: 16px;
            text-align: center;
        }

        .card-back h3 {
            font-size: 20px;
            margin-bottom: 15px;
        }

        .card-back p {
            font-size: 16px;
            margin-bottom: 20px;
        }

        .card a {
            display: inline-block;
            padding: 10px 15px;
            text-decoration: none;
            background-color: #ffcc5c;
            color: #422800;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .card a:hover {
            background-color: #a83232;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="dashboard-content">
        <h1>Welcome, ${username}!</h1> <!-- Dynamic username -->

        <div class="card-container">
            <!-- Gallery Card -->
            <div class="card">
                <div class="card-inner">
                    <div class="card-front" style="background-image: url('media/gallery-image.jpg');">
                        GALLERY
                    </div>
                    <div class="card-back">
                        <h3>Explore the Gallery</h3>
                        <p>Discover beautiful and unique art pieces in our gallery. Immerse yourself in a world of creativity!</p>
                        <a href="/usergallery">View Gallery</a>
                    </div>
                    
                </div>
            </div>

            <!-- Monuments Card -->
            <div class="card">
                <div class="card-inner">
                    <div class="card-front" style="background-image: url('media/monument-image.jpg');">
                        MONUMENTS
                    </div>
                    <div class="card-back">
                        <h3>Explore Monuments</h3>
                        <p>Learn about the historical and cultural monuments from around the world. A journey through time!</p>
                        <a href="/monuments">Explore Monuments</a>
                    </div>
                </div>
            </div>

            
             <div class="card">
                <div class="card-inner">
                    <div class="card-front" style="background-image: url('media/festival-image.jpg');">
                        FESTIVALS
                    </div>
                    <div class="card-back">
                        <h3>Explore Festivals</h3>
                        <p>Explore a vibrant journey through rich traditions, colorful celebrations, and diverse cultural experiences</p>
                        <a href="/festivals">View Festivals</a>
                    </div>
                    
                </div>
            </div>
            <!-- Blogs Card -->
            <div class="card">
                <div class="card-inner">
                    <div class="card-front" style="background-image: url('media/blog-image.jpg');">
                        ARTICLES
                    </div>
                    <div class="card-back">
                        <h3>Read Articles</h3>
                        <p>Stay updated with the latest news, stories, and insights. Read our collection of engaging blogs!</p>
                        <a href="/userblogs">Read Articles</a>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-inner">
                    <div class="card-front" style="background-image: url('media/cuisine-image.jpg');">
                        CUISINES
                    </div>
                    <div class="card-back">
                        <h3>View Cuisines</h3>
                        <p>Discover the Flavors of India: A Culinary Journey Through Regional Delights!</p>
                        <a href="/cuisines">View Cuisines</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
