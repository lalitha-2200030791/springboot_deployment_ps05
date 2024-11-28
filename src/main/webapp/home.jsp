<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    /* Style for full-page background video */
    .background-video {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        z-index: -1;
    }

    /* Add styles for page content */
    .content {
        position: relative;
        z-index: 1;
        color: white;
        text-align: center;
        padding-top: 20px;
    }

    /* Styles for dialog box */
    #mapDialog {
        display: none;
        position: fixed;
        top: 20%;
        left: 50%;
        transform: translate(-50%, -20%);
        width: 80%;
        height: 70%;
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        z-index: 1000;
    }

    #mapDialog select {
        margin-bottom: 10px;
        padding: 8px;
        width: 200px;
    }

    #mapDialog button {
        margin-top: 10px;
    }

    /* Style for map container */
    #map {
        width: 100%;
        height: 70%;
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

    /* Style for Country Map button at the center bottom */
    /* Style for Country Map button at the center bottom */
.map-button {
    position: fixed; /* Fix the button to the bottom of the screen */
    bottom: 20px; /* Adjust the distance from the bottom */
    left: 50%;
    transform: translateX(-50%); /* Center horizontally */
    background: linear-gradient(45deg, #6a5acd, #ffcc5c); /* Gradient background */
    color: white; /* White text */
    padding: 15px 30px; /* Padding for button */
    font-size: 18px; /* Larger font size */
    font-weight: bold; /* Bold text */
    border: none;
    border-radius: 12px; /* Rounded corners */
    cursor: pointer;
    box-shadow: 0 6px 10px rgba(0, 0, 0, 0.3); /* Drop shadow */
    transition: all 0.3s ease; /* Smooth transition */
}

/* Hover effect for the button */
.map-button:hover {
    background: linear-gradient(45deg, #00bfff, #6a5acd); /* Reverse gradient */
    transform: translateX(-50%) scale(1.1); /* Slight enlargement on hover */
    box-shadow: 0 8px 15px rgba(0, 0, 0, 0.4); /* Enhanced shadow */
}
    
</style>
<!-- Leaflet CSS -->
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
</head>
<body>

<!-- Background video element -->
<video class="background-video" autoplay loop muted>
    <source src="media/bg.mp4" type="video/mp4">
    <!-- Fallback message for browsers that don't support the video element -->
    Your browser does not support the video tag.
</video>

<div class="content">
    <%@include file="mainnavbar.jsp" %>
    <!-- Styled and centered Country Map button -->
    <button class="map-button" onclick="openMapDialog()">Country Map</button>
</div>

<!-- Map Dialog -->
<div id="mapDialog">
    <h3>Select a Category</h3>
    <select id="category" onchange="updateMap()">
        <option value="">--Select--</option>
        <option value="monuments">Monuments</option>
        <option value="temples">Temples</option>
        <option value="zoo">Zoo Parks</option>
        <option value="waterfalls">Waterfalls</option>
    </select>
    <div id="map"></div>
    <button onclick="closeMapDialog()">Close</button>
</div>

<!-- Overlay -->
<div id="overlay" class="overlay"></div>

<!-- Leaflet JS -->
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
<script>
    let map, markers = [];

    // Initialize OpenStreetMap with Leaflet
    function initMap() {
        map = L.map('map').setView([20.5937, 78.9629], 5); // Centered on India

        // Add OpenStreetMap tiles
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '© OpenStreetMap contributors'
        }).addTo(map);
    }

    // Open map dialog
    function openMapDialog() {
        document.getElementById("mapDialog").style.display = "block";
        document.getElementById("overlay").style.display = "block";
        if (!map) initMap();
    }

    // Close map dialog
    function closeMapDialog() {
        document.getElementById("mapDialog").style.display = "none";
        document.getElementById("overlay").style.display = "none";
    }

    // Update map based on category
    function updateMap() {
        const category = document.getElementById("category").value;

        // Clear existing markers
        markers.forEach(marker => map.removeLayer(marker));
        markers = [];

        // Sample data based on categories
        const locations = {
            monuments: [
                { lat: 27.1751, lng: 78.0421, title: "Taj Mahal, Agra" },
                { lat: 28.6129, lng: 77.2295, title: "India Gate, Delhi" },
                { lat: 13.0839, lng: 80.2740, title: "Marina Beach Lighthouse, Chennai" },
                { lat: 26.9239, lng: 75.8267, title: "Hawa Mahal, Jaipur" },
                { lat: 11.9314, lng: 79.8371, title: "French Colony, Puducherry" },
            ],
            temples: [
                { lat: 25.2686, lng: 82.9894, title: "Kashi Vishwanath Temple, Varanasi" },
                { lat: 13.4356, lng: 74.7445, title: "Udupi Temple, Karnataka" },
                { lat: 10.7867, lng: 78.7038, title: "Brihadeeswara Temple, Thanjavur" },
                { lat: 9.1534, lng: 79.1155, title: "Rameswaram Temple, Tamil Nadu" },
                { lat: 18.9203, lng: 72.8343, title: "Siddhivinayak Temple, Mumbai" },
            ],
            zoo: [
                { lat: 12.9577, lng: 77.5906, title: "Bangalore Zoo, Karnataka" },
                { lat: 22.5683, lng: 88.4638, title: "Alipore Zoo, Kolkata" },
                { lat: 28.7050, lng: 77.1481, title: "Delhi Zoo" },
                { lat: 17.3958, lng: 78.4218, title: "Nehru Zoological Park, Hyderabad" },
                { lat: 19.0760, lng: 72.8777, title: "Mumbai Zoo (Veermata Jijabai Bhosale Zoo)" },
            ],
            waterfalls: [
                { lat: 19.7877, lng: 73.7844, title: "Bhandardara Falls, Maharashtra" },
                { lat: 15.3142, lng: 74.3142, title: "Dudhsagar Falls, Goa" },
                { lat: 11.9500, lng: 79.8167, title: "Silver Cascade Falls, Kodaikanal" },
                { lat: 22.7341, lng: 86.0424, title: "Hundru Falls, Jharkhand" },
                { lat: 10.3089, lng: 77.0120, title: "Athirapally Falls, Kerala" },
            ],
        };

        const selectedLocations = locations[category] || [];
        selectedLocations.forEach(location => {
            const marker = L.marker([location.lat, location.lng])
                .addTo(map)
                .bindPopup(location.title);
            markers.push(marker);
        });

        if (selectedLocations.length > 0) {
            map.setView([selectedLocations[0].lat, selectedLocations[0].lng], 6);
        }
    }
</script>

</body>
</html>
