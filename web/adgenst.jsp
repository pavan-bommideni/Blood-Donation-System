<%-- 
    Document   : adgenst
    Created on : Jun 10, 2015, 10:18:08 PM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<%@include file="Adminhome.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="statefrm" action="adgenst_act.jsp" method="post">
    <center>Donor Id:<input type="text" name="id" value="" /><br><br>
     <center>Status:<select name="status">
            <option>Accepted</option>
            <option>Rejected</option>
        </select><br><br>
         <center><input type="submit" value="Submit" />
    </body>
    </form>
</html>
