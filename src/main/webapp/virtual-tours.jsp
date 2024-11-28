<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Virtual Tours of Indian Monuments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f4f4f4;
        }

        h1 {
            text-align: center;
            color: #9C27B0;
            margin-top: 60px; /* Add margin to push the heading below the navbar */
        }

        .tour-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .tour-item {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin: 15px;
            padding: 20px;
            width: 300px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            cursor: pointer;
        }

        .tour-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 5px;
        }

        .tour-item h2 {
            font-size: 22px;
            color: #333;
            margin-bottom: 10px;
        }

        .tour-item p {
            color: #777;
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.4);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 900px;
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

        iframe {
            width: 100%;
            height: 500px;
            border: none;
        }

        .main {
            margin-top: 70px; /* Adjust based on the height of your navbar */
        }

        .main-content h1 {
            margin-top: 90px; /* Adjust this value to match or slightly exceed the height of your navbar */
        }
    </style>
</head>
<body>


    <h1>Explore Virtual Tours of Famous Indian Monuments</h1>

    <div class="tour-list" id="tourList">
        <!-- Dynamically generate tour items -->
        <%
            // Simulating the data fetching process (in practice, this would come from a database or servlet)
            String[][] tourData = {
                {"Tirupathi", "The Abode of Lord Venkateshwara", "https://upload.wikimedia.org/wikipedia/commons/4/4e/Tirumala_090615.jpg", "https://www.youtube.com/embed/VTPJgOPcZMY?si=jZDVsB2Ve_TBz1bQ"},
                {"Badrinath", "Famous Vishnu's Shrine in Uttarakhand", "https://d2228rr16d3wie.cloudfront.net/photos/places/Uttarakhand/Badrinath.webp", "https://www.youtube.com/embed/DmmOXRwCTKo?si=FyROla3O6oyJ6d8F"},
                {"Hampi", "An architectural beauty", "https://www.alightindia.com/cdn/uploads/postimages/ORIGINAL/Hampi%20%20Google--4ef6e0.jpg", "https://www.youtube.com/embed/k7VDY7GM0_Y?si=7gHI-dxCmFtdOlBy"},
                {"Meenakshi Temple", "Madurai's prestigious Temple", "https://www.abhibus.com/blog/wp-content/uploads/2023/04/Madurai-Meenakshi-Temple-History-Timings-How-to-Reach.jpg", "https://www.youtube.com/embed/w9x4EnfsYdc?si=Vnbt_tjHCCzqI4Xy"},
                {"Hawa Mahal", "Rajasthan's building without a foundation", "https://cdn.britannica.com/25/242225-050-72142DF7/Front-facade-of-Palace-of-the-Winds-Hawa-Mahal-Jaipur-Rajasthan-India.jpg", "https://www.youtube.com/embed/w9x4EnfsYdc?si=Vnbt_tjHCCzqI4Xy"}
            };

            for (String[] tour : tourData) {
                String title = tour[0];
                String description = tour[1];
                String imageUrl = tour[2];
                String tourUrl = tour[3];

                out.println("<div class='tour-item' data-tour-url='" + tourUrl + "'>");
                if (!imageUrl.isEmpty()) {
                    out.println("<img src='" + imageUrl + "' alt='" + title + "'>");
                }
                out.println("<h2>" + title + "</h2>");
                out.println("<p>" + description + "</p>");
                out.println("</div>");
            }
        %>
    </div>

    <!-- The Modal -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <iframe id="tourIframe" src="" frameborder="0"></iframe>
        </div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const modal = document.getElementById('myModal');
            const closeBtn = document.querySelector('.close');
            const iframe = document.getElementById('tourIframe');

            document.querySelectorAll('.tour-item').forEach(tourItem => {
                tourItem.addEventListener('click', function() {
                    const tourUrl = this.getAttribute('data-tour-url');
                    if (tourUrl) {
                        iframe.src = tourUrl;
                        modal.style.display = "block";
                    }
                });
            });

            closeBtn.addEventListener('click', function() {
                modal.style.display = "none";
                iframe.src = "";
            });

            window.addEventListener('click', function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                    iframe.src = "";
                }
            });
        });
    </script>

</body>
</html>
