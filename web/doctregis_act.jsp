<%-- 
    Document   : doctregis_act
    Created on : Jun 16, 2015, 1:12:06 PM
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
            String regid=request.getParameter("id");
         String name=request.getParameter("name");
        String pwd=request.getParameter("pwd");
        String phno=request.getParameter("phno");
        String details=request.getParameter("details");
        PreparedStatement ps=con.prepareStatement("insert into DOCTORINFO values(?,?,?,?,?)");
        ps.setString(1,regid);
        ps.setString(2,name);
        ps.setString(3,pwd);
        ps.setString(4,details);
        ps.setString(5,phno);
         int k=ps.executeUpdate();
         if(k!=0)
        {
          out.println("<h1>Registered Sucessfully</h1>");
        }
         else
         {
             out.println("Please enter all the fields ");
         }
         %>
         <a href="doctorlogin.jsp">Login</a>
    </body>
</html>
