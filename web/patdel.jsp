<%-- 
    Document   : patdel
    Created on : Jun 13, 2015, 11:10:09 AM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Docthome.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Delete Patients</h1><br><br>
        <form action="patdel_act.jsp" method="post">
            <table>
                <tr><td>Enter Id:</td><td><input type="text" name="id" value="" /></td></tr>
                <tr></tr>
                <tr><td>Enter Name:</td><td><input type="text" name="name" value="" /></td></tr>
            </table><br>
                <center>   <input type="submit" value="Delete" />
        </form>
        <br><a href="Docthome.jsp">Back</a>
    </body>
</html>
