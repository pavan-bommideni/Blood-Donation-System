<%-- 
    Document   : addel_act
    Created on : Jun 17, 2015, 11:33:13 AM
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
            Statement s=con.createStatement();
            int k=s.executeUpdate("delete from DONORREG where id='"+n1+"'");
        if(k!=0)
        {
            out.println("Deleted Successfully!");
        }
        %>
            <a href="addel.jsp">Back</a>
    </body>
</html>
