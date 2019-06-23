<%-- 
    Document   : organ
    Created on : Jun 11, 2015, 12:00:44 PM
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
    <center><h1>List of Organ Donors!</h1>
        <table border="1" cellspacing="5" cellpadding="5" width="20%">
            <thead>
            <th>Donor Id</th>
            <th>Name</th>
            <%
              Statement s=con.createStatement();
              ResultSet rs=s.executeQuery("select *from ORGANDONOR");
              while(rs.next())
              {
                %>
            <tr>
             
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                    
            </tr>
            <%
              }
                  %>
            </thead>
        </table>
            <a href="Adminhome.jsp">Back</a>
    </body>
</html>
