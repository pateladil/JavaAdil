<%-- 
    Document   : Register1
    Created on : 24 Sep, 2018, 4:44:13 PM
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
    <center>
        <h1>Registration Form</h1><br>
        <form action="RegisterPage.jsp" method="get">
            <%
                    
                 
                if(request.getParameter("name")==null)
                {%>
                     Enter name:<input type="text" name="name" /><br>
            Enter password:<input type="password" name="pass" /><br>
            Enter Con password:<input type="password" name="cpass"/><br>
            Enter Phone:<input type="number" name="phone" maxlength="10" /><br>
            Enter City:<input type="text" name="city" /><br>
           
           <%     }
                   else
                {       
            %>
            
            Enter name:<input type="text" name="name" value="<%=request.getParameter("name")%>"/><br>
            Enter password:<input type="password" name="pass" /><br>
            Enter Con password:<input type="password" name="cpass"/><br>
            Enter Phone:<input type="number" name="phone" maxlength="10" value="<%=request.getParameter("phone")%>"/><br>
            Enter City:<input type="text" name="city" value="<%=request.getParameter("city")%>"/><br>
            <%
                }
            %>
            <input type="submit" value="Insert"/>
            
        </form>
    </center>
    </body>
</html>
