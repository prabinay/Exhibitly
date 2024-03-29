<%-- 
    Document   : updateArt
    Created on : Nov 3, 2022, 9:12:54 PM
    Author     : Prab1n
--%>

<%-- 
    Document   : addBooks
    Created on : Sep 6, 2022, 11:51:47 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update an Art</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">
        <%@include file="allCss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>

        <div class="container ">
            <div class="row p-3 ">
                <div class="col-md-4 offset-md-4">

                    <div class="card">
                        <div class="card-body">
                            <!--<h4 class="text-center">Update an Art</h4>-->
                            <div class="text-center mb-8 mt-5">
                                <h3 class="text-4xl font-bold mb-2">Update an Art</h3>
                                <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
                            </div>
                            <hr>


                            <c:if test= "${not empty success}">
                                <p class="text-center text-success">${success}</p> 
                                <c:remove var="success" scope="session" />
                            </c:if>

                            <c:if test= "${not empty failed}">
                                <p class="text-center text-danger">${failed}</p> 
                                <c:remove var="failed" scope="session" />
                            </c:if>


                            <c:if test="${art!= null}">
                                <form class="justify-content-md-cente" action="../update_arts" method="post" enctype="multipart/form-data">

                                </c:if>
                                <c:if test="${art == null}">

                                    <form action="../add_arts" method="post" enctype="multipart/form-data">
                                    </c:if>
                                    <input type="hidden" name="id" value="${art.artID}"">
                                    <div class="mb-3">
                                        <label for="exampleInputPassword1" class="form-label">Art Name*</label>
                                        <input type="text" class="form-control"  required="required" name="art_name" value='${art.artName}'>
                                    </div>

                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Artist Name*</label>
                                        <input type="text" class="form-control"  name="artist_name" required="required" value='${art.artistName}'>

                                    </div>

                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Price*</label>
                                        <input type="number" class="form-control"  name="price" required="required"value='${art.price}'>

                                    </div>


                                    <div class="mb-3">
                                        <label for="inputState" >Art Categories</label>
                                        <select id="inputState" name="categories" class="form-control"    >
                                            <option selected>--select--</option>

                                            <option value="Landscape">Landscape</option>
                                            <option value="Portrait">Portrait</option>
                                            <option value="Abstract">Abstract</option>
                                            <option value="Modern">Modern</option>
                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label for="inputState" >Art Status</label>
                                        <select id="inputState" name="status"   class="form-control"  >
                                            <option selected>--select--</option>

                                            <option value="Active">Active</option>
                                            <option value="Inactive">Inactive</option>

                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label for="exampleFormControlFile1" >Upload Photo</label>
                                        <input type="file" class="form-control-file"  name="art_image" required="required">

                                    </div>

                                    <!--<button type="submit" class="btn btn-primary">Update</button>-->
                                    <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded">
                                        Update
                                    </button>

                                    <!--<button type="submit" class="btn btn-primary "><a class="nav-link active" aria-current="page" href="home.jsp">Home</a></button>-->

                                </form>
                        </div>

                    </div>

                </div>
            </div>
        </div>
        <%@include file="footer.jsp"%>
    </body>
</html>
