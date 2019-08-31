<%-- 
    Document   : Profile
    Created on : 24 Sep, 2018, 4:51:03 PM
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
         <%
             
             ResultSet rs=null;  
           try{
               
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/UserInfo", "root", "");
            Statement st=cn.createStatement();
            int id=(Integer)session.getAttribute("id");
            String query="select * from UserData where id="+id;
            rs=st.executeQuery(query);
            if(rs!=null)
            {
            
            rs.next();
            %>
            <a href="WelcomeUser.jsp">Welcome</a>
           <a href="LogoutServlet">Logout</a>
           <h1>ID is:<%= rs.getInt(1)%></h1>
           <h1>Name is:<%= rs.getString(2)%></h1>
           <h1>Phone is:<%= rs.getInt(4)%></h1>
           <%
            }
             }catch(Exception e)
             {
                 System.out.println(e);
             }
           
        %>
       
           
    </body>
</html>
