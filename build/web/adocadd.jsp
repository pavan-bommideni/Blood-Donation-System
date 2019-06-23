<%-- 
    Document   : newjsp
    Created on : Jun 11, 2015, 10:28:22 AM
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
    <body background="Images/7.jpg">
        <form action="doctregis_act.jsp" method="post">
    <center><h1>Add New Doctors</h1><br><br>
    <table>    
        <tr><td>Id:</td><td><input type="text" name="id" value="" required="" /></td></tr>
        <tr><td>Doctor Name:</td><td><input type="text" name="name" value="" required="" /></td></tr>
        <tr><td>Intial Password:</td><td><input type="password" name="pwd" value="12345" /></td></tr>
        <tr><td>Hospital Details:</td><td><textarea name="details" rows="4" cols="20" required="">
                </textarea></td></tr>
        <tr><td>Phone Number:</td><td><input type="text" name="phno" value=""  required=""/></td></tr>
         <tr><td><input type="submit" value="Submit" /></td></tr>
         </table>
        </form>
    </body>
</html>
