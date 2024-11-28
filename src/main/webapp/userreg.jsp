<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="mainnavbar.jsp" %>
<title>User Registration</title>
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
h3 {
    color: #8B4513;
    text-align: center;
    margin-bottom: 1.5rem;
    font-size: 2rem;
    font-family: 'Georgia', serif;
}

/* Input Field Styles */
input[type="text"],
input[type="email"],
input[type="password"],
input[type="number"] {
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
input[type="email"]:focus,
input[type="password"]:focus,
input[type="number"]:focus {
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
    width: 100%;
    transition: background 0.3s;
}

/* Button Hover Styles */
.btn:hover {
    background-color: #d4a300;
}

/* Radio Button Styles */
.radio-group {
    display: flex;
    align-items: center;
    gap: 10px;
    margin: 10px 0;
}

.radio-label {
    display: inline-block;
    margin-right: 10px;
}

/* Responsive Design for Smaller Screens */
@media (max-width: 600px) {
    .container {
        padding: 1rem;
        margin: 3rem auto;
    }

    h3 {
        font-size: 1.5rem;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="number"] {
        width: calc(100% - 15px);
    }
}
</style>
</head>
<body>
<div class="container">
<h3>User Registration</h3>
<form method="post" action="insertuser">
    <label>Enter Name</label>
    <input type="text" name="usname" required />
    <br/>
    
    <label>Select Gender</label>
    <div class="radio-group">
        <div>
            <input type="radio" name="usgender" value="Male" required />
            <label class="radio-label">Male</label>
        </div>
        <div>
            <input type="radio" name="usgender" value="Female" required />
            <label class="radio-label">Female</label>
        </div>
        <div>
            <input type="radio" name="usgender" value="Others" required />
            <label class="radio-label">Others</label>
        </div>
    </div>
    <br/>

    <label>Enter Email Id</label>
    <input type="email" name="usemail" required />
    <br/>
    
    <label>Enter Password</label>
    <input type="password" name="uspassword" required />
    <br/>
    
    <label>Enter Contact Number</label>
    <input type="number" name="uscontactno" required />
    <br/>
    
    <input type="submit" value="Register" class="btn"/>
    <input type="reset" value="Clear" class="btn"/>
</form>
</div>
</body>
</html>
