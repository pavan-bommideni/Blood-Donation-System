<%-- 
    Document   : adminlogin_act
    Created on : Jun 19, 2015, 11:41:14 AM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title
        
                            
    </head>
    <body>
        <%
        
            String n1=request.getParameter("id");
            session.setAttribute("id",n1);
            String n2=request.getParameter("pwd");
            if(n1.equals("admin"))
{
    if(n2.equals("12345"))
    {%>
    <jsp:forward page="Adminhome.jsp"></jsp:forward>
<%

    }
    else
    {
        out.println("<h1>enter a valid userid and password</h1>" );
    }
}%>
<a href="adminlogin.jsp">Back</a>
    </body>
</html>