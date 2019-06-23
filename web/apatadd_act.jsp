<%-- 
    Document   : apatadd_act
    Created on : Jun 16, 2015, 2:20:09 PM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String regid=request.getParameter("id");
         String name=request.getParameter("name");
        String bloodgrp=request.getParameter("bloodgrp");
        String gender=request.getParameter("gen");
          String age=request.getParameter("age");
        String details=request.getParameter("details");
      
        PreparedStatement ps=con.prepareStatement("insert into PATIENT values(?,?,?,?,?,?)");
        ps.setString(1,regid);
        ps.setString(2,name);
        ps.setString(4,bloodgrp);
        ps.setString(5,details);
        ps.setString(6,gender);
        ps.setString(3,age);
         int k=ps.executeUpdate();
         if(k!=0)
        {
          out.println("Added Sucessfully");  
        }
         else
         {
             out.println("Please enter all the fields ");
         }
         %>
         <a href="Adminhome.jsp">Back</a>
    </body>
</html>
