<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<style>
    /* General Body Styles */
    body {
        font-family: 'Arial', sans-serif;
        background-image: url('https://www.transparenttextures.com/patterns/white-linen.png');
        background-color: #f0e68c;
        color: #333;
        margin: 0;
        padding: 0;
    }

    /* Container Styles */
    .container {
        background: #ffffff;
        border-radius: 15px;
        padding: 2rem;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        max-width: 500px;
        margin: 5rem auto;
        border: 5px solid #ffcc00;
    }

    /* Title Styles */
    h2 {
        color: #8B4513;
        text-align: center;
        margin-bottom: 1.5rem;
        font-size: 2rem;
        font-family: 'Georgia', serif;
    }

    /* Input Field Styles */
    input[type="text"],
    input[type="password"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin: 10px 0;
        border: 2px solid #cccccc;
        border-radius: 5px;
        font-size: 1rem;
        transition: border-color 0.3s;
    }

    /* Input Focus Styles */
    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #ff6699;
        outline: none;
    }

    /* Button Styles */
    .btn {
        background-color: #ffcc00;
        color: #ffffff;
        border: none;
        padding: 10px 15px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 1rem;
        margin-top: 10px;
        width: 48%;
        transition: background 0.3s;
    }

    .btn:hover {
        background-color: #d4a300;
    }

    /* Button Group Styling */
    .button-group {
        display: flex;
        justify-content: space-between;
    }

    /* Responsive Design for Smaller Screens */
    @media (max-width: 600px) {
        .container {
            padding: 1rem;
            margin: 3rem auto;
        }

        h2 {
            font-size: 1.5rem;
        }

        input[type="text"],
        input[type="password"] {
            width: calc(100% - 15px);
        }
    }
</style>
</head>
<body>
    
    <div class="container">
        <h2>Admin Login</h2>
        <form method="post" action="checkadminlogin">
            <label>Enter Username</label>
            <input type="text" name="auname" required />

            <label>Enter Password</label>
            <input type="password" name="apwd" required />

            <div class="button-group">
                <input type="submit" value="Login" class="btn" />
                <input type="reset" value="Clear" class="btn" />
            </div>
        </form>
    </div>
</body>
</html>
