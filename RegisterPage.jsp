<%-- 
    Document   : RegisterPage
    Created on : 24 Sep, 2018, 4:25:33 PM
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
           try{
           
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/UserInfo", "root", "");
            Statement st=cn.createStatement();
            String name=request.getParameter("name");
            String pass=request.getParameter("pass");
            String cpass=request.getParameter("cpass");
            String phone=request.getParameter("phone");
            String city=request.getParameter("city");
            if(pass.equals(cpass))
            {
                String query="insert into UserData(name,password,phone,city)"
                        + " values('"+name+"',"
                        + "'"+pass+"','"+phone+"','"+city+"')";
                st.executeUpdate(query);
                response.sendRedirect("index.jsp");
                
            }
            else
            {
              out.println("Password and CPassword are not same");
              RequestDispatcher rd=request.getRequestDispatcher("Register.jsp");
              rd.include(request, response);
            }
                
           }catch(ClassNotFoundException e )
           {
               System.out.println(e);
           }
           catch(SQLException e)
           {
               System.out.println(e);
           }
       %>
    </body>
</html>
