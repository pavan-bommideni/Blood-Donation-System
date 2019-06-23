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
    <center><h1>List of Doctors</h1>
        <table border="1" cellspacing="5" cellpadding="5" width="50%">
            <thead>
            <th>Id</th>
            <th>Name</th>
            <th>Password</th>
            <th>Hospital Details</th>
            <th>Phone number</th>
            </thead>
             <%
                Statement s=con.createStatement();
                ResultSet rs=s.executeQuery("select *from DOCTORINFO");
                while(rs.next())
                {
                        %>
                        <tr>
                            
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                
                            <td><%=rs.getString(5)%></td>
                            
                              
                        </tr>
                        <%
                }
                %>
        </table>  
        
    </body>
</html>
