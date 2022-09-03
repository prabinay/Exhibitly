<%-- 
    Document   : navbar
    Created on : Sep 4, 2022, 1:08:16 AM
    Author     : Prab1n
--%>

<div class="container-fluid" style="height: 10px;background-color: #303f9f">
    
</div>
<div class="container-fluid p-3">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3> Exhibitly</h3>      
        </div>
        <div class="col-md-6">
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>

        <div class="col-md-3">
            <a href="login.jsp" class="btn btn-success"> Login </a> 
            <a href="register.jsp" class="btn btn-primary text-white"> Register</a>
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
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Landscape</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Portrait</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active ">Abstract</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <button class="btn btn-light my-2 my-sm-0" type="submit"><i class="fas fa-cog"></i>Setting</button>
                <button class="btn btn-light my-2 my-sm-0 ml-1" type="submit"><i class="fas fa-phone-square-alt"></i>Contact Us</button>
            </form>
        </div>
    </div>
</nav>