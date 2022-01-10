 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   request.setAttribute("selectedPage","contact");
   %>
<% 
   String action = request.getParameter("action");
   String reply = "Email from " + request.getParameter("firstname") + " " + request.getParameter("lastname") + " with the subject of " + request.getParameter("subject") + " and content of: " + request.getParameter("subject") + " was sent.";
   %>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main class="container">
   <H1>Contact Form</H1>
   <form class="form-card" method="POST" id="card-form">
      <div class="form-group">
         <table class="table">
            <tbody>
               <tr>
                  <td>First name</td>
                  <td><input type="text" size="14" name="firstname" value="" required></td>
               </tr>
               <tr>
                  <td>Last Name</td>
                  <td><input type="text" size="14" name="last name" value="" required></td>
               </tr>
               <tr>
                  <td>Reason for contact</td>
                  <td><input type="text" size="35" name="subject" value="" required></td>
               </tr>
               <tr>
                  <td>Message</td>
                  <td><textarea type="text" name="message" value="" class="form-group" style="margin: 0px 0px 25px; width: 299px; height: 57px;" required> </textarea></td>
               </tr>
            </tbody>
         </table>
         <input name="action" type="hidden" value="email">
         <button class="" type="submit">Send Email</button>
      </div>
   </form>
   <% if (("email".equals(action))) {%>
   <p><%=reply%> </p>
   <% }%>
</main>
<jsp:include page="footer.jsp" />
