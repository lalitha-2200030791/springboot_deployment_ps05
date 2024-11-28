<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS -->
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin: 60px 0 20px; /* Adjust the top margin to create space */
            padding-top: 20px; /* Add padding at the top for additional space */
        }

        .filters {
            margin-bottom: 20px;
        }

        .filter {
            margin: 5px 0;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.2s;
            width: 250px;
            cursor: pointer;
        }

        .card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
        }

        .card h3 {
            margin: 10px;
            text-align: center;
        }

        .card:hover {
            transform: scale(1.05);
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
    background-color: rgba(0, 0, 0, 0.7); 
    padding-top: 60px; 
}

       .modal-content {
    background-color: #fefefe;
    margin: 5% auto; 
    padding: 20px;
    border: 1px solid #888;
    width: 80%; 
    max-width: 800px; /* Adjust max-width for wider box */
    border-radius: 8px;
    position: relative; /* Allow positioning of the close button */
}
       .modal-body {
    display: flex; /* Use flexbox to align image and text */
}
.modal-image {
    width: 40%; /* Set image width */
    height: auto; /* Maintain aspect ratio */
    border-radius: 8px; /* Optional: add some rounding */
    margin-right: 20px; /* Space between image and text */
}
.modal-text {
    flex: 1; /* Allow text to fill the remaining space */
}
.modal-header {
    display: flex; /* Use flexbox for alignment */
    justify-content: space-between; /* Space between elements */
    align-items: center; /* Center vertically */
}

        .modal-image-container {
            flex: 1; /* Allow the image container to take up available space */
            margin-right: 20px; /* Space between image and details */
        }

        .modal-details-container {
            flex: 2; /* Allow the details container to take up more space */
        }

       .close {
    color: #aaa;
    font-size: 28px;
    font-weight: bold;
    position: absolute; /* Position relative to modal content */
    top: 10px; /* Position from the top */
    right: 20px; /* Position from the right */
    cursor: pointer;
}
        
 .close:hover,
.close:focus {
    color: black;
    text-decoration: none;
}
    </style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
    <h1>GALLERIES OF BHARATH</h1>
    <h3>Use the filters to navigate</h3>
    <div class="filters">
        <h3>Filters</h3>
        <label class="filter">
            <input type="checkbox" value="paintings" onchange="filterGallery()"> Paintings
        </label>
        <label class="filter">
            <input type="checkbox" value="crafts" onchange="filterGallery()"> Crafts
        </label>
        <label class="filter">
            <input type="checkbox" value="temple_histories" onchange="filterGallery()"> Temple Histories
        </label>
        <!-- Add more filters as needed -->
    </div>

    <div class="container" id="galleryContainer">
        <div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/b8/57/32/b85732e17a0c5314bb3e15d7d4328180.jpg', 'Madhubani Painting', 'Madhubani painting is a style of Indian painting, originating from the Mithila region of Bihar. It is known for its vibrant colors and intricate patterns.')">
            <img src="https://i.pinimg.com/474x/b8/57/32/b85732e17a0c5314bb3e15d7d4328180.jpg" alt="Madhubani Painting">
            <h3>Madhubani Painting</h3>
        </div>
        <div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/b7/07/aa/b707aa478efc8381c72c090a2adc400c.jpg', 'Warli Art', 'Warli art is a traditional Indian tribal art form that uses geometric shapes to depict everyday life and nature.')">
            <img src="https://i.pinimg.com/474x/b7/07/aa/b707aa478efc8381c72c090a2adc400c.jpg" alt="Warli Art">
            <h3>Warli Art</h3>
        </div>
        <div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/73/bf/21/73bf21a054321157792142937b882792.jpg', 'Konark Sun Temple', 'The Konark Sun Temple, located in Odisha, is a UNESCO World Heritage Site and is known for its stunning architecture and intricate stone carvings.')">
            <img src="https://i.pinimg.com/474x/73/bf/21/73bf21a054321157792142937b882792.jpg" alt="Konark Sun Temple">
            <h3>Konark Sun Temple</h3>
        </div>
        <div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/e6/07/5a/e6075af3ada4748275a245864a3ee3d7.jpg', 'Pattachitra Painting', 'Pattachitra is a traditional cloth-based painting style from Odisha, known for its intricate details and mythological narratives.')">
    <img src="https://i.pinimg.com/474x/e6/07/5a/e6075af3ada4748275a245864a3ee3d7.jpg" alt="Pattachitra Painting">
    <h3>Pattachitra Painting</h3>
</div>

<div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/94/d3/bc/94d3bc592914f6c3f3454565059992f5.jpg', 'Tanjore Painting', 'Tanjore painting is a classical South Indian painting style known for its rich colors, surface richness, and use of gold foil.')">
    <img src="https://i.pinimg.com/474x/94/d3/bc/94d3bc592914f6c3f3454565059992f5.jpg" alt="Tanjore Painting">
    <h3>Tanjore Painting</h3>
</div>

<div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/d5/03/49/d50349dd325c45235196393811f5cba7.jpg', 'Kalamkari Painting', 'Kalamkari is a traditional Indian art form that involves hand-painting or block-printing on fabric, often depicting mythological themes.')">
    <img src="https://i.pinimg.com/474x/d5/03/49/d50349dd325c45235196393811f5cba7.jpg" alt="Kalamkari Painting">
    <h3>Kalamkari Painting</h3>
</div>

<div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/54/af/a0/54afa0047e130e31f881e7abf2b7b3df.jpg', 'Mughal Painting', 'Mughal painting is a style that flourished in the Mughal Empire, known for its naturalistic styles and intricate details.')">
    <img src="https://i.pinimg.com/474x/54/af/a0/54afa0047e130e31f881e7abf2b7b3df.jpg" alt="Mughal Painting">
    <h3>Mughal Painting</h3>
</div>

<div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/17/31/be/1731be649245eba75d7982c31a1f1760.jpg', 'Miniature Painting', 'Miniature painting is a highly detailed and colorful art form, traditionally created in India, Iran, and Central Asia.')">
    <img src="https://i.pinimg.com/474x/17/31/be/1731be649245eba75d7982c31a1f1760.jpg" alt="Miniature Painting">
    <h3>Miniature Painting</h3>
</div>
        <div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/69/5c/9d/695c9dabff8ac7515842ae99a369902f.jpg', 'Sanjhi Art', 'Sanjhi art is a traditional Indian craft of creating intricate paper cut-outs, often used for decoration during festivals.')">
    <img src="https://i.pinimg.com/474x/69/5c/9d/695c9dabff8ac7515842ae99a369902f.jpg" alt="Sanjhi Art">
    <h3>Sanjhi Art</h3>
</div>

<div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/e0/a3/f4/e0a3f4d9673173f1b7c7342d4c11702e.jpg', 'Kalighat Painting', 'Kalighat painting is a traditional form of folk painting from West Bengal, known for its bold colors and expressive figures.')">
    <img src="https://i.pinimg.com/474x/e0/a3/f4/e0a3f4d9673173f1b7c7342d4c11702e.jpg" alt="Kalighat Painting">
    <h3>Kalighat Painting</h3>
</div>

<div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/e4/b3/61/e4b36156e83ff6f13cdd4a4567d8a5ea.jpg', 'Batik Art', 'Batik is a traditional textile art form that involves wax-resist dyeing, often featuring vibrant colors and patterns.')">
    <img src="https://i.pinimg.com/474x/e4/b3/61/e4b36156e83ff6f13cdd4a4567d8a5ea.jpg" alt="Batik Art">
    <h3>Batik Art</h3>
</div>

<div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/2b/58/7a/2b587ae12a6e8fb64ed8d13986221092.jpg', 'Ajanta Cave Paintings', 'Ajanta Cave Paintings are ancient Indian murals known for their elaborate detail and themes from Buddhist traditions.')">
    <img src="https://i.pinimg.com/474x/2b/58/7a/2b587ae12a6e8fb64ed8d13986221092.jpg" alt="Ajanta Cave Paintings">
    <h3>Ajanta Cave Paintings</h3>
</div>

<div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/9c/6e/73/9c6e73e7c65d5024cba3b3ab854b1af0.jpg', 'Mithila Art', 'Mithila art is a traditional painting style from Bihar, featuring colorful designs and depicting themes of nature and mythology.')">
    <img src="https://i.pinimg.com/474x/9c/6e/73/9c6e73e7c65d5024cba3b3ab854b1af0.jpg" alt="Mithila Art">
    <h3>Mithila Art</h3>
</div>

<div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/54/26/c3/5426c3c3693d3d691cd8267b3ae354ba.jpg', 'Nirmal Art', 'Nirmal art is a traditional craft from Telangana, known for its intricate designs and vibrant colors, often depicting folklore and nature.')">
    <img src="https://i.pinimg.com/474x/54/26/c3/5426c3c3693d3d691cd8267b3ae354ba.jpg" alt="Nirmal Art">
    <h3>Nirmal Art</h3>
</div>

<div class="card" data-category="paintings" onclick="openModal('https://i.pinimg.com/474x/a7/ed/ed/a7eded71b690b1104d389be46c773cab.jpg', 'Pahari Painting', 'Pahari painting is a traditional art form from the Himalayan region, known for its vibrant colors and depictions of nature and folklore.')">
    <img src="https://i.pinimg.com/474x/a7/ed/ed/a7eded71b690b1104d389be46c773cab.jpg" alt="Pahari Painting">
    <h3>Pahari Painting</h3>
</div>
<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/4f/0e/66/4f0e665467a061e58ae877528c1ba642.jpg', 'Pottery', 'Indian pottery, often crafted using traditional methods, features unique designs and is functional for everyday use.')">
    <img src="https://i.pinimg.com/474x/4f/0e/66/4f0e665467a061e58ae877528c1ba642.jpg" alt="Pottery">
    <h3>Pottery</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/7e/bc/6c/7ebc6ca106959f6f940c0dff4b2269eb.jpg', 'Wooden Carvings', 'Indian wooden carvings showcase intricate designs and craftsmanship, often representing religious or cultural themes.')">
    <img src="https://i.pinimg.com/474x/7e/bc/6c/7ebc6ca106959f6f940c0dff4b2269eb.jpg" alt="Wooden Carvings">
    <h3>Wooden Carvings</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/57/00/3b/57003b3198c55ad4bb558c080639919b.jpg', 'Bamboo Crafts', 'Bamboo crafts are eco-friendly products crafted from bamboo, used for various functional and decorative purposes.')">
    <img src="https://i.pinimg.com/474x/57/00/3b/57003b3198c55ad4bb558c080639919b.jpg" alt="Bamboo Crafts">
    <h3>Bamboo Crafts</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/e8/58/8d/e8588d115c434e1443ba62b8918326a6.jpg', 'Zari Work', 'Zari work is a traditional Indian embroidery technique using metallic threads to create intricate designs on fabrics.')">
    <img src="https://i.pinimg.com/474x/e8/58/8d/e8588d115c434e1443ba62b8918326a6.jpg" alt="Zari Work">
    <h3>Zari Work</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/736x/58/3a/59/583a59b64f656b176b0f0e624f83b1b2.jpg', 'Leather Craft', 'Indian leather craft includes traditional techniques for creating bags, shoes, and decorative items, often with intricate designs.')">
    <img src="https://i.pinimg.com/736x/58/3a/59/583a59b64f656b176b0f0e624f83b1b2.jpg" alt="Leather Craft">
    <h3>Leather Craft</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/27/1c/de/271cde37d1035f585112768553f8bf62.jpg', 'Stone Inlay', 'Stone inlay is a decorative art form where stones are cut and fitted into surfaces, creating intricate patterns and designs.')">
    <img src="https://i.pinimg.com/474x/27/1c/de/271cde37d1035f585112768553f8bf62.jpg" alt="Stone Inlay">
    <h3>Stone Inlay</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/b2/82/85/b2828534f56f0bfffbac2b1410e4d681.jpg', 'Paper Mache', 'Paper mache is an art form that involves creating objects using a mixture of paper and glue, often painted with vibrant colors.')">
    <img src="https://i.pinimg.com/474x/b2/82/85/b2828534f56f0bfffbac2b1410e4d681.jpg" alt="Paper Mache">
    <h3>Paper Mache</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/75/33/f6/7533f6b9486ede0629043741d2351c9a.jpg', 'Weaving', 'Weaving is a traditional craft in India, producing textiles using various techniques, often featuring intricate patterns and designs.')">
    <img src="https://i.pinimg.com/474x/75/33/f6/7533f6b9486ede0629043741d2351c9a.jpg" alt="Weaving">
    <h3>Weaving</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/78/f4/ee/78f4ee19a72f852341ec5c0ac9de2dca.jpg', 'Embroidered Fabrics', 'Embroidered fabrics in India are known for their colorful and intricate needlework, often used in clothing and home décor.')">
    <img src="https://i.pinimg.com/474x/78/f4/ee/78f4ee19a72f852341ec5c0ac9de2dca.jpg" alt="Embroidered Fabrics">
    <h3>Embroidered Fabrics</h3>
</div>
        <div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/cc/6f/64/cc6f64f7ecf841a24f09ec72fb08d1d5.jpg', 'Kundan Jewelry', 'Kundan jewelry is a traditional Indian form of jewelry made with gold foil and gemstones, characterized by intricate designs.')">
    <img src="https://i.pinimg.com/474x/cc/6f/64/cc6f64f7ecf841a24f09ec72fb08d1d5.jpg" alt="Kundan Jewelry">
    <h3>Kundan Jewelry</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/69/29/43/692943bce7aab7e6c0e6c223a3cec25d.jpg', 'Brass Utensils', 'Brass utensils are traditional Indian kitchenware, known for their durability and unique aesthetic, often handcrafted with intricate designs.')">
    <img src="https://i.pinimg.com/474x/69/29/43/692943bce7aab7e6c0e6c223a3cec25d.jpg" alt="Brass Utensils">
    <h3>Brass Utensils</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/36/53/94/365394d7cb1a56b13be9184cfea9df7f.jpg', 'Dhokra Art', 'Dhokra art is an ancient form of metal casting using the lost-wax technique, creating beautiful tribal artifacts and jewelry.')">
    <img src="https://i.pinimg.com/474x/36/53/94/365394d7cb1a56b13be9184cfea9df7f.jpg" alt="Dhokra Art">
    <h3>Dhokra Art</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/94/65/15/9465159008fbc96dac2bbfc69123017b.jpg', 'Kashmiri Shawls', 'Kashmiri shawls are renowned for their exquisite craftsmanship, intricate patterns, and luxurious materials like pashmina.')">
    <img src="https://i.pinimg.com/474x/94/65/15/9465159008fbc96dac2bbfc69123017b.jpg" alt="Kashmiri Shawls">
    <h3>Kashmiri Shawls</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/5a/ec/d2/5aecd217d90b34a09b92e0e61722fb6c.jpg', 'Terracotta Crafts', 'Terracotta crafts include pottery and sculptures made from clay, showcasing traditional designs and cultural significance.')">
    <img src="https://i.pinimg.com/474x/5a/ec/d2/5aecd217d90b34a09b92e0e61722fb6c.jpg" alt="Terracotta Crafts">
    <h3>Terracotta Crafts</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/98/f9/b6/98f9b6ff8a0043d0e668a506e71e3e0b.jpg', 'Banjara Embroidery', 'Banjara embroidery is a colorful and vibrant folk art from Rajasthan, often used to adorn garments and home décor items.')">
    <img src="https://i.pinimg.com/474x/98/f9/b6/98f9b6ff8a0043d0e668a506e71e3e0b.jpg" alt="Banjara Embroidery">
    <h3>Banjara Embroidery</h3>
</div>

<div class="card" data-category="crafts" onclick="openModal('https://i.pinimg.com/474x/3c/0d/37/3c0d374094950d714b9274f506d6694d.jpg', 'Jute Crafts', 'Jute crafts include bags, rugs, and other decorative items made from jute fiber, known for their eco-friendliness and durability.')">
    <img src="https://i.pinimg.com/474x/3c/0d/37/3c0d374094950d714b9274f506d6694d.jpg" alt="Jute Crafts">
    <h3>Jute Crafts</h3>
</div>
<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/cd/ae/4d/cdae4dfb1ddab9f8e7c1819ee1ab5bb5.jpg', 'Kedarnath Temple', 'Kedarnath Temple is dedicated to Lord Shiva and is one of the Char Dham pilgrimage sites. It is believed to have been established by Adi Shankaracharya in the 8th century and is situated in the Uttarakhand Himalayas.')">
    <img src="https://i.pinimg.com/474x/cd/ae/4d/cdae4dfb1ddab9f8e7c1819ee1ab5bb5.jpg" alt="Kedarnath Temple">
    <h3>Kedarnath Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/d2/dc/98/d2dc98e2bce754c4a5d6ce7b41a467f8.jpg', 'Golden Temple', 'The Golden Temple, also known as Harmandir Sahib, is the holiest Gurdwara of Sikhism located in Amritsar, Punjab. It was founded in 1577 by Guru Ram Das, the fourth Sikh Guru, and was later renovated by Maharaja Ranjit Singh.')">
    <img src="https://i.pinimg.com/474x/d2/dc/98/d2dc98e2bce754c4a5d6ce7b41a467f8.jpg" alt="Golden Temple">
    <h3>Golden Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/7a/5e/64/7a5e648f4a321a7d3171387a7f04b3fc.jpg', 'Brihadeeswarar Temple', 'Brihadeeswarar Temple, located in Thanjavur, Tamil Nadu, was built in the 11th century by Raja Raja Chola I. It is a UNESCO World Heritage Site and is known for its grand architecture and the towering vimana.')">
    <img src="https://i.pinimg.com/474x/7a/5e/64/7a5e648f4a321a7d3171387a7f04b3fc.jpg" alt="Brihadeeswarar Temple">
    <h3>Brihadeeswarar Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/08/3f/9f/083f9f975680b5dc9c5e3bd2e8106d54.jpg', 'Meenakshi Temple', 'Meenakshi Temple in Madurai is dedicated to Goddess Meenakshi and her consort, Sundareswarar. It dates back to the 6th century and features stunning architecture with intricate sculptures and paintings.')">
    <img src="https://i.pinimg.com/474x/08/3f/9f/083f9f975680b5dc9c5e3bd2e8106d54.jpg" alt="Meenakshi Temple">
    <h3>Meenakshi Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/36/ae/f6/36aef6a6c1c8351c3d49cd0d8c3321e5.jpg', 'Khajuraho Temples', 'The Khajuraho Temples, built between 950 and 1050 AD by the Chandela dynasty, are famous for their stunning sculptures and intricate erotic carvings. They are recognized as a UNESCO World Heritage Site.')">
    <img src="https://i.pinimg.com/474x/36/ae/f6/36aef6a6c1c8351c3d49cd0d8c3321e5.jpg" alt="Khajuraho Temples">
    <h3>Khajuraho Temples</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/86/28/b9/8628b9f754cc1fae302257af7580cad9.jpg', 'Tirupati Temple', 'Tirupati Temple, located in Andhra Pradesh, is one of the most visited pilgrimage sites in the world. It is dedicated to Lord Venkateswara and has a rich history dating back over a thousand years.')">
    <img src="https://i.pinimg.com/474x/86/28/b9/8628b9f754cc1fae302257af7580cad9.jpg" alt="Tirupati Temple">
    <h3>Tirupati Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/61/49/85/6149858a290a68f95a974858fc255879.jpg', 'Siddhivinayak Temple', 'Siddhivinayak Temple in Mumbai is dedicated to Lord Ganesha and was built in 1801. It is one of the most famous Ganesha temples in India, attracting thousands of devotees daily.')">
    <img src="https://i.pinimg.com/474x/61/49/85/6149858a290a68f95a974858fc255879.jpg" alt="Siddhivinayak Temple">
    <h3>Siddhivinayak Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/01/f4/d1/01f4d1d86591793003b54647406a1cc4.jpg', 'Hampi Temples', 'The Hampi Temples, part of the Vijayanagara Empire, date back to the 14th century. They are renowned for their magnificent architecture and intricate stone carvings, and are a UNESCO World Heritage Site.')">
    <img src="https://i.pinimg.com/474x/01/f4/d1/01f4d1d86591793003b54647406a1cc4.jpg" alt="Hampi Temples">
    <h3>Hampi Temples</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/57/d1/86/57d1868bb51b62aeab8c627067b52a20.jpg', 'Kashi Vishwanath Temple', 'Kashi Vishwanath Temple, located in Varanasi, is one of the most famous Hindu temples dedicated to Lord Shiva. The temple has been destroyed and rebuilt several times throughout history, with its current structure built in the 18th century.')">
    <img src="https://i.pinimg.com/474x/57/d1/86/57d1868bb51b62aeab8c627067b52a20.jpg" alt="Kashi Vishwanath Temple">
    <h3>Kashi Vishwanath Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/87/71/a1/8771a17e23c182f02b92008256352acc.jpg', 'Sankat Mochan Temple', 'Sankat Mochan Temple in Varanasi is dedicated to Lord Hanuman and was established by the famous poet-saint Tulsidas in the 16th century. It is a significant pilgrimage site for devotees of Hanuman.')">
    <img src="https://i.pinimg.com/474x/87/71/a1/8771a17e23c182f02b92008256352acc.jpg" alt="Sankat Mochan Temple">
    <h3>Sankat Mochan Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/ce/d4/d3/ced4d363626d819ae9608011fe00ef2e.jpg', 'ISKCON Temple', 'The ISKCON Temple in Bangalore is part of the International Society for Krishna Consciousness. It was inaugurated in 1997 and is renowned for its vibrant architecture and spiritual atmosphere.')">
    <img src="https://i.pinimg.com/474x/ce/d4/d3/ced4d363626d819ae9608011fe00ef2e.jpg" alt="ISKCON Temple">
    <h3>ISKCON Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/8e/8e/f6/8e8ef679cf5bac7a0a691cc375fe0552.jpg', 'Ramanathaswamy Temple', 'Ramanathaswamy Temple, located in Rameswaram, is dedicated to Lord Shiva. It is one of the Char Dham pilgrimage sites and is believed to be the place where Lord Rama worshipped Shiva.')">
    <img src="https://i.pinimg.com/474x/8e/8e/f6/8e8ef679cf5bac7a0a691cc375fe0552.jpg" alt="Ramanathaswamy Temple">
    <h3>Ramanathaswamy Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/6e/57/21/6e5721247dc7501d6cc4e12371da0f72.jpg', 'Akshardham Temple', 'Akshardham Temple in Delhi is a modern architectural marvel dedicated to Bhagwan Swaminarayan. It was inaugurated in 2005 and showcases Indian culture and spirituality through exhibitions and performances.')">
    <img src="https://i.pinimg.com/474x/6e/57/21/6e5721247dc7501d6cc4e12371da0f72.jpg" alt="Akshardham Temple">
    <h3>Akshardham Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/9f/52/6f/9f526f7409dfa7081fd3c46a13444eaf.jpg', 'Chennakesava Temple', 'Chennakesava Temple, located in Belur, Karnataka, was built in the 12th century by the Hoysala dynasty. It is known for its intricate carvings and exquisite sculptures.')">
    <img src="https://i.pinimg.com/474x/9f/52/6f/9f526f7409dfa7081fd3c46a13444eaf.jpg" alt="Chennakesava Temple">
    <h3>Chennakesava Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/736x/d8/3a/df/d83adf8f2f1f0b2b0f5755957b69bb12.jpg', 'Kottarakkara Sree Murugan Temple', 'Kottarakkara Sree Murugan Temple is located in Kerala and is dedicated to Lord Murugan. It is believed to have been established in the 10th century and is famous for its vibrant festivals and rituals.')">
    <img src="https://i.pinimg.com/736x/d8/3a/df/d83adf8f2f1f0b2b0f5755957b69bb12.jpg" alt="Kottarakkara Sree Murugan Temple">
    <h3>Kottarakkara Sree Murugan Temple</h3>
</div>


<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/ab/88/e1/ab88e1c90a94f01c64d92226c5b42705.jpg', 'Narmada Temple', 'Narmada Temple in Omkareshwar, Madhya Pradesh, is dedicated to Lord Shiva. It is situated on an island and is a significant pilgrimage site, believed to have been established in the 8th century.')">
    <img src="https://i.pinimg.com/474x/ab/88/e1/ab88e1c90a94f01c64d92226c5b42705.jpg" alt="Narmada Temple">
    <h3>Narmada Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/d3/b2/b0/d3b2b0565b564fce11d54af516789507.jpg', 'Padmanabhaswamy Temple', 'Padmanabhaswamy Temple in Thiruvananthapuram, Kerala, is dedicated to Lord Vishnu. It is known for its opulent architecture and is one of the richest temples in the world, with a history dating back to the 16th century.')">
    <img src="https://i.pinimg.com/474x/d3/b2/b0/d3b2b0565b564fce11d54af516789507.jpg" alt="Padmanabhaswamy Temple">
    <h3>Padmanabhaswamy Temple</h3>
</div>

<div class="card" data-category="temple_histories" onclick="openModal('https://i.pinimg.com/474x/55/37/ff/5537ffede2f9a67b89c056b0095d9d57.jpg', 'Ranganathaswamy Temple', 'Ranganathaswamy Temple, located in Srirangam, Tamil Nadu, is one of the largest temple complexes in India. It is dedicated to Lord Ranganatha and has a rich history dating back over a thousand years.')">
    <img src="https://i.pinimg.com/474x/55/37/ff/5537ffede2f9a67b89c056b0095d9d57.jpg" alt="Ranganathaswamy Temple">
    <h3>Ranganathaswamy Temple</h3>
</div>

        
    </div>

   <div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span> <!-- Close button -->
        <div class="modal-body"> <!-- New container for body -->
            <img id="modalImage" src="" alt="Modal Image" class="modal-image">
            <div class="modal-text"> <!-- Container for text content -->
                <h2 id="modalTitle"></h2>
                <p id="modalDetails"></p>
            </div>
        </div>
    </div>
</div>
   
    
    <script>
        function openModal(imageSrc, title, details) {
            document.getElementById('modalImage').src = imageSrc;
            document.getElementById('modalTitle').innerText = title;
            document.getElementById('modalDetails').innerText = details;
            document.getElementById('myModal').style.display = "block";
        }

        function closeModal() {
            document.getElementById('myModal').style.display = "none";
        }

        function filterGallery() {
            const checkboxes = document.querySelectorAll('.filters input[type="checkbox"]');
            const selectedCategories = Array.from(checkboxes).filter(checkbox => checkbox.checked).map(checkbox => checkbox.value);
            const cards = document.querySelectorAll('.card');

            cards.forEach(card => {
                const category = card.getAttribute('data-category');
                if (selectedCategories.length === 0 || selectedCategories.includes(category)) {
                    card.style.display = "block";
                } else {
                    card.style.display = "none";
                }
            });
        }
    </script>
</body>
</html>
