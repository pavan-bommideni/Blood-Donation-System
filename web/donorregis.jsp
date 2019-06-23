<%-- 
    Document   : donorregis
    Created on : Jun 9, 2015, 11:17:23 AM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donor Registration</title>
    </head>
    <body background="Images/blood.jpg">
        <h1 align="center">Donor Registration</h1>
        <form action="donorregis_act.jsp" method="post" name="f1">
            <table align="left" cellspacing="5" cellpadding="2">
                <tr>
                <td>Id:</td>
                <td><input type="text" name="id" value="" required=""/>
                    </td>
            </tr>
            <tr><td>
                    Password:</td>
                <td><input type="password" name="pwd" value=""  required=""/>
                </td></tr>
            <tr><td>
                    Name:</td>
            <td><input type="text" name="name" value="" required="" />
                </td></tr>
            <tr><td>
                    Phone number:</td>
            <td><input type="text" name="phno" value="" required="" />
                </td></tr>
             <tr>
            <td>Gender:</td><td><input type="radio" name="gen" value="Male" />Male&nbsp;
                <input type="radio" name="gen" value="Female" />Female</td>
        </tr>
            <tr><td>
           Blood group:
                </td><td><select name="bloodgrp" required="">
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
           <tr><td>
                   Age:</td>
           <td><input type="text" name="age" value="" required=""/>
               </td></tr>
           <tr><td>
                   Available Days:</td>
           <td><input type="checkbox" name="availday" value="Sun" />Sun
      <input type="checkbox" name="availday" value="Mon" />Mon
      <input type="checkbox" name="availday" value="Tues" />Tues
      <input type="checkbox" name="availday" value="Wed" />Wed
      <input type="checkbox" name="availday" value="Thurs" />Thurs
      <input type="checkbox" name="availday" value="Fri" />Fri
      <input type="checkbox" name="availday" value="Sat" />Sat
               </td></tr>
        <tr><td>
                Address:</td>
      <td><textarea name="addrss" rows="4" cols="20" required="">
          </textarea></td></tr>
        <tr><td>
                <input type="submit" value="Submit">&nbsp;</td>
            <td><input type="reset" value="Reset" /></td>
            </tr>
            </table>
      
  
       </form>
    </body>
</html>
