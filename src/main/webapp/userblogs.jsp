<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="usernavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Blogs</title>
    <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        .blog-container {
            width: 80%;
            margin: 20px auto;
            text-align: center;
        }

        h1 {
            font-size: 2.5rem;
            color: #333;
        }

        .blogs-list {
            margin-top: 30px;
        }

        .blog-item {
            background-color: #fff;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        .blog-item h3 {
            color: #333;
            margin: 0;
            font-size: 1.5rem;
        }

        .blog-item p {
            font-size: 1rem;
            color: #555;
            margin: 5px 0 0;
        }

        .blog-link {
            color: inherit;
            text-decoration: none;
            display: block;
        }

        .blog-link:hover .blog-item {
            background-color: #f0f0f0;
        }

        /* Dialog Styling */
        .dialog {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .dialog-content {
            background-color: #fff;
            margin: 15% auto;
            padding: 20px;
            border-radius: 10px;
            width: 60%;
            max-width: 500px;
            text-align: left;
        }

        .close-btn {
            color: #aaa;
            font-size: 28px;
            font-weight: bold;
            position: absolute;
            right: 20px;
            top: 10px;
            cursor: pointer;
        }

        .close-btn:hover,
        .close-btn:focus {
            color: black;
            text-decoration: none;
        }

        .instructions {
            font-size: 1.1rem;
            color: #555;
            line-height: 1.6;
        }

        .submit-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            font-size: 1.2rem;
            border: none;
            cursor: pointer;
            margin-top: 20px;
            border-radius: 5px;
        }

        .submit-btn:hover {
            background-color: #45a049;
        }
        .write-blog-btn {
    background-color: #EECC40;
    color: white;
    padding: 12px 24px;
    font-size: 1.2rem;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.2s;
}

.write-blog-btn:hover {
    background-color: #45a049;
    transform: scale(1.05);
}

.write-blog-btn:focus {
    outline: none;
}
        
    </style>
</head>
<body>
    <div class="blog-container">
        <h1>Articles</h1>
        
        <button class="write-blog-btn" id="writeBlogBtn">Write to us</button>

        <div class="blogs-list">
            <c:if test="${not empty blogs}">
                <c:forEach var="blog" items="${blogs}">
                    <a href="/userblogs/blogDetails?id=${blog.id}" class="blog-link">
                        <div class="blog-item">
                            <h3>${blog.title}</h3>
                            <p><strong>Author:</strong> ${blog.author}</p>
                        </div>
                    </a>
                </c:forEach>
            </c:if>
            <c:if test="${empty blogs}">
                <p>No articles available.</p>
            </c:if>
        </div>
    </div>

    <!-- Write Blog Dialog -->
    <div id="writeBlogDialog" class="dialog">
        <div class="dialog-content">
            <span class="close-btn" id="closeDialogBtn">&times;</span>
            <h2>Write to us</h2>
            <div class="instructions">
                <p>Please write your article with the following information:</p>
                <ul>
                    <li><strong>Title:</strong> Choose a meaningful title.</li>
                    <li><strong>Content:</strong> Share your thoughts or article content.</li>
                    <li><strong>Author:</strong> Mention your name or pen name.</li>
                </ul>
                <p>Once you're ready, click the button below to email us your article!</p>
                <a href="mailto:mrnvkteacher@gmail.com?subject=New Article Submission" class="submit-btn">Mail My Article</a>
            </div>
        </div>
    </div>

    <script>
        // Open the dialog when "Write to us" button is clicked
        document.getElementById('writeBlogBtn').onclick = function() {
            document.getElementById('writeBlogDialog').style.display = 'block';
        };

        // Close the dialog when the "x" button is clicked
        document.getElementById('closeDialogBtn').onclick = function() {
            document.getElementById('writeBlogDialog').style.display = 'none';
        };

        // Close the dialog if clicked outside of the dialog content
        window.onclick = function(event) {
            if (event.target == document.getElementById('writeBlogDialog')) {
                document.getElementById('writeBlogDialog').style.display = 'none';
            }
        };
    </script>
</body>
</html>
