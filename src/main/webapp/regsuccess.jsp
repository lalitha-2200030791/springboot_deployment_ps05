<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <style>
        /* Background and text styling */
        body {
            background-color: #ffead0;
            color: #5a2d0c;
            font-family: 'Noto Serif', serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        /* Title styling */
        h1 {
            color: #a52a2a;
            font-size: 2.5em;
            text-align: center;
            margin-bottom: 0.5em;
        }

        /* Paragraph styling */
        p {
            font-size: 1.2em;
            margin: 0.5em 0 1em;
        }

        /* Login link styling */
        a {
            text-decoration: none;
            background-color: #4d2600;
            color: #ffead0;
            padding: 0.8em 1.5em;
            border-radius: 8px;
            font-weight: bold;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #6b3d00;
        }
    </style>
</head>
<body>
    <h1>Registration Successful!</h1>
    <p><c:out value="${message}" /></p>
    <a href="userlogin">Login Here</a>
</body>
</html>
