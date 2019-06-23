<%-- 
    Document   : adminlogin
    Created on : Jun 10, 2015, 9:56:22 AM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="index.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin login page</title>
         
    </head>
    <body onload="noBack();"   onpageshow="if(event.persisted)noBack();"onunload="">
        <h1 align="center" style="color:whitesmoke">Admin login</h1>
        <form name="adminlog" action="adminlogin_act.jsp" method="post">
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
                        <input type="password" name="pwd" value="" />
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
    </body>
</html>
