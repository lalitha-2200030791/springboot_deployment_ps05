<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <style>
        /* Styling for profile display and icons */
        .profile-container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #f8f3e4;
            border-radius: 10px;
        }

        .profile-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .profile-item {
            margin: 10px 0;
            font-size: 16px;
        }

        .edit-button, .delete-button {
            cursor: pointer;
            font-size: 14px;
            color: #4b0082;
            border: none;
            background: none;
            padding: 0;
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <h2 class="profile-header">
            Profile
            <button class="edit-button" onclick="editProfile()">✏️ Edit</button>
            <button class="delete-button" onclick="deleteProfile()">🗑️ Delete</button>
        </h2>
        
        <div class="profile-item">
            <strong>Username:</strong> ${user.username}
        </div>
        <div class="profile-item">
            <strong>Email:</strong> ${user.email}
        </div>
        <div class="profile-item">
            <strong>KYC ID:</strong> ${user.kycId}
        </div>
        <!-- Add other details as needed -->

        <script>
            function editProfile() {
                window.location.href = "/editProfile";
            }
            function deleteProfile() {
                if (confirm("Are you sure you want to delete your profile?")) {
                    window.location.href = "/deleteProfile";
                }
            }
        </script>
    </div>
</body>
</html>
