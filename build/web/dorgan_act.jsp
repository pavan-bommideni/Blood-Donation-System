<%-- 
    Document   : dorgan_act
    Created on : Jun 18, 2015, 10:32:17 AM
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
            String regid=request.getParameter("did");
         String name=request.getParameter("name");
        PreparedStatement ps=con.prepareStatement("insert into ORGANDONOR values(?,?)");
        ps.setString(1,regid);
        ps.setString(2,name);
       
        int k=ps.executeUpdate();
         if(k!=0)
        {
          out.println("<h2>Registered Sucessfully as Organ Donor,Thank you!");
        }
          else
         {
             out.println("Please enter all the fields ");
         }
         %>
    <center><a href="Donhome.jsp">Go Back</a>
    </body>
</html>
