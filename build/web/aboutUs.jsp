<%-- 
    Document   : aboutUs
    Created on : May 31, 2023, 3:17:20 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>About Us</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">
        <link rel="stylesheet" type="text/css" href="all_components/css/aboutUs.css">

        <%@include file="all_components/allCss.jsp"%>  
    </head>


    <body>
        <%@include file="all_components/navbar.jsp"%>

        <div class="about-sec">
            <div class="about-img">
                <img src="img/abou.jpg">
            </div>
            <div class="about-intro">
                <h2 style="color:black">About Us<span style="color: #198754;"> |</h2>
                <p> Welcome to Exhibitly, an online art gallery platform where creativity meets technology! Our
                    platform serves as a virtual hub that showcases an extensive range of artistic styles and
                    making art accessible to everyone, anytime, and anywhere.
                    One of the key features of our platform is its user-friendly interface, designed to enhance the
                    browsing and purchasing experience for art enthusiasts. With intuitive navigation and powerful 
                    search capabilities, visitors can easily explore our vast collection of artwork based on various 
                    criteria such as genre, artist, and more. <br>
                    Our platform employs cutting-edge technology to 
                    showcase high-resolution images of the artwork, allowing users to appreciate the intricate details 
                    and nuances of each piece.
                    We take pride in promoting diversity and inclusivity, featuring artists from different
                    backgrounds, cultures, and artistic traditions.<br>
                    At our online art gallery platform, we believe that art has the power to inspire, provoke emotions,
                    and spark meaningful conversations. We are dedicated to celebrating and promoting the transformative
                    power of art, connecting artists and art enthusiasts in a global community. Whether you are an 
                    artist looking for a platform to showcase your talent or an art lover seeking to discover new 
                    works, we invite you to embark on a creative journey with us. Explore, engage, and be inspired 
                    as you immerse yourself in the world of art on our platform.
                    t.</p>
            </div>
        </div>


        <%@include file="all_components/footer.jsp"%> 

    </body>
</html>
