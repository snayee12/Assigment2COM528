<%-- 
    Document   : content
    Created on : 7 Jan 2022, 11:19:47 AM
    Author     : sheena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%

%>
<jsp:include page="header.jsp" />

<main role="main" class="container">
    <H1>Properties</H1>
    <div style="color:red;">${errorMessage}</div>
    <div style="color:green;">${message}</div>

    <h4>After Changing any of these properties please restart the web application in order for them all to take effect</h4>
    <form action="./properties" method="POST">
        <p>URL Property <input type="text" name="url" value="${url}" required></p>
        <p>Username Property <input type="" name="username" value="${Username}" required></p>
        <p>Password Property <input type="" name="password" value="${Password}" required></p>
        <p>Shop Keeper Card Property <input type="text" name="shopKeeperCard" value="${shopcard}" required></p>
        <input type="hidden" name="action" value="updateProperties">

        <button class="btn" type="submit" >Update Properties</button>
    </form> 


   


</main>
<jsp:include page="footer.jsp" />