<%-- 
    Document   : doctregis
    Created on : Jun 13, 2015, 1:54:32 PM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Registration</title>
    </head>
    <body background="Images/7.jpg">
        <center><h1>Doctor Registration</h1><br>
            <form action="doctregis_act.jsp" method="post" name="f2">
    <table align="center" cellspacing="5" cellpadding="2">    
        <tr><td>Id:</td><td><input type="text" name="id" value="" required="" /></td></tr>
        <tr><td>Doctor Name:</td><td><input type="text" name="name" value="" required="" /></td></tr>
        <tr><td>Password:</td><td><input type="password" name="pwd" value="" required="" /></td></tr>
        <tr><td>Phone Number:</td><td><input type="text" name="phno" value="" required="" /></td></tr>
        <tr><td>Hospital Details:</td><td><textarea name="details" rows="4" cols="20" required="">
                </textarea></td></tr>
         <tr><td><input type="submit" value="Submit" /></td></tr>
         </table>
        </form>
    </body>
</html>
