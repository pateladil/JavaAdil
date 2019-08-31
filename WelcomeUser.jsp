<%-- 
    Document   : WelcomeUser
    Created on : 24 Sep, 2018, 4:44:44 PM
    Author     : student35
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
              response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
              response.setHeader("Pragma", "no-cache");
              response.setHeader("Expires", "0");
              response.setDateHeader("Expires",-1);
                if(session.getAttribute("uname")==null)
                {
                    response.sendRedirect("index.jsp");
                } 
          %>
        
        <a href="Profile.jsp">profile</a> &nbsp;&nbsp;&nbsp;
        <a href="LogoutServlet">Logout</a>
        <br>
        <h1>Welcome:<%= session.getAttribute("uname")%></h1>
    </body>
</html>
