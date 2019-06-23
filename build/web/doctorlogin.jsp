<%-- 
    Document   : doctorlogin
    Created on : Jun 10, 2015, 10:32:33 AM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="index.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor login</title>
        <style>
            h6{color:red}
        </style>
    </head>
    <body>
      <center><h1 style="color:whitesmoke">Doctor login</h1>
          <form action="doctorlogin_act.jsp" method="post"> 
            <table align="center" cellspacing="5" cellpadding="2">
                <tr>
                    <td style="color:whitesmoke">
                        UserId:
                    </td>
                    <td>
                        <input type="text" name="id"/>
                    </td>
                 
                </tr>
                <tr>
                    <td style="color:whitesmoke">
                        Password:
                    </td>
                    <td>
                        <input type="password" name="pwd" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Login" />
                    </td>
                    <td>
                        <input type="reset" value="Cancel" />
                    </td>
                </tr>
            </table>
          </form>
          <br>
          <a href="doctregis.jsp"><h4 style="color:white">New User?Register Now!</h4></a>
       
</body>
</html>
