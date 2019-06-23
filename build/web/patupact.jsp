<%-- 
    Document   : patupact
    Created on : Jun 23, 2015, 11:24:39 AM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String n1=request.getParameter("pid");
            String n2=request.getParameter("name");
            String n3=request.getParameter("age");
            String n4=request.getParameter("bldgrp");
            String n5=request.getParameter("gender");
            String n6=request.getParameter("details");
            
            PreparedStatement ps=con.prepareStatement("update PATIENT set NAME=?,AGE=?,BLOOD_GROUP=?,GENDER=?,MEDICAL_DETAILS=? where PID='"+n1+"'");
           
             ps.setString(1,n2);
                       
             ps.setString(2,n3);
             ps.setString(3,n4);
             ps.setString(4,n5);
             ps.setString(5,n6);
             
             int k=ps.executeUpdate();
             if(k!=0)
             {
                 response.sendRedirect("dopatview.jsp");
             }
             else
             {
                 out.println("please enter all the fields");
             }
             
            %>
    </body>
</html>
