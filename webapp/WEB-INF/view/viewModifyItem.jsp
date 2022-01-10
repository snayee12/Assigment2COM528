<%-- 
    Document   : viewModifyItem
    Created on : 5 Jan 2022, 16:24:22
    Author     : sheena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.solent.com504.oodd.cart.model.dto.User"%>
<%@page import="org.solent.com504.oodd.cart.model.dto.UserRole"%>
<c:set var = "selectedPage" value = "users" scope="request"/>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
    <div>
        <H1>Modify Item: ${modifyItem.name} </H1>
        <!-- print error message if there is one -->
        <div style="color:red;">${errorMessage}</div>
        <div style="color:green;">${message}</div>
        <form action="./viewModifyItem" method="POST" enctype="multipart/form-data">
            <table class="table">
                <thead>
                </thead>
                <tbody>
                    <tr>
                        <td>name</td>
                        <td><input type="text" name="name" value="${modifyItem.name}" /></td>
                    </tr>
                    <tr>
                        <td>price</td>
                        <td><input type="text" name="price" value="${modifyItem.price}" /></td>
                    </tr>
                    <tr>
                        <td>quantity</td>
                        <td><input type="text" name="quantity" value="${modifyItem.quantity}" /></td>
                    </tr>
                   
                </tbody>
            </table>
    
            <c:if test="${sessionUser.userRole =='ADMINISTRATOR' && ModifyItem == null}">
                <button class="btn" type="submit" >Add Item</button>
            </c:if>
        </form>           
                            
                            
        <c:if test="${SessionUser.UserRole =='ADMINISTRATOR'}">
            <BR>
            <form action="./catalog">
                <button class="btn" type="submit" >Return To Catalog</button>
            </form> 
        </c:if> 


        </div>

    </main>
<jsp:include page="footer.jsp" />
