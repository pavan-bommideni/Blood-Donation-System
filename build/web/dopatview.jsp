<%-- 
    Document   : dopatview
    Created on : Jun 21, 2015, 10:12:32 PM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Docthome.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Patients Details</h1>
        <table border="1" cellspacing="5" cellpadding="5" width="100%">
            <tr>
            <thead>
            <th>Id</th>
            <th>Patient Name</th>
            <th>Age</th>
            <th>Blood Group</th>
            <th>Gender</th>
            <th>Medical Details</th>
            <th> </th>
            </thead>
</tr>
             <%
                Statement st=con.createStatement();
                ResultSet rs1=st.executeQuery("select *from PATIENT");
                while(rs1.next())
                {
                        %>
                        <tr>
                            
                            <td><%=rs1.getString(1)%></td>
                            <td><%=rs1.getString(2)%></td>
                            <td><%=rs1.getString(3)%></td>
                            <td><%=rs1.getString(4)%></td>
                            <td><%=rs1.getString(6)%></td>
                            <td><%=rs1.getString(5)%></td>
                            <td><a href="patupdate.jsp?id=<%=rs1.getString(1)%>">Update</a></td>
                              
                        </tr>
                        <%
                }
                %>
        </table>
                
    </body>
</html>
