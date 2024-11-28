<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="usernavbar.jsp" %>
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

        .profile-section {
            padding: 40px;
            text-align: center;
            background-color: #fff;
            margin: 20px 0;
        }

        table {
            width: 60%;
            margin: 0 auto;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        td {
            background-color: #f9f9f9;
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

        .edit-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .edit-button:hover {
            background-color: #45a049;
        }

        /* Modal Styles */
        .modal {
            display: none; /* Hidden by default */
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 60%;
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

    <!-- User Profile Section -->
    <div class="profile-section">
        <h2>User Profile</h2>
        <table>
            <tr>
                <th>Field</th>
                <th>Details</th>
            </tr>
            <tr>
                <td>Name</td>
                <td>${sessionScope.user.name}</td>
            </tr>
            <tr>
                <td>Email</td>
                <td>${sessionScope.user.email}</td>
            </tr>
            <tr>
                <td>Username</td>
                <td>${sessionScope.user.name}</td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>${sessionScope.user.contactno}</td>
            </tr>
        </table>

        <!-- Edit Profile Button -->
        <button class="edit-button" id="editBtn">Edit Profile</button>
    </div>

    <!-- Modal for Edit Profile -->
    <div id="editModal" class="modal">
        <div class="modal-content">
            <span class="close" id="closeModal">&times;</span>
            <h2>Edit Profile</h2>
            <form action="updateprofile" method="post">
                <table>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="name" value="${sessionScope.user.name}" required/></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><input type="email" name="email" value="${sessionScope.user.email}" required/></td>
                    </tr>
                    <tr>
                        <td>Phone:</td>
                        <td><input type="text" name="contactno" value="${sessionScope.user.contactno}" required/></td>
                    </tr>
                </table>
                <button type="submit" class="edit-button">Update Profile</button>
            </form>
        </div>
    </div>


    <script>
        // Get the modal
        var modal = document.getElementById("editModal");

        // Get the button that opens the modal
        var btn = document.getElementById("editBtn");

        // Get the <span> element that closes the modal
        var span = document.getElementById("closeModal");

        // When the user clicks the button, open the modal 
        btn.onclick = function() {
            modal.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>

</body>
</html>
