<%-- 
    Document   : patupdate
    Created on : Jun 13, 2015, 11:08:06 AM
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
        <center>
            <form name="pat" action="patupact.jsp" method="post">
        <h1>Edit Patient Details</h1>
          <%
          String id=request.getParameter("id");
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select *from PATIENT where PID='"+id+"'");
          rs.next();
          %>
                <table align="center">
                    <tr><td>Patient Id:</td> 
                    <td><input type="text" name="pid" value="<%=id%>" readonly="readonly"/> </td></tr>
                    <tr> <td>Name:</td><td> <input type="text" name="name" value="<%=rs.getString(2)%>" /></td></tr>
                    <tr><td>Age</td><td><input type="text" name="age" value="<%=rs.getString(3)%>" /></td></tr>
                    <tr><td>Blood Group</td><td><input type="text" name="bldgrp" value="<%=rs.getString(4)%>" /></td></tr>
                    <tr><td>Gender:</td><td><input type="text" name="gender" value="<%=rs.getString(6)%>" /></td></tr>
                    <tr><td>Medical Details:</td><td><input type="text" name="details" value="<%=rs.getString(5)%>"></td></tr>
                    
                    <tr><td><input type="submit" value="update" name="update" /></td></tr>
                     
                   </table>
        </form>
        
                    <center><a href="Docthome.jsp">Back</a>
    </body>
</html>
