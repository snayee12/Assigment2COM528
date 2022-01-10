<%@page import="org.springframework.web.bind.annotation.RestController"%>
<%@page import="org.solent.com504.oodd.cart.web.WebObjectFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   request.setAttribute("selectedPage","checkout");
%>

<%--import logging modules --%>
<%@ page import="org.apache.logging.log4j.Logger" %>
<%@ page import="org.apache.logging.log4j.LogManager" %>
<%-- import controller modules --%>
<%-- get properties--%>

<jsp:include page="header.jsp" />
<script src="./resources/js/numpad.js" defer></script>
<main class="container">
   <form class="form-card" method="POST" id="card-form">
      <div class="form-group">
        
         <br>
         <div id="sender">
            <h1> Sender </h1>
            <table class="table">
               <tbody>
                  <tr>
                     <td>Full Name</td>
                     <td><input type="text" size="45" name="sender_name" value="" required></td>
                  </tr>
                  <tr>
                     <td>Credit Card Number</td>
                     <td><input type="text" size="45" name="sender_ccnumber" value="" required></td>
                     <td><button name="selectButtons" type="button" class="" value="sender_ccnumber">Select</button></td>
                  </tr>
                  <tr>
                     <td>Issue Number</td>
                     <td><input type="text" size="45" name="sender_issueNum" value="" required></td>
                     <td><button name="selectButtons" type="button" class="" value="sender_issueNum">Select</button></td>
                  </tr>
                  <tr>
                     <td>Expiry Date</td>
                     <td><input type="text" size="45" name="sender_endDate" value="" required></td>
                     <td><button name="selectButtons" type="button" class="" value="sender_endDate">Select</button></td>
                  </tr>
                  <tr>
                     <td>CVV Code</td>
                     <td><input type="text" size="45" name="sender_cvv" value="" class="form-group col-md-2" required></td>
                     <td><button name="selectButtons" type="button" class="" value="sender_cvv">Select</button></td>
                  </tr>
                  <tr>
                     <td>Amount</td>
                     <td><input type="number" size="45" name="amount" value="" class="form-group col-md-2" required></td>
                     <td><button name="selectButtons" type="button" class="" value="amount">Select</button></td>
                  </tr>
               </tbody>
            </table>
         </div>
         <br><br
   </form>
<jsp:include page="footer.jsp" />
