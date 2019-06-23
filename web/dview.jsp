<%-- 
    Document   : dview
    Created on : Jun 12, 2015, 11:39:10 AM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="dupdate.jsp" method="post">
    <center><h1>My Profile Details</h1>
            <%
                String id=(String)session.getAttribute("id");
                Statement st2=con.createStatement();
ResultSet rs1=st2.executeQuery("select *from DONORREG where ID='"+id+"'");
while(rs1.next())
{
                %>
               
        <table border="1" cellspacing="5" cellpadding="5">
           
            <tr>
                <td>Id</td>
                <td><input type="text" name="id" value="<%=id%>" readonly="readonly" /></td>
            </tr>
            <tr>
                <td>Password</td>
            <td><input type="text" name="pwd" value="<%=rs1.getString(2)%>"></td>
             </tr>
             <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="<%=rs1.getString(3)%>"></td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td><input type="text" name="phno" value="<%=rs1.getString(4)%>"></td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td><input type="text" name="bldgrp" value="<%=rs1.getString(5)%>"></td>
            </tr>
            <tr>
                <td>Age</td>
                <td><input type="text" name="age" value="<%=rs1.getString(8)%>"></td>
            </tr>
             <tr>
                <td>Gender</td>
                <td><input type="text" name="gender" value="<%=rs1.getString(9)%>"></td>
            </tr>
            <tr>
                <td>Avaliable Days</td>
                <td><input type="text" name="availdays" value="<%=rs1.getString(6)%>"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="add" value="<%=rs1.getString(7)%>"></td>
            </tr>
            <%
}
%>
            
        </table><br>
        <input type="submit" value="Update Details" />
    </center> 
            </form>
<br><center><a href="Donhome.jsp">Back</a></center>
    </body>
</html>
