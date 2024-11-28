<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - View Articles</title>
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
        border: 1px solid #fff;
    }

    th {
        background-color: #FFF; /* Light Yellow */
        color: black; /* Black text for contrast */
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    button {
        background-color: #FFF9F; /* Light Yellow */
        color: black; /* Black text for contrast */
        border: none;
        padding: 8px 16px;
        cursor: pointer;
        font-size: 16px;
        margin-right: 5px;
    }

    button:hover {
        background-color: #FFC300; /* Slightly darker yellow for hover effect */
    }

    #createDialog, #editDialog {
        display: none;
        position: fixed;
        top: 20%;
        left: 50%;
        transform: translateX(-50%);
        width: 400px;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        z-index: 1000;
    }

    #createDialog form, #editDialog form {
        display: flex;
        flex-direction: column;
    }

    #createDialog input, #createDialog textarea,
    #editDialog input, #editDialog textarea {
        margin-bottom: 12px;
        padding: 8px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    #createDialog button, #editDialog button {
        margin-top: 10px;
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

    h3 {
        text-align: center;
        color: black; /* Black heading */
    }
</style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
<h3>View all Articles</h3>
<div align="center">
    <!-- Create Article Button -->
    <button onclick="openCreateDialog()">Create Article</button>
</div>
<table>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Content</th>
        <th>Author</th>
        <th>Date</th>
        <th>ACTIONS</th>
    </tr>
    <c:forEach var="article" items="${articleList}">
        <tr>
            <td>${article.id}</td>
            <td>${article.title}</td>
            <td>${article.content}</td>
            <td>${article.author}</td>
            <td>${article.date}</td>
            <td>
                <button onclick="openEditDialog(${article.id}, '${article.title}', '${article.content}', '${article.author}', '${article.date}')">🖊️</button>
                <button onclick="confirmDelete(${article.id})">🗑️</button>
            </td>
        </tr>
    </c:forEach>
</table>

<!-- Create Article Dialog Box -->
<div id="createDialog">
    <form id="createForm" action="saveArticle" method="post">
        <h3>Create New Article</h3>
        <label>Title:</label><input type="text" name="title" placeholder="Enter article title" required>
        <label>Content:</label><textarea name="content" rows="5" placeholder="Enter article content" required></textarea>
        <label>Author:</label><input type="text" name="author" placeholder="Enter author name" required>
        <label>Date:</label><input type="date" name="date" required>
        <button type="submit">Save</button>
        <button type="button" onclick="closeCreateDialog()">Cancel</button>
    </form>
</div>

<!-- Edit Dialog Box -->
<div id="editDialog">
    <form id="editForm" action="updateArticle" method="post">
        <h3>Edit Article</h3>
        <input type="hidden" name="id" id="editArticleId">
        <label>Title:</label><input type="text" name="title" id="editArticleTitle" required>
        <label>Content:</label><textarea name="content" id="editArticleContent" rows="5" required></textarea>
        <label>Author:</label><input type="text" name="author" id="editArticleAuthor" required>
        <label>Date:</label><input type="date" name="date" id="editArticleDate" required>
        <button type="submit">Update</button>
        <button type="button" onclick="closeEditDialog()">Cancel</button>
    </form>
</div>

<!-- Overlay -->
<div id="overlay" class="overlay"></div>

<script>
    // Open and close Create Dialog
    function openCreateDialog() {
        document.getElementById("createDialog").style.display = "block";
        document.getElementById("overlay").style.display = "block";
    }

    function closeCreateDialog() {
        document.getElementById("createDialog").style.display = "none";
        document.getElementById("overlay").style.display = "none";
    }

    // Open and close Edit Dialog
    function openEditDialog(id, title, content, author, date) {
        document.getElementById("editArticleId").value = id;
        document.getElementById("editArticleTitle").value = title;
        document.getElementById("editArticleContent").value = content;
        document.getElementById("editArticleAuthor").value = author;
        document.getElementById("editArticleDate").value = date;
        document.getElementById("editDialog").style.display = "block";
        document.getElementById("overlay").style.display = "block";
    }

    function closeEditDialog() {
        document.getElementById("editDialog").style.display = "none";
        document.getElementById("overlay").style.display = "none";
    }

    // Confirm Delete
    function confirmDelete(id) {
        if (confirm("Are you sure you want to delete this article?")) {
            window.location.href = 'deleteArticle?id=' + id;
        }
    }
</script>
</body>
</html>
