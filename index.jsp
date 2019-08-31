<%-- 
    Document   : index
    Created on : 24 Sep, 2018, 4:33:45 PM
    Author     : student35
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
    <center>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            response.setDateHeader("Expires",-1);
        %>
        
        <h1>Login Page </h1><br>
        <form method="post">
            Enter UserName:<input type="text" name="uname"/><br>
            Enter Password:<input type="password" name="pass"/><br>
            <input type="submit" value="Login" 
                   onclick="form.action='ValidateServlet';">&nbsp;&nbsp;
            <input type="submit" value="FirstServlet" 
                   onclick="form.action='Register.jsp';"><br>
        </form>
        </center>
    </body>
</html>

