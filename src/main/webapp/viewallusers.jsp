<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
    }

    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: white;
    }

    th, td {
        padding: 12px;
        text-align: left;
        border: 1px solid #ddd;
    }

    th {
        background-color: #FFF;
        color: black;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    button {
        background-color: #FFF9F;
        color: white;
        border: none;
        padding: 8px 16px;
        cursor: pointer;
        font-size: 16px;
        margin-right: 5px;
    }

    button:hover {
        background-color: #45a049;
    }

    #editDialog {
        display: none;
        position: fixed;
        top: 20%;
        left: 50%;
        transform: translateX(-50%);
        width: 400px;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        z-index: 1000;
    }

    #editDialog form {
        display: flex;
        flex-direction: column;
    }

    #editDialog label {
        margin-bottom: 8px;
    }

    #editDialog input {
        margin-bottom: 12px;
        padding: 8px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    #editDialog button[type="submit"] {
        background-color: #4CAF50;
        padding: 10px;
        color: white;
        font-size: 16px;
    }

    #editDialog button[type="button"] {
        background-color: #f44336;
        padding: 10px;
        color: white;
        font-size: 16px;
    }

    .overlay {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(0, 0, 0, 0.5);
        display: none;
        z-index: 999;
    }
</style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
<h3 align="center">View all users</h3>
<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>GENDER</th>
        <th>EMAIL</th>
        <th>PASSWORD</th>
        <th>CONTACT NUMBER</th>
        <th>ACTIONS</th>
    </tr>
    <c:forEach var="user" items="${userlist}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.gender}</td>
            <td>${user.email}</td>
            <td>${user.password}</td>
            <td>${user.contactno}</td>
            <td>
                <!-- Edit Button (Pen Icon) -->
                <button onclick="openEditDialog(${user.id}, '${user.name}', '${user.gender}', '${user.email}', '${user.contactno}')">
                    🖊️
                </button>
                
                <!-- Delete Button (Dustbin Icon) -->
                <button onclick="confirmDelete(${user.id})">
                    🗑️
                </button>
            </td>
        </tr>
    </c:forEach>
</table>

<!-- Edit Dialog Box -->
<div id="editDialog">
    <form id="editForm" action="updateUser" method="post">
        <input type="hidden" name="id" id="editUserId">
        <label>Name:</label><input type="text" name="name" id="editUserName"><br>
        <label>Gender:</label><input type="text" name="gender" id="editUserGender"><br>
        <label>Email:</label><input type="text" name="email" id="editUserEmail"><br>
        <label>Contact Number:</label><input type="text" name="contactno" id="editUserContact"><br>
        <button type="submit">Update</button>
        <button type="button" onclick="closeEditDialog()">Cancel</button>
    </form>
</div>

<!-- Overlay to dim the background when dialog is open -->
<div id="overlay" class="overlay"></div>

<script>
    // Function to open the edit dialog with pre-filled user data
    function openEditDialog(id, name, gender, email, contactno) {
        document.getElementById("editUserId").value = id;
        document.getElementById("editUserName").value = name;
        document.getElementById("editUserGender").value = gender;
        document.getElementById("editUserEmail").value = email;
        document.getElementById("editUserContact").value = contactno;
        document.getElementById("editDialog").style.display = "block";
        document.getElementById("overlay").style.display = "block";
    }

    // Function to close the edit dialog
    function closeEditDialog() {
        document.getElementById("editDialog").style.display = "none";
        document.getElementById("overlay").style.display = "none";
    }

    // Function to show a delete confirmation box
    function confirmDelete(id) {
        if (confirm("Are you sure you want to delete this user?")) {
            window.location.href = 'deleteUser?id=' + id;
        }
    }

    // Automatically close the dialog when the form is submitted (Update button clicked)
    document.getElementById("editForm").onsubmit = function() {
        closeEditDialog();
    }
</script>

</body>
</html>
