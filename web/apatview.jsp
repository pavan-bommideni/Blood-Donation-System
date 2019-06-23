<%-- 
    Document   : apatview
    Created on : Jun 11, 2015, 11:17:09 AM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<%@include file="Adminhome.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Patients Details</h1>
        <table border="1" cellspacing="5" cellpadding="5" width="100%">
            <thead>
            <th>Id</th>
            <th>Patient Name</th>
            <th>Age</th>
            <th>Blood Group</th>
            <th>Gender</th>
            <th>Medical Details</th>
            </thead>
             <%
                Statement s=con.createStatement();
                ResultSet rs=s.executeQuery("select *from PATIENT");
                while(rs.next())
                {
                        %>
                        <tr>
                            
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getString(5)%></td>
                            
                              
                        </tr>
                        <%
                }
                %>
        </table>
                
    </body>
</html>
