<%-- 
    Document   : adgenst_act
    Created on : Jun 17, 2015, 11:20:10 AM
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
         String status=request.getParameter("status");
    
        PreparedStatement ps=con.prepareStatement("insert into STATUS values(?,?)");
        ps.setString(1,regid);
        ps.setString(2,status);
       
         int k=ps.executeUpdate();
         if(k!=0)
        {
          out.println("Generated status Sucessfully");  
        }
         
       
         %>
         <a href="Adminhome.jsp">Back</a>
    </body>
</html>
