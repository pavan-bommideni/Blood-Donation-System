<%-- 
    Document   : donorlogin
    Created on : Jun 10, 2015, 10:24:34 AM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="index.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donor login</title>
        
                            </script>
    </head>
    <body onload="noBack();"   onpageshow="if(event.persisted)noBack();"onunload="">
    <center><h1 style="color:whitesmoke">Donor login</h1></center>
        <form name="donorlog" action="donorlogin_act.jsp" method="post">
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
                        <input type="password" name="pwd"/>
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
