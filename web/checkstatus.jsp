<%-- 
    Document   : checkstatus
    Created on : Jun 18, 2015, 12:58:28 PM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="index.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1
            style="color:whitesmoke">Check out your Status</h1>
        <form action="checkstatus_act.jsp" method="post">
            <table>
                <tr><td style="color:whitesmoke">Enter your id:</td><td><input type="text" name="did" value="" /></td></tr>
                <tr><td> </td><td><input type="submit" value="OK" /></td></tr>
            </table>
            
        </form>
        
    </body>
</html>
