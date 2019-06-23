<%-- 
    Document   : Dorgan
    Created on : Jun 12, 2015, 11:51:43 AM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             String id=(String)session.getAttribute("id");
                Statement st2=con.createStatement();
ResultSet rs1=st2.executeQuery("select *from ORGANDONOR where DID='"+id+"'");
if(rs1.next())
{
    out.println("<h1>You are already a Organ Donor,Thank You!</h1>");       
 }
else
{
%>
    <center><h1>Do you really want to donate your organs?</h1>
        <center><h2>If so,fill your details and Click YES!</h2>
            <form action="dorgan_act.jsp" method="post">
                <table border="5" cellpadding="10" cellspacing="5">
                    <tr><td>Your id:</td><td><input type="text" name="did" value=""></td></tr>
                    <tr><td>Your name:</td><td><input type="text" name="name" value=""></td></tr>
                    <tr><td><input type="submit" value="YES" /></td>
                        <td><input type="reset" value="NO" /></td></tr>
                </table>
                     </form>
                <center><img src="Images/registerorg.jpg">
                    <%
}
    %>
                
                
           
            <center><a href="Donhome.jsp">Back</a>
    </body>
</html>
