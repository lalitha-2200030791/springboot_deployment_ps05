<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="usernavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuisines of India</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-top: 60px;
            margin-bottom: 60px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 0 10px;
        }

        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            transition: transform 0.2s;
            width: 250px;
            cursor: pointer;
            margin-bottom: 20px;
        }

        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .card h3 {
            margin: 10px 0;
            text-align: center;
            font-size: 18px;
            color: #555;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.6);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 600px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

    </style>
</head>
<body>
    <h1>Famous Cuisines of India</h1>
    <div class="container">
        <!-- Cuisine Card 1 -->
        <div class="card" onclick="openModal('Punjabi Cuisine', 'Punjabi cuisine is known for its rich, buttery flavors, with popular dishes like Butter Chicken, Tandoori Chicken, and Chole.')">
            <img src="https://i.pinimg.com/474x/82/8b/1a/828b1a31eaa301d8ddb836f301a1fad8.jpg" alt="Punjabi Cuisine">
            <h3>Punjabi Cuisine</h3>
        </div>

        <!-- Cuisine Card 2 -->
        <div class="card" onclick="openModal('South Indian Cuisine', 'South Indian cuisine includes dosa, idli, and sambar, known for its use of rice, lentils, and spices.')">
            <img src="https://i.pinimg.com/474x/b7/8b/65/b78b65d7f88b1930e339a3ca1a6d96cb.jpg" alt="South Indian Cuisine">
            <h3>South Indian Cuisine</h3>
        </div>

        <!-- Cuisine Card 3 -->
        <div class="card" onclick="openModal('Gujarati Cuisine', 'Gujarati cuisine offers a mix of sweet, salty, and spicy flavors, with dishes like Dhokla, Thepla, and Fafda.')">
            <img src="https://i.pinimg.com/474x/d8/0e/83/d80e8344fe40b480d50f885c4c3de3b0.jpg" alt="Gujarati Cuisine">
            <h3>Gujarati Cuisine</h3>
        </div>

        <!-- Cuisine Card 4 -->
        <div class="card" onclick="openModal('Rajasthani Cuisine', 'Rajasthani cuisine features dishes like Dal Baati Churma, Gatte ki Sabzi, and Laal Maas, known for their spicy flavors.')">
            <img src="https://i.pinimg.com/474x/8e/df/f4/8edff436c19ee632c53d5beb15af78e9.jpg" alt="Rajasthani Cuisine">
            <h3>Rajasthani Cuisine</h3>
        </div>

        <!-- Cuisine Card 5 -->
        <div class="card" onclick="openModal('Bengali Cuisine', 'Bengali cuisine is famous for its fish-based dishes, sweets like Rasgulla, and dishes like Shorshe Ilish and Mishti Doi.')">
            <img src="https://i.pinimg.com/474x/4f/e0/95/4fe095c4d21dbd2ace384a9c07afe3ec.jpg" alt="Bengali Cuisine">
            <h3>Bengali Cuisine</h3>
        </div>

        <!-- Add more cuisine cards here -->
    </div>

    <!-- The Modal -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2 id="cuisineTitle"></h2>
            <p id="cuisineDetails"></p>
        </div>
    </div>

    <script>
        function openModal(title, details) {
            document.getElementById("cuisineTitle").innerText = title;
            document.getElementById("cuisineDetails").innerText = details;
            document.getElementById("myModal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("myModal").style.display = "none";
        }

        // Close the modal when the user clicks anywhere outside of it
        window.onclick = function(event) {
            if (event.target == document.getElementById("myModal")) {
                closeModal();
            }
        }
    </script>
</body>
</html>
