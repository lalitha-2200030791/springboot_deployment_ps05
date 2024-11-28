<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="usernavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indian Festivals</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-top: 60px;
            margin-bottom: 60px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 0 10px;
        }

        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            transition: transform 0.2s;
            width: 250px;
            cursor: pointer;
            margin-bottom: 20px;
        }

        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .card h3 {
            margin: 10px 0;
            text-align: center;
            font-size: 18px;
            color: #555;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.6);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 600px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
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

    </style>
</head>
<body>
    <h1>Famous Indian Festivals</h1>
    <div class="container">
        <!-- Festival Card 1 -->
        <div class="card" onclick="openModal('Diwali', 'Diwali, also known as the Festival of Lights, is one of the most significant Hindu festivals, celebrating the victory of light over darkness and good over evil.')">
            <img src="https://i.pinimg.com/474x/62/27/7a/62277a8e575274d3723b843947b0bae7.jpg" alt="Diwali">
            <h3>Diwali</h3>
        </div>

        <!-- Festival Card 2 -->
        <div class="card" onclick="openModal('Holi', 'Holi is the Festival of Colors, celebrated to mark the arrival of spring, and is famous for its vibrant colors and festive spirit.')">
            <img src="https://i.pinimg.com/474x/1c/e4/77/1ce477188e4dc7cfcc750a8fedc06476.jpg" alt="Holi">
            <h3>Holi</h3>
        </div>

        <!-- Festival Card 3 -->
        <div class="card" onclick="openModal('Navratri', 'Navratri is a nine-night festival dedicated to the worship of the Hindu deity Durga. It is celebrated with dance, music, and fasting.')">
            <img src="https://i.pinimg.com/474x/1f/de/5c/1fde5c403685f5c1f4a6651024e2fe07.jpg" alt="Navratri">
            <h3>Navratri</h3>
        </div>
        <!-- Festival Card 6 -->
        

        <!-- Festival Card 7 -->
        <div class="card" onclick="openModal('Ganesh Chaturthi', 'Ganesh Chaturthi celebrates the birth of Lord Ganesha, marked by the installation of Ganesha idols and immersion in water bodies.')">
            <img src="https://i.pinimg.com/474x/e7/f9/d0/e7f9d00d56a80cd855d46dcbca63527c.jpg" alt="Ganesh Chaturthi">
            <h3>Ganesh Chaturthi</h3>
        </div>

        <!-- Festival Card 8 -->
        <div class="card" onclick="openModal('Onam', 'Onam is the harvest festival of Kerala, celebrated with grand feasts, dances, and boat races, marking the homecoming of King Mahabali.')">
            <img src="https://i.pinimg.com/474x/32/ed/71/32ed712d526465d2de93dcae603153cf.jpg" alt="Onam">
            <h3>Onam</h3>
        </div>

        <!-- Festival Card 9 -->
        <div class="card" onclick="openModal('Lohri', 'Lohri is a festival celebrated in Punjab to mark the end of winter, with bonfires, music, and dances like Bhangra.')">
            <img src="https://i.pinimg.com/474x/36/af/fd/36affd67adb457db9fe077d04bef89b8.jpg" alt="Lohri">
            <h3>Lohri</h3>
        </div>

        <!-- Festival Card 10 -->
        <div class="card" onclick="openModal('Makar Sankranti', 'Makar Sankranti is celebrated to mark the transition of the sun into Capricorn, with kite flying and feasts.')">
            <img src="https://i.pinimg.com/474x/ba/08/ac/ba08ac0f72c9fd13716d2ff39f1329ba.jpg" alt="Makar Sankranti">
            <h3>Makar Sankranti</h3>
        </div>
        <div class="card" onclick="openModal('Durga Puja', 'Durga Puja is a Hindu festival celebrating the victory of the goddess Durga over the demon Mahishasura, observed especially in West Bengal.')">
            <img src="https://i.pinimg.com/736x/85/10/8c/85108c462e3f92400fad82ae43d0621c.jpg" alt="Durga Puja">
            <h3>Durga Puja</h3>
        </div>

    </div>

    <!-- The Modal -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2 id="festivalTitle"></h2>
            <p id="festivalDetails"></p>
        </div>
    </div>

    <script>
        function openModal(title, details) {
            document.getElementById("festivalTitle").innerText = title;
            document.getElementById("festivalDetails").innerText = details;
            document.getElementById("myModal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("myModal").style.display = "none";
        }

        // Close the modal when the user clicks anywhere outside of it
        window.onclick = function(event) {
            if (event.target == document.getElementById("myModal")) {
                closeModal();
            }
        }
    </script>
</body>
</html>
