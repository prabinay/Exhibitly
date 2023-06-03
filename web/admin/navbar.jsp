<%-- 
    Document   : navbar
    Created on : Sep 4, 2022, 1:08:16 AM
    Author     : Prab1n
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@page  isELIgnored="false"%>--%>
<!--
<div class="container-fluid" style="height: 10px;background-color: #303f9f">

</div>

<div class="container-fluid p-3">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3><i class="fa-brands fa-artstation"></i> Exhibitly</h3>      
        </div>
        <div class="col-md-6">
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>

        <div class="col-md-3">
<c:if test="${not empty userobj}" >
    <a href="" class="btn btn-success"> 
        <i class="fas fa-user"></i>${userobj.name} </a> 
    <a data-bs-toggle="modal" data-bs-target="#exampleModal" href="../logout" class="btn btn-primary text-white">
        <i class="fas fa-sign-in-alt"></i>Logout</a>
</c:if>

<c:if test="${empty userobj}" >
    <a href="../login.jsp" class="btn btn-success"> 
        <i class="fas fa-sign-in-alt"></i>Login </a> 
    <a href="../register.jsp" class="btn btn-primary text-white">
        <i class="fas fa-user-plus"></i>Register</a>
</c:if>

</div>

</div>

</div>


Button trigger modal 

Modal 
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="exampleModalLabel"></h5>
<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
<div class="text-center">
    <h4>Do You want to Logout?</h4>
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    <a href="../logout" type="button" class="btn btn-primary text-white"> Logout</a>
</div>

</div>
</div>
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
    <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
</li>

</ul>

</div>
</div>
</nav>

-->


<div class="flex flex-wrap place-items-center  ">
    <section class="relative mx-auto">
        <!-- navbar -->
        <nav class="flex justify-between bg-blue-800 text-white w-screen">
            <div class="px-5 xl:px-12 py-6 flex w-full items-center">
                <a class="text-3xl font-bold font-heading" href="home.jsp">
                    <!-- <img class="h-9" src="logo.png" alt="logo"> -->
                    Exhibitly
                </a>
                <!-- Nav Links -->
                <ul class="hidden md:flex px-4 mx-auto font-semibold font-heading space-x-12">
                    <li><a class="hover:text-gray-200" href="home.jsp"></a></li>
                </ul>

                <c:if test="${ not empty userobj}">

                    <div class="hidden xl:flex items-center space-x-5 items-center">
                        <button class="bg-white text-blue-800 hover:bg-blue-100 text-sm py-2 px-4 rounded">
                            <a href=""  > ${userobj.name}</a> 
                        </button>
<!--                        <button class="bg-green-500 hover:bg-blue-400 text-white text-sm py-2 px-4 rounded">
                            <a href="../logout"  > Log Out</a>
                        </button>-->
                    </div>
                </c:if> 
                <c:if test="${ empty userobj}">

                    <div class="hidden xl:flex items-center space-x-5 items-center">
                        <button class="bg-white text-blue-800 hover:bg-blue-100 text-sm py-2 px-4 rounded">
                            <a href="../login.jsp"  > Login </a> 
                        </button>
                        <button class="bg-green-500 hover:bg-blue-400 text-white text-sm py-2 px-4 rounded">
                            <a href="../register.jsp"  > Sign Up</a>
                        </button>
                    </div>
                </c:if> 
            </div>


        </nav>

    </section>
</div>
