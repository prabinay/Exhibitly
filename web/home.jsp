<%-- 
    Document   : home
    Created on : Sep 4, 2022, 5:50:00 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home: User</title>
        <%@include file="admin/allCss.jsp"%>
    </head>
    <body>
      <%@include file="admin/navbar.jsp"%>      
    <c:if test="${not empty userobj}">
        <h1>name:${userobj.name}</h1>
        <h1>Email:${userobj.email}</h1>
  
    </c:if>
    
    
    
        
        
         <%@include file="admin/footer.jsp"%> 
</body>
</html>
