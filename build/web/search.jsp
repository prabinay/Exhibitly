<%-- 
    Document   : landscape.jsp
    Created on : Sep 11, 2022, 3:13:33 AM
    Author     : Prab1n
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<%@ page import="com.model.ArtDetails" %>
<%@ page import="com.DB.DBconnect" %>
<%@ page import="com.dao.ArtDaoImpl" %>

<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Landscape Arts - Exhibitly</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">
        <%@include file="all_components/allCss.jsp"%>     
    </head>
    <body class="bg-gray-100">
        <%@include file="all_components/navbar.jsp"%>      

        <div class="container mx-auto px-4 py-6">
            <div class="text-center mb-8">
                <h1 class="text-4xl font-bold mb-2">Search Results</h1>
                <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
            </div>

            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-7">
                <!-- Product Card -->
                <%
                String ch = request.getParameter("ch");
                ArtDaoImpl dao = new ArtDaoImpl(DBconnect.getConn());
                List<ArtDetails> list = dao.getArtBySearch(ch);
                for(ArtDetails a : list){
                    
                %>

                <%--<c:forEach var="art" items="${artlist}">--%>
                <div class="bg-white rounded-lg shadow-md overflow-hidden transform hover:scale-105 transition duration-300 ">
                    <div class="flex w-full min-h-40 rounded-md overflow-hidden lg:h-60 lg:aspect-none justify-center">
                        <img src="img/arts/<c:out value="<%=a.getPhotoName()%>"/>"   class="w-auto h-full object-center object-cover lg:w-auto lg:h-full rounded">
                    </div>

                    <div class="p-2">
                        <h3 class="text-xl font-semibold mb-2"><%=a.getArtName()%></h3>
                        <p class="text-gray-500 mb-1"><%=a.getArtistName()%></p>
                        <p class="text-black-500 mb-1"><%=a.getArtCategory()%></p>
                        <div class="flex items-center mb-2">
                            <p class="text-lg font-semibold">Rs.<%=a.getPrice()%></p>

                        </div>
                        <div class="flex justify-between items-center mb-2 ">
                            <button class="bg-blue-500 hover:bg-blue-600 text-white px-2 py-2 rounded">
                                <a href="cart?action=addtocart&id=<%=a.getArtID()%>"  >  
                                    Add to Cart </a>
                            </button>
                            <button class="bg-gray-200 hover:bg-gray-300 text-gray-800 px-2 py-2 rounded ">
                                <a href="ViewArtDetails?id=<%=a.getArtID()%>"  >View Details </a>
                            </button>
                        </div>
                      

                    </div>
                </div>
                <% } %>
                <%--</c:forEach>--%>
                <!-- Repeat the product card for other products -->
            </div>

        </div>

        <%@include file="all_components/footer.jsp"%>  
    </body>
</html>
