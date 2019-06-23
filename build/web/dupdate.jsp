<%-- 
    Document   : dupdate
    Created on : Jun 12, 2015, 11:41:21 AM
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
        String n1=request.getParameter("id");
        String n2=request.getParameter("pwd");
        String n3=request.getParameter("name");
        String n4=request.getParameter("phno");
        String n5=request.getParameter("bldgrp");
        String n6=request.getParameter("age");
        String n7=request.getParameter("gender");
        String n8=request.getParameter("availdays");
        String n9=request.getParameter("add");
        
                
        PreparedStatement ps = con.prepareStatement("update DONORREG set PASSWORD=?,NAME=?,PHONE_NO=?,BLOOD_GROUP=?,AVALIABLE_DAYS=?,ADDRESS=?,AGE=?,GENDER=? where ID='"+n1+"'" );
   
        
           ps.setString(1,n2);
            ps.setString(2,n3);
            ps.setString(3,n4);
            ps.setString(4,n5);
            ps.setString(5,n8);
            ps.setString(6,n9);
             ps.setString(7,n6);
              ps.setString(8,n7);
              
            int k=ps.executeUpdate();
       if(k!=0)
       {
           
           out.println("<h3>Updated Successfully</h3>");
       }
       else
       {
           out.println("Update not Successful");
       }
       
                
       
        %>
        <a href="dview.jsp">View</a>
    </body>
</html>
