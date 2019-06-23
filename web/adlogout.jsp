<%-- 
    Document   : adlogout
    Created on : Jun 20, 2015, 10:49:56 AM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      
    </head>
    <body>
       <%




if(session!=null)
	{


session.invalidate();
response.sendRedirect("adminlogin.jsp");
    }

%>

    </body>
</html>
