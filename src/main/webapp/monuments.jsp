<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="usernavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indian Monuments</title>
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
    margin-top: 60px; /* Add margin-top for spacing */
    margin-bottom: 60px;
}


.container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
    padding: 0 10px; /* Added padding to the container for spacing */
}

.card {
    background: white;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Slightly increased shadow for depth */
    overflow: hidden;
    transition: transform 0.2s;
    width: 250px; /* Fixed width for cards */
    cursor: pointer;
    margin-bottom: 20px; /* Add margin to the bottom of cards */
}

.card img {
    width: 100%;
    height: 200px; /* Increased height for better image display */
    object-fit: cover; /* Crop image to fit the card */
}

.card h3 {
    margin: 10px 0; /* Adjusted margin for spacing */
    text-align: center;
    font-size: 18px; /* Increased font size for visibility */
    color: #555; /* Changed text color for better contrast */
}

.card:hover {
    transform: scale(1.05);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Increased shadow on hover */
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
    background-color: rgba(0, 0, 0, 0.6); /* Darker background for better contrast */
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
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); /* Added shadow for modal */
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
    <h1>Famous Indian Monuments</h1>
    <div class="container">
        <!-- Monument Card 1 -->
        <div class="card" onclick="openModal('Taj Mahal', 'Taj Mahal was commissioned by Mughal Emperor Shah Jahan in memory of his wife Mumtaz Mahal. It is built using white marble and is a symbol of love. It was completed in 1653.')">
            <img src="https://i.pinimg.com/474x/11/a2/c3/11a2c3d7a387f65aef559bd722553db5.jpg" alt="Taj Mahal">
            <h3>Taj Mahal</h3>
        </div>

        <!-- Monument Card 2 -->
        <div class="card" onclick="openModal('Qutub Minar', 'Qutub Minar was built in 1193 by Qutb al-Din Aibak. It is a minaret that forms part of the Qutb complex, a UNESCO World Heritage Site.')">
            <img src="https://i.pinimg.com/474x/21/1b/54/211b540a3cf4882d113ad221d15d3141.jpg" alt="Qutub Minar">
            <h3>Qutub Minar</h3>
        </div>

        <!-- Monument Card 3 -->
        <div class="card" onclick="openModal('Hawa Mahal', 'Hawa Mahal was built in 1799 by Maharaja Sawai Jai Singh II. It is known as the Palace of Winds and has 953 small windows.')">
            <img src="https://i.pinimg.com/474x/c6/bb/18/c6bb18c6a4d6e24100bdf5d042c0a8ae.jpg" alt="Hawa Mahal">
            <h3>Hawa Mahal</h3>
        </div>

        <!-- Monument Card 4 -->
        <div class="card" onclick="openModal('Gateway of India', 'The Gateway of India was built in 1924 to commemorate the visit of King George V and Queen Mary to India.')">
            <img src="https://i.pinimg.com/474x/35/96/5f/35965f01f552c56902d81be18fe04944.jpg" alt="Gateway of India">
            <h3>Gateway of India</h3>
        </div>

        <!-- Monument Card 5 -->
        <div class="card" onclick="openModal('Ajanta Caves', 'Ajanta Caves were carved between the 2nd century BCE and 480 CE, featuring intricate sculptures and paintings.')">
            <img src="https://i.pinimg.com/474x/20/e9/e5/20e9e5115a8ed1fed84542f4923d393e.jpg" alt="Ajanta Caves">
            <h3>Ajanta Caves</h3>
        </div>
<!-- Monument Card 6 -->
	<div class="card" onclick="openModal('Red Fort', 'The Red Fort was commissioned in 1638 by Mughal Emperor Shah Jahan as the palace for his new city, Shahjahanabad.')">
    <img src="https://i.pinimg.com/474x/10/32/71/103271b0baeb51ae662a315d922f6995.jpg" alt="Red Fort">
    <h3>Red Fort</h3>
	</div>

<!-- Monument Card 7 -->
	<div class="card" onclick="openModal('Chhatrapati Shivaji Terminus', 'Chhatrapati Shivaji Maharaj Terminus was built in 1887 and is a UNESCO World Heritage Site, showcasing Victorian Gothic architecture.')">
    <img src="https://i.pinimg.com/474x/d9/00/d6/d900d60eacb9c39a103700b475d67cd7.jpg" alt="Chhatrapati Shivaji Terminus">
    <h3>Chhatrapati Shivaji Terminus</h3>
	</div>

<!-- Monument Card 8 -->
	<div class="card" onclick="openModal('Mysore Palace', 'Mysore Palace is the official residence of the Wadiyar dynasty and is a magnificent example of Indo-Saracenic architecture, completed in 1912.')">
    <img src="https://i.pinimg.com/474x/1d/41/67/1d4167f2481d2a92ecdfcf973051b06e.jpg" alt="Mysore Palace">
    <h3>Mysore Palace</h3>
	</div>

	<!-- Monument Card 9 -->
	<div class="card" onclick="openModal('Jantar Mantar', 'Jantar Mantar is an astronomical observatory built in the 18th century by Maharaja Jai Singh II, featuring remarkable architectural astronomy instruments.')">
    <img src="https://i.pinimg.com/474x/05/42/f2/0542f2d3e6357e295ae494b3b6c4ff1c.jpg" alt="Jantar Mantar">
    <h3>Jantar Mantar</h3>
	</div>

	<!-- Monument Card 10 -->
	<div class="card" onclick="openModal('Sun Temple', 'The Sun Temple at Konark was built in the 13th century and is a UNESCO World Heritage Site, known for its intricate stone carvings.')">
    <img src="https://i.pinimg.com/474x/97/88/c1/9788c19ef127c37a03246295f27c3729.jpg" alt="Sun Temple">
    <h3>Sun Temple</h3>
	</div>

<!-- Monument Card 11 -->
	<div class="card" onclick="openModal('Gol Gumbaz', 'Gol Gumbaz is the mausoleum of Sultan Muhammad Adil Shah of the Deccan Sultanate and is known for its massive dome and whispering gallery.')">
    <img src="https://i.pinimg.com/474x/38/e7/3d/38e73d9a909b50a850eebdc55a210c05.jpg" alt="Gol Gumbaz">
    <h3>Gol Gumbaz</h3>
	</div>

<!-- Monument Card 12 -->
	<div class="card" onclick="openModal('Victoria Memorial', 'Victoria Memorial is a large marble building in Kolkata dedicated to the memory of Queen Victoria, completed in 1921.')">
	    <img src="https://i.pinimg.com/474x/6c/4c/eb/6c4cebb56a55dfb64b8b7d7662743e41.jpg" alt="Victoria Memorial">
    <h3>Victoria Memorial</h3>
	</div>

<!-- Monument Card 13 -->
<div class="card" onclick="openModal('Charminar', 'Charminar is a monument and mosque in Hyderabad, built in 1591 to commemorate the end of a plague.')">
    <img src="https://i.pinimg.com/474x/d6/70/87/d67087a4ee1863fc0bd6c1f7bf4c6e41.jpg" alt="Charminar">
    <h3>Charminar</h3>
</div>

<!-- Monument Card 14 -->
<div class="card" onclick="openModal('Lotus Temple', 'Lotus Temple is a Baháʼí House of Worship in Delhi, completed in 1986, known for its flower-like architecture.')">
    <img src="https://i.pinimg.com/474x/e8/13/ef/e813efaafc37425c5506bde6f511e40d.jpg" alt="Lotus Temple">
    <h3>Lotus Temple</h3>
</div>

<!-- Monument Card 15 -->
<div class="card" onclick="openModal('Rani Ki Vav', 'Rani Ki Vav is a stepwell situated in Patan, Gujarat, built in the 11th century as a memorial to a king.')">
    <img src="https://i.pinimg.com/474x/5e/91/67/5e9167728dd223523d6e4c41148c1d2d.jpg" alt="Rani Ki Vav">
    <h3>Rani Ki Vav</h3>
</div>

    </div>

    <!-- The Modal -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2 id="monumentTitle"></h2>
            <p id="monumentDetails"></p>
        </div>
    </div>

    <script>
        function openModal(title, details) {
            document.getElementById("monumentTitle").innerText = title;
            document.getElementById("monumentDetails").innerText = details;
            document.getElementById("myModal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("myModal").style.display = "none";
        }

        // Close the modal when the user clicks anywhere outside of it
        window.onclick = function(event) {
            var modal = document.getElementById("myModal");
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</body>
</html>
