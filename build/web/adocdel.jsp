<%-- 
    Document   : adocdel
    Created on : Jun 17, 2015, 12:54:07 PM
    Author     : Pavan Kumar
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Adminhome.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Delete Doctors</h1><br><br>
        <form action="adocdel_act.jsp">
    <center> Enter id:<input type="text" name="id" value="" /><br><br>
        <center><input type="submit" value="Delete" />
            </form>
    </body>
</html>
