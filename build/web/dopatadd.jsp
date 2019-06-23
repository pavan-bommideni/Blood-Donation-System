<%-- 
    Document   : dopatadd
    Created on : Jun 21, 2015, 10:14:18 PM
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
        <center><h1>Add Patients</h1><br><br>
            <form action="dopatadd_act.jsp" method="post">
    <table>    
        <tr><center><td>Id:</td><td><input type="text" name="id" value="" /></td></tr>
        <tr><center><td>Patient Name:</td><td><input type="text" name="name" value="" /></td></tr>
        <tr><td>
           Blood group:
                </td><td><select name="bloodgrp">
               <option>A +ve</option>
               <option>A -ve</option>
               <option>B +ve</option>
               <option>B -ve</option>
               <option>AB +ve</option>
               <option>AB -ve</option>
               <option>O +ve</option>
               <option>O -ve</option>
           </select>
                </td> </tr>
        <tr>
            <td>Gender:</td><td><input type="radio" name="gen" value="Male" />Male&nbsp;
                <input type="radio" name="gen" value="Female" />Female</td>
        </tr>
        <tr><td>Age:</td><td><input type="text" name="age" value="" /></td></tr>
        <tr><center><td>Medical Details:</td><td><textarea name="details" rows="4" cols="20">
                </textarea></td></tr>
                 <tr><td><center><input type="submit" value="Submit" /></td></tr>
         </table>
        </form>
    </body>
</html>
