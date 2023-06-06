<%-- 
    Document   : index
    Created on : Sep 4, 2022, 1:23:11 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exhibitly</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">
        <%@include file="all_components/allCss.jsp"%>
        <style type="text/css">
            .back-img{
                background-image: url("img/imgg1.jpg");
                height: 60vh;
                widows: 100%;
                background-size: cover;
                background-repeat: no-repeat;
            }
            .crd-ho:hover{
                background-color: #fcf7f7;
            }
            .card-image {
                height: 200px;
                background-size: cover;
                background-position: center;
            }
            .toast-container {
                position: fixed;
                top: 1rem;
                right: 1rem;
                z-index: 9999;
            }

            .toast {
                padding: 0.75rem 1rem;
                border-radius: 0.25rem;
                background-color: #333;
                color: #fff;
            }
            #alert {
                transition: opacity 0.5s ease-in-out;
            }

            .hidden {
                opacity: 0;
                transition: opacity 0.5s ease-in-out;
            }
        </style>

        <script>
            // Initialization for ES Users
            import {
            Toast,
                    initTE,
            } from "tw-elements";

            initTE({Toast});
        </script>
    </head>
    <body  class="bg-gray-100"  >
        <%@include file="all_components/navbar.jsp"%>


        <c:if test="${errorMessage != null}">

            <!--<h5 class="text-center text-danger">${errorMessage}</h5>-->
            <!--            <div class="relative">
                            <div id="alert" class="absolute top-0 right-0 mt-4 mr-4 p-4 bg-red-500 text-white rounded shadow">
            ${errorMessage}
        </div>

         Other containerent 
    </div>-->

            <div id="alert" class="fixed top-0 right-0    bg-red-500 text-white p-4 rounded shadow ">
                <span class="block">${errorMessage}</span>
                <button id="closeBtn" class="absolute top-0 right-0 p-2">
                    <svg class="h-6 w-6 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>

        </c:if>       


        <c:if test="${successMessage != null}">

            <h5 class="text-center text-success"></h5>
            <!--            <div class="relative">
                            <div id="alert" class="absolute top-0 right-0 mt-4 mr-4 p-4 bg-green-500 text-white rounded shadow">
            ${successMessage}
        </div>

         Other content 
    </div>-->

            <div id="alert" class="fixed top-0 right-0 bg-red-500 text-white p-4 rounded shadow">
                <span class="block">${successMessage}</span>
                <button id="closeBtn" class="absolute top-0 right-0 p-2">
                    <svg class="h-6 w-6 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>


        </c:if>

        <!--        <div class="container-fluid back-img p-5" style=" ">
                    <h1 class="text-left text-danger">Creative<br> and Best Arts</h1>
        
                    <h3>“Art for all, buy art relax your life”</h3> 
                </div>-->
        <div class="max-w-7xl mx-auto mt-2">

            <div id="default-carousel" class="relative" data-carousel="static">

                <div class="overflow-hidden relative h-56 rounded-lg sm:h-64 xl:h-80 2xl:h-96">

                    <div class="hidden duration-700 ease-in-out" data-carousel-item>
                        <span class="absolute top-1/2 left-1/2 text-2xl font-semibold text-white -translate-x-1/2 -translate-y-1/2 sm:text-3xl ">Primer Slide</span>
                        <img src="img/c1.jpg" class="block absolute top-1/2 left-1/2 w-full -translate-x-1/2 -translate-y-1/2" alt="...">
                    </div>

                    <div class="hidden duration-700 ease-in-out" data-carousel-item>
                        <img src="img/c2.jpg" class="block absolute top-1/2 left-1/2 w-full -translate-x-1/2 -translate-y-1/2" alt="...">
                    </div>

                    <div class="hidden duration-700 ease-in-out" data-carousel-item>
                        <img src="img/c3.jpg" class="block absolute top-1/2 left-1/2 w-full -translate-x-1/2 -translate-y-1/2" alt="...">
                    </div>
                </div>


                <div class="flex absolute bottom-5 left-1/2 z-30 space-x-3 -translate-x-1/2">
                    <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 1" data-carousel-slide-to="0"></button>
                    <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 2" data-carousel-slide-to="1"></button>
                    <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 3" data-carousel-slide-to="2"></button>
                </div>

                <button type="button" class="flex absolute top-0 left-0 z-30 justify-center items-center px-4 h-full cursor-pointer group focus:outline-none" data-carousel-prev>
                    <span class="inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-white/30  group-focus:ring-4 group-focus:ring-white  group-focus:outline-none">
                        <svg class="w-5 h-5 text-white sm:w-6 sm:h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path></svg>
                        <span class="hidden">Anterior</span>
                    </span>
                </button>
                <button type="button" class="flex absolute top-0 right-0 z-30 justify-center items-center px-4 h-full cursor-pointer group focus:outline-none" data-carousel-next>
                    <span class="inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-white/30 0 group-focus:ring-4 group-focus:ring-white  group-focus:outline-none">
                        <svg class="w-5 h-5 text-white sm:w-6 sm:h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
                        <span class="hidden">Siguiente</span>
                    </span>
                </button>
            </div>

            <script>
                const carousel = document.querySelector('[data-carousel="static"]');
                const carouselItems = Array.from(carousel.querySelectorAll('[data-carousel-item]'));
                const prevButton = carousel.querySelector('[data-carousel-prev]');
                const nextButton = carousel.querySelector('[data-carousel-next]');
                const slideButtons = Array.from(carousel.querySelectorAll('[data-carousel-slide-to]'));
                let currentIndex = 0;

                function showSlide(index) {
                    carouselItems.forEach((item, i) => {
                        item.classList.toggle('hidden', i !== index);
                    });

                    slideButtons.forEach((button, i) => {
                        button.setAttribute('aria-current', i === index);
                    });
                }

                function previousSlide() {
                    currentIndex = (currentIndex - 1 + carouselItems.length) % carouselItems.length;
                    showSlide(currentIndex);
                }

                function nextSlide() {
                    currentIndex = (currentIndex + 1) % carouselItems.length;
                    showSlide(currentIndex);
                }

                slideButtons.forEach((button, index) => {
                    button.addEventListener('click', () => {
                        currentIndex = index;
                        showSlide(currentIndex);
                    });
                });

                prevButton.addEventListener('click', previousSlide);
                nextButton.addEventListener('click', nextSlide);

                setInterval(nextSlide, 3000); // Automatic slide change every 3 seconds
            </script>
        </div>

        <!--here ends slider section-->


        <!--here starts propduct card--> 

        <div class="container mx-8 px-4 py-6">

            <div class="text-center mb-8">
                <h1 class="text-4xl font-bold mb-2">Available Arts</h1>
                <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
            </div>

            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-7">
                <!-- Product Card -->
                <c:forEach var="art" items="${artlist}">
                    <div class="bg-white rounded-lg shadow-md overflow-hidden transform hover:scale-105 transition duration-300 ">
                        <div class="flex w-full min-h-40 rounded-md overflow-hidden lg:h-60 lg:aspect-none justify-center">
                            <img src="img/arts/<c:out value="${art.photoName}"/>"   class="w-auto h-full object-center object-cover lg:w-auto lg:h-full rounded">
                        </div>

                        <div class="p-2">
                            <h3 class="text-xl font-semibold mb-2">${art.artName}</h3>
                            <p class="text-gray-500 mb-1">${art.artistName}</p>
                            <p class="text-black-500 mb-1">${art.artCategory}</p>
                            <div class="flex items-center mb-2">
                                <p class="text-lg font-semibold">Rs.${art.price}</p>

                            </div>
                            <div class="flex justify-between items-center mb-2 ">
                                <button class="bg-blue-500 hover:bg-blue-600 text-white px-2 py-2 rounded">
                                    <a href="cart?action=addtocart&id=${art.artID}"  >  
                                        Add to Cart </a>
                                </button>
                                <button class="bg-gray-200 hover:bg-gray-300 text-gray-800 px-2 py-2 rounded ">
                                    <a href="ViewArtDetails?id=${art.artID}"  >View Details </a>
                                </button>
                            </div>

                        </div>
                    </div>
                </c:forEach>
                <!-- Repeat the product card for other products -->
            </div>

        </div>

        <!--here starts features Section-->
        <div class="text-center mb-8">
            <h1 class="text-4xl font-bold mb-2">Our Features</h1>
            <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
        </div>
        <section id="feature" class="section-p1"> 
            <div class="feature-box">
                <img src="img/features/f1.png" alt="">
                <h6>Free Shipping</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f2.png" alt="">
                <h6>Online Order</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f3.png" alt="">
                <h6>Save Money</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f4.png" alt="">
                <h6>Promotions</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f5.png" alt="">
                <h6>Happy Sell and Buy</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f6.png" alt="">
                <h6>support</h6>
            </div>

        </section>



        <%@include file="all_components/footer.jsp"%>  
    </body>


    <script>
        // Get the alert and close button elements
        const alertElement = document.getElementById('alert');
        const closeBtn = document.getElementById('closeBtn');

        // Set a timeout to show the slider after 5 seconds (5000 milliseconds)
        setTimeout(() => {
            alertElement.classList.add('hidden');
            sliderElement.classList.remove('hidden');
        }, 4000);


        // Add an event listener to the close button
        closeBtn.addEventListener('click', () => {
            alertElement.classList.add('hidden');
        });


    </script>

</html>
