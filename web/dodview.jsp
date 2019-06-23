<%-- 
    Document   : dodview
    Created on : Jun 21, 2015, 10:09:48 PM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Docthome.jsp"%>
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
                
                Statement st2=con.createStatement();
                ResultSet rs1=st2.executeQuery("select *from DONORREG");
                while(rs1.next())
                {
                        %>
                        <tr>
                            
                            <td><%=rs1.getString(1)%></td>
                            <td><%=rs1.getString(2)%></td>
                            <td><%=rs1.getString(3)%></td>
                            <td><%=rs1.getString(4)%></td>
                            <td><%=rs1.getString(5)%></td>
                            <td><%=rs1.getString(6)%></td>
                            <td><%=rs1.getString(7)%></td>
                            <td><%=rs1.getString(8)%></td>
                            <td><%=rs1.getString(9)%></td>
                              
                        </tr>
                        <%
                }
                %>
        </table>  
        
    </body>
</html>

