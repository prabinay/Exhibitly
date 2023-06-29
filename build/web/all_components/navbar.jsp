<%-- 
    Document   : navbar
    Created on : Sep 4, 2022, 1:08:16 AM
    Author     : Prab1n
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@page  isELIgnored="false"%>--%>

<!--<div class="container-fluid" style="height: 10px;background-color: #303f9f">

</div>
<div class="container-fluid p-3">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3> <i class="fa-brands fa-artstation"></i> Exhibitly</h3>      
        </div>
        <div class="col-md-6">

            <form class="d-flex" style="width:400px;"role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
            </form>

        </div>



<c:if test="${not empty userobj}">
    <div class="col-md-3">

        CART



        <a href="" class="btn btn-success"  .> <i class="fas fa-user"></i> ${userobj.name} </a> 
        <a href="logout" class="btn btn-primary text-white"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>
</c:if>  

<c:if test="${ empty userobj}">
    <div class="col-md-3">

        <a href="login.jsp" class="btn btn-success"> Login </a> 
        <a href="register.jsp" class="btn btn-primary text-white"> Register</a>
    </div>
</c:if> 

</div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
<div class="container-fluid">
<a class="navbar-brand" href="#"><i class="fas fa-home"></i></a>
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="landscape">Landscape</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="portrait">Portrait</a>
        </li>

        <li class="nav-item">
            <a class="nav-link active " href="abstract">Abstract</a>
        </li>

        <li>
            <a href="cart" class="text-white position-relative ">

                <i class="fas fa-cart-plus fa-2x p-1"></i> 
                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
${cartItemList.size()}
<span class="visually-hidden">unread messages</span>
</span>
</a>
</li>
</ul>
<form class="d-flex" role="search">
<button class="btn btn-light my-2 my-sm-0" type="submit"><i class="fas fa-cog"></i>Setting</button>
<button class="btn btn-light my-2 my-sm-0 ml-1" type="submit"><i class="fas fa-phone-square-alt"></i>Contact Us</button>
</form>
</div>
</div>
</nav>

-->

<!--<div class="flex flex-wrap place-items-center  ">
    <section class="relative mx-auto">
         navbar 
        <nav class="flex justify-between bg-blue-600 text-white w-screen">
            <div class="px-5 xl:px-12 py-6 flex w-full items-center">
                <a class="text-3xl font-bold font-heading" href="index">
                     <img class="h-9" src="logo.png" alt="logo"> 
                    Exhibitly
                </a>
                 Nav Links 
                <ul class="  md:flex items-center px-4 mx-auto font-semibold font-heading space-x-12">
                    <li><a class="hover:text-gray-200" href="index">Home</a></li>
                    <li><a class="hover:text-gray-200" href="landscape">Landscape</a></li>
                    <li><a class="hover:text-gray-200" href="portrait">Portrait</a></li>
                    <li><a class="hover:text-gray-200" href="abstract">Abstract</a></li>
                    <a class="flex items-center hover:text-gray-200" href="cart">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
                        </svg>
                        <span class="flex absolute -mt-5 ml-4">
                            <span class="animate-ping absolute inline-flex h-3 w-3 rounded-full bg-pink-400 opacity-75">${cartItemList.size()}</span>
                            <span class="relative inline-flex rounded-full h-3 w-3 bg-pink-500"> 
                            </span>
                        </span>
                    </a>

                </ul>
                            
<c:if test="${ not empty userobj}">

    <div class="hidden xl:flex items-center space-x-5 items-center">
        <button class="bg-white text-blue-800 hover:bg-blue-100 text-sm py-2 px-4 rounded">
            <a href=""  > ${userobj.name}</a> 
        </button>
        <button class="bg-green-500 hover:bg-blue-400 text-white text-sm py-2 px-4 rounded">
            <a href="logout"  > Log Out</a>
        </button>
    </div
</c:if> 
<c:if test="${ empty userobj}">

    <div class=" xl:flex items-center space-x-5 items-center">
        <button class="bg-white text-blue-800 hover:bg-blue-100 text-sm py-2 px-4 rounded">
            <a href="loginAndSignin.jsp"  > Login/Signup </a> 
        </button>
        <button class="bg-green-500 hover:bg-blue-400 text-white text-sm py-2 px-4 rounded">
            <a href="loginAndSignin.jsp"  > Sign Up</a>
        </button>
    </div
</c:if> 
</div>
Responsive navbar 
<a class="xl:hidden flex mr-6 items-center" href="#">
<svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 hover:text-gray-200" fill="none" viewBox="0 0 24 24" stroke="currentColor">
    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
</svg>
<span class="flex absolute -mt-5 ml-4">
    <span class="animate-ping absolute inline-flex h-3 w-3 rounded-full bg-pink-400 opacity-75"></span>
    <span class="relative inline-flex rounded-full h-3 w-3 bg-pink-500">
    </span>
</span>
</a>
<a class="navbar-burger self-center mr-12 xl:hidden" href="#">
<svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 hover:text-gray-200" fill="none" viewBox="0 0 24 24" stroke="currentColor">
    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
</svg>
</a>
</nav>

</section>
</div>-->
<!doctype html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://cdn.tailwindcss.com"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </head>

    <body class="bg-gray-100">
        <nav class="w-full  p-2 bg-blue-500 shadow md:flex md:items-center md:justify-between">
            <!--            <div class="flex justify-between items-center ">
                            <span class="text-2xl text-white font-[Poppins] cursor-pointer">
                                <img class="h-10 inline"
                                     src="">
                                <a class="text-3xl font-bold font-heading" href="index">
                                     <img class="h-9" src="img/llll.png" alt="logo"> 
                                    Exhibitly
                                </a>
                            </span>
            
                            <span class="text-3xl cursor-pointer mx-2 md:hidden block">
                                <ion-icon name="menu" onclick="Menu(this)"></ion-icon>
                            </span>
                        </div>-->
            <div class="flex justify-between items-center">
                <a class="flex items-center text-2xl text-white font-[Poppins] cursor-pointer ml-4" href="index">
                    <img class="h-14 mr-2" src="img/log.png" alt="logo">
                    <!--<span class="text-3xl font-bold font-heading">-->
                    <!--<img class="h-9" src="" alt="logo">--> 
                    <!--Exhibitly-->
                    <!--</span>-->
                </a>

                <span class="text-3xl cursor-pointer mx-2 md:hidden block">
                    <ion-icon name="menu" onclick="Menu(this)"></ion-icon>
                </span>
            </div>


            <form action="search.jsp"  method="post" style="position: relative">
                <img
                    src="img/search.png"
                    alt="search-icon"
                    style="position: absolute; left: 17px; top: 15px; width: 15px; height: 15px;"
                    />
                <input
                    class="input "
                    name="ch"
                    type="text"
                    placeholder="Search"
                    style="padding: 10px 14px; padding-left: 42px; width: 100%;
                    border: 1px solid #d0d5dd;
                    border-radius: 8px;
                    line-height: 24px;
                    font-size: 16px;
                    font-weight: 400;"
                    />
            </form>


            <ul class=" mt-3 z-10 md:flex md:items-center z-[-1] md:z-auto md:static absolute bg-blue-500 w-full left-0 md:w-auto md:py-0 py-4 md:pl-0 pl-7 md:opacity-100  top-[-400px] transition-all ease-in duration-500">
                <li class="mx-4 y-6 md:my-0">
                    <a href="index" class="text-white text-xl hover:text-blue-500 duration-500">HOME</a>
                </li>
                <li class="mx-4 my-6 md:my-0">
                    <a href="landscape" class="text-white text-xl hover:text-cyan-500 duration-500">LANDSCAPE</a>
                </li>
                <li class="mx-4 my-6 md:my-0">
                    <a href="portrait" class="text-white text-xl hover:text-cyan-500 duration-500">PORTRAIT</a>
                </li>
                <li class="mx-4 my-6 md:my-0">
                    <a href="abstract" class="text-white text-xl hover:text-cyan-500 duration-500">ABSTRACT</a>
                </li>
                <li class="mx-2 my-6 md:my-0">
                    <c:if test="${ not empty userobj}">
                    <li class="mx-2 my-6 md:my-0">
                        <a href="cart">
                            <div style="width: 32px; height: 32px; position: relative">
                                <span style="height: 76%; width: 76%; position: absolute; background-color: white; border-radius: 50%; left: 20px; bottom: 15px; text-align: center;">${cartItemList.size()}</span>
                                <img src="img/ccc.png" alt="cart-icon" style="height: 28px; width: 28px;" />
                            </div>                                       
                        </a>
                    </li>   
                </c:if> 

                <c:if test="${  empty userobj}">
                    <li class="mx-2 my-6 md:my-0">
                        <a href="cart">
                            <div style="width: 32px; height: 32px; position: relative">
                                <span style="height: 76%; width: 76%; position: absolute; background-color: white; border-radius: 50%; left: 20px; bottom: 15px; text-align: center;">0</span>
                                <img src="img/ccc.png" alt="cart-icon" style="height: 28px; width: 28px;" />
                            </div>                                       
                        </a>
                    </li>   
                </c:if> 


                <c:if test="${ not empty userobj}">
                    <button class="bg-green-700 text-white font-[Poppins] duration-500 px-2 py-2 mx-2 hover:bg-cyan-500 rounded">
                        <a style="text-decoration: none" href="updateUserProfile.jsp"  > ${userobj.name}</a>
                    </button>
                    <button class="bg-red-700 text-white font-[Poppins] duration-500 px-1 py-2 mx-2 hover:bg-cyan-500 rounded">
                        <a style="text-decoration: none"  href="logout"  > Log Out</a>
                    </button>
                </c:if> 

                <c:if test="${ empty userobj}">
                    <button class="bg-green-700 text-white font-[Poppins] duration-500 px-6 py-2 mx-4 hover:bg-cyan-500 rounded">
                        <a style="text-decoration: none"  href="loginAndSignin.jsp"  > SIGNUP</a> 
                    </button>

                </c:if> 

            </ul>
        </nav>




        <script>
            function Menu(e) {
                let list = document.querySelector('ul');
                e.name === 'menu' ? (e.name = "close", list.classList.add('top-[80px]'), list.classList.add('opacity-100')) : (e.name = "menu", list.classList.remove('top-[80px]'), list.classList.remove('opacity-100'))
            }
        </script>
    </body>

</html>