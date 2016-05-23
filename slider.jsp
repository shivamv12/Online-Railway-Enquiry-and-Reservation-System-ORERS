
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <div id="slider">
        <figure>
            <img src="Images/2.jpg" alt="Indian_Railway" class="slide" id="image1">
            <img src="Images/3.jpg" alt="Indian_Railway" class="slide" id="image2">
            <img src="Images/4.jpg" alt="Indian_Railway" class="slide" id="image3">
            <img src="Images/5.jpg" alt="Indian_Railway" class="slide" id="image4">
            <img src="Images/6.jpg" alt="Indian_Railway" class="slide" id="image5">
            <img src="Images/7.jpg" alt="Indian_Railway" class="slide" id="image6">
            <img src="Images/8.jpg" alt="Indian_Railway" class="slide" id="image7">
            <img src="Images/9.jpg" alt="Indian_Railway" class="slide" id="image8">
        </figure>
        <div class="left" onclick="change_image(-1)"><p style="margin-top:0%; font-size:1.1em;">&laquo;-- Previous</p></div>
        <div class="right" onclick="change_image(1)"><p style="margin-top:0%; font-size:1.1em;">Next --&raquo;</p></div>
    </div>