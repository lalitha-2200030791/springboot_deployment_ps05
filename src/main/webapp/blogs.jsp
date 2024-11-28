<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog Page</title>
    <style>
        /* Body styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        /* Container style */
        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
            margin-top: 20px;
        }

        .blog-posts {
            margin-top: 20px;
        }

        .post {
            background-color: #f9f9f9;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .post-header {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .user-profile {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        /* Circular Profile Picture */
        .user-profile img {
            height: 50px;
            width: 50px;
            border-radius: 50%;
            object-fit: cover;
        }

        .user-profile .username {
            font-size: 16px;
            color: #333;
            font-family: 'Poppins', sans-serif;
        }

        .post-title {
            font-size: 24px;
            color: #6200EA;
            margin-bottom: 10px;
        }

        .post-content {
            font-size: 16px;
            color: #555;
        }

        /* Write a Blog Button */
        .write-blog-btn {
            display: inline-block;
            background-color: #6200EA;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
            margin-bottom: 20px;
            float: right;
            transition: background-color 0.3s ease;
        }

        .write-blog-btn:hover {
            background-color: #5a00cc;
        }

        /* Modal Styles */
        .modal {
            display: none; /* Hidden by default */
            position: fixed;
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Black with opacity */
            overflow: auto;
            padding-top: 60px;
        }

        .modal-content {
            background-color: white;
            margin: 5% auto;
            padding: 20px;
            border-radius: 10px;
            width: 80%;
            max-width: 400px;
            text-align: center;
        }

        .modal-header {
            font-size: 20px;
            margin-bottom: 20px;
        }

        .modal-footer {
            margin-top: 20px;
        }

        .btn {
            background-color: #6200EA;
            color: white;
            padding: 10px 20px;
            margin: 5px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #5a00cc;
        }
    </style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>

    <div class="container">
        <a href="javascript:void(0)" class="write-blog-btn" onclick="openModal()">+ Write a Blog</a> <!-- Button to Write a Blog -->
        <h2>Recent Blog Posts</h2>
        <div class="blog-posts">
            <!-- Blog posts will be dynamically generated from the server -->
            <div class="post">
                <!-- Post Header with User Profile -->
                <div class="post-header">
                    <div class="user-profile">
                        <img src="media/user.png" alt="User Profile Picture"> <!-- Replace with the actual profile picture -->
                        <span class="username">Lalitha</span> <!-- Replace with dynamic username -->
                    </div>
                </div>
                <h3 class="post-title">Exploring the Richness of Indian Culture: A Journey Through Tradition and Heritage</h3>
                <p class="post-content">
                    India is a land of diverse cultures, languages, and traditions, each contributing to a vibrant and colorful tapestry of life. From ancient temples and traditional art forms to its festivals and cuisine, Indian culture is a reflection of thousands of years of history, creativity, and spirituality. Cuisine plays an equally important role in defining Indian culture, with every region offering its own distinctive flavors, from the spicy curries of the South to the delicate sweets of Bengal. The art forms, such as Madhubani painting and Kathak dance, preserve centuries-old traditions that are passed down through generations. Indian festivals like Holi and Diwali showcase the nation's exuberance, bringing together people of all ages and backgrounds in celebration.
                    <br><br>
                    In modern times, Indian culture embraces global influences while still maintaining its deep-rooted traditions. This blend of the old and new creates a dynamic, ever-evolving identity that captivates people both within and beyond its borders. Whether through its architecture, language, or artistic expressions, Indian culture remains a timeless force that continues to inspire and enchant.
                </p>
            </div>

            <div class="post">
                <!-- Post Header with User Profile -->
                <div class="post-header">
                    <div class="user-profile">
                        <img src="media/user.png" alt="User Profile Picture"> <!-- Replace with actual profile picture -->
                        <span class="username">Prathyusha</span> <!-- Replace with dynamic username -->
                    </div>
                </div>
                <h3 class="post-title">Temples of India: Sanctuaries of Spirituality, Architecture, and History</h3>
                <p class="post-content">
                    India, known as the land of spirituality and mysticism, is home to some of the most beautiful and ancient temples in the world. These temples are more than just places of worship; they are masterpieces of architecture, storytelling, and living symbols of India’s rich cultural and religious history. For centuries, these sacred spaces have drawn devotees, scholars, and travelers alike, who come to seek peace, spirituality, and a deep connection with the divine.
                    <br><br>
                    Architectural Grandeur: One of the most awe-inspiring aspects of Indian temples is their architectural brilliance. Each region of India has its own distinct style, influenced by the dynasties, cultures, and materials available during the period of construction. The temples of South India, for instance, are known for their towering gopurams (gateway towers) and intricate stone carvings. The temples of Tamil Nadu, like the Brihadeeswarar Temple in Thanjavur, stand as epitomes of the Dravidian architectural style, showcasing precision, symmetry, and artistry.
                    <br><br>
                    In contrast, temples in North India, such as the Kashi Vishwanath Temple in Varanasi, are built in the Nagara style, characterized by their curved towers. These temples often feature intricate stone carvings, which tell stories from Hindu mythology and are adorned with deities, mythical creatures, and symbols of fertility and prosperity.
                </p>
            </div>

            <!-- More blog posts will be rendered dynamically from the server -->
        </div>
    </div>

    <!-- Modal Dialog -->
    <div id="loginModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>You must login to write a blog</h3>
            </div>
            <div class="modal-footer">
                <a href="userlogin.jsp" class="btn">Login</a>
                <a href="userreg.jsp" class="btn">Register</a>
            </div>
        </div>
    </div>

    <script>
        // Function to open the modal
        function openModal() {
            document.getElementById("loginModal").style.display = "block";
        }

        // Close the modal if clicked outside of it
        window.onclick = function(event) {
            if (event.target == document.getElementById("loginModal")) {
                document.getElementById("loginModal").style.display = "none";
            }
        }
    </script>

</body>
</html>
