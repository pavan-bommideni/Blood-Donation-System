<%-- 
    Document   : patdel_act
    Created on : Jun 17, 2015, 1:13:50 PM
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
                String n2=request.getParameter("name");
            Statement s=con.createStatement();
            int k=s.executeUpdate("delete from PATIENT where pid='"+n1+"' and name='"+n2+"'");
        if(k!=0)
        {
            out.println("Deleted Successfully!");
        }
        %>
       <a href="Docthome.jsp">Back</a>
    </body>
</html>
