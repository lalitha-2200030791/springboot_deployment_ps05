<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="usernavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${blog.title}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .blog-details-container {
            width: 70%;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            font-size: 2.5rem;
            margin-bottom: 10px;
        }

        .author-info {
            color: #666;
            font-size: 1rem;
            margin-bottom: 20px;
        }

        .blog-content {
            font-size: 1.2rem;
            color: #444;
            line-height: 1.6;
            text-align: justify;
        }

        a.back-link {
            display: inline-block;
            margin-top: 20px;
            font-size: 1rem;
            color: #007bff;
            text-decoration: none;
            border: 1px solid #007bff;
            padding: 5px 10px;
            border-radius: 5px;
        }

        a.back-link:hover {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
    <div class="blog-details-container">
        <h1>${blog.title}</h1>
        <p class="author-info"><strong>Author:</strong> ${blog.author}</p>
        <p class="author-info"><strong>Published on:</strong> ${blog.date}</p>
        <div class="blog-content">
            <p>${blog.content}</p>
        </div>
        <a href="${pageContext.request.contextPath}/userblogs" class="back-link">Back to Articles</a>
        
    </div>
</body>
</html>
