<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="usernavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .team-section {
            padding: 40px;
            text-align: center;
            background-color: #fff;
            margin: 20px 0;
        }

        .team-member {
            display: inline-block;
            width: 30%;
            margin: 10px;
            background-color: #f0f0f0;
            padding: 20px;
            border-radius: 8px;
        }

        .team-member h3 {
            font-size: 18px;
            color: #333;
        }

        .team-member p {
            font-size: 16px;
            color: #777;
        }

        .contact-section {
            padding: 40px;
            background-color: #fff;
            margin: 20px 0;
            text-align: center;
        }

        .contact-section h3 {
            margin-bottom: 20px;
        }

        .contact-section p {
            font-size: 16px;
            color: #555;
        }

        .newsletter-form input[type="email"] {
            padding: 10px;
            width: 250px;
            margin-right: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .newsletter-form button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .newsletter-form button:hover {
            background-color: #45a049;
        }

        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>

    <!-- Team Section -->
    <div class="team-section">
        <h2>Meet Our Team</h2>
        <div class="team-member">
            <h3>Lalitha Sri Vidhya R</h3>
            <p>Lead Developer</p>
        </div>
        <div class="team-member">
            <h3>Timiss Prathyusha</h3>
            <p>Content Manager</p>
        </div>
        <div class="team-member">
            <h3>Sathya Prasanna</h3>
            <p>UI/UX Designer</p>
        </div>
    </div>

    <!-- Contact Section -->
    <div class="contact-section">
        <h3>Contact Us</h3>
        <p>If you want to send an article or other contents, feel free to email us at: <a href="mailto:mrnvkteacher@gmail.com">mrnvkteacher@gmail.com</a></p>
        
    </div>

</body>
</html>
