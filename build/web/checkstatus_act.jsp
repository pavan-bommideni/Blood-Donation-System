<%-- 
    Document   : checkstatus_act
    Created on : Jun 18, 2015, 1:12:08 PM
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
<center>
    <table border="2" cellpadding="5">
       
        <%
            String id=request.getParameter("did");
            Statement s=con.createStatement();
            ResultSet rs=s.executeQuery("select * from STATUS where DID='"+id+"'");
           if( rs.next())
           {
                 String id2=rs.getString(1);
                if(id.equals(id2))
                {
            %>
             <th>Id</th>
        <th>Status</th>
            <tr>
                <td><%=id2%></td>
                <td><%=rs.getString(2)%></td>
                </tr>
                
                <%
                }
           }
                else
                {
                out.println("Pending for Status Generation");
                }
            
                %>
    </table>
    <a href="index.jsp">Back</a>
    </body>
</html>
