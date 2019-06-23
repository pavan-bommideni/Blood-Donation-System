<%-- 
    Document   : newjsp
    Created on : Jun 10, 2015, 10:03:00 PM
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
    <center><h1>List of Donors</h1>
        <table border="1" cellspacing="5" cellpadding="5" width="100%">
            <thead>
            <th>Id</th>
            <th>Password</th>
            <th>Name</th>
            <th>Phone number</th>
            <th>Blood group</th>
            <th>Avaliable Days</th>
            <th>Address</th>
            <th>Age</th>
            <th>Gender</th>
            </thead>
            <%
                Statement s=con.createStatement();
                ResultSet rs=s.executeQuery("select *from DONORREG");
                while(rs.next())
                {
                        %>
                        <tr>
                            
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getString(7)%></td>
                            <td><%=rs.getString(8)%></td>
                            <td><%=rs.getString(9)%></td>
                              
                        </tr>
                        <%
                }
                %>
        </table>  
        
    </body>
</html>
