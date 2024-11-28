<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>JFSD</title>
<script type="text/javascript">
    // Function to show confirmation before logout
    function confirmLogout(event) {
        event.preventDefault(); // Prevent the default link behavior
        if (confirm("Are you sure you want to logout?")) {
            window.location.href = "/"; // Redirect to home page after confirmation
        }
    }
</script>
</head>
<body>
<h2 align="center">Administration Panel </h2>
<div>
    <a href="/">Home</a>&nbsp;&nbsp;
    <a href="viewallusers">View All Users</a>&nbsp;&nbsp;
    <a href="viewArticles">Manage Articles</a>&nbsp;&nbsp;
    <a href="#" onclick="confirmLogout(event)">Logout</a>&nbsp;&nbsp;
</div>
</body>
</html>
