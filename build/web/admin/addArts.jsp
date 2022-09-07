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
        <title>Add an Art</title>
        <%@include file="allCss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        
        <div class="container ">
            <div class="row ">
                <div class="col-md-4 offset-md-4">

                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">Add an Art</h4>
                            
                            <c:if test= "${not empty success}">
                                <p class="text-center text-success">${success}</p> 
                                <c:remove var="success" scope="session" />
                            </c:if>
                                
                            <c:if test= "${not empty failed}">
                                <p class="text-center text-danger">${failed}</p> 
                                <c:remove var="failed" scope="session" />
                            </c:if>
                            <form action="../add_arts" method="post" enctype="multipart/form-data">
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Art Name*</label>
                                    <input type="text" class="form-control"  required="required" name="art_name">
                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Artist Name*</label>
                                    <input type="text" class="form-control"  name="artist_name" required="required">

                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Price*</label>
                                    <input type="number" class="form-control"  name="price" required="required">

                                </div>


                                <div class="mb-3">
                                    <label for="inputState" >Art Categories</label>
                                    <select id="inputState" name="categories" class="form-control"    >
                                        <option selected>--select--</option>
                                        <option></option>
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
                                        <option></option>
                                        <option value="Active">Active</option>
                                        <option value="Inactive">Inactive</option>

                                    </select>
                                </div>
                                
                                <div class="mb-3">
                                    <label for="exampleFormControlFile1" >Upload Photo</label>
                                    <input type="file" class="form-control-file"  name="art_image" required="required">

                                </div>
                                
                                <button type="submit" class="btn btn-primary">Add</button>
                            </form>
                        </div>

                    </div>

                </div>
            </div>
            
            
    </body>
</html>
