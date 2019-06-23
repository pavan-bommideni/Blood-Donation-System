<%-- 
    Document   : doctlogout
    Created on : Jun 21, 2015, 10:21:19 PM
    Author     : Pavan Kumar
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script type="text/javascript">
            window.history.forward();
            function noBack()
            {
                window.history.forward();
            }
                            </script>
    <body onload="noBack();"   onpageshow="if(event.persisted)noBack();"onunload="">
        <%


String n = (String)session.getAttribute("name");

if(session!=null)
	{

session.removeAttribute("name");
session.invalidate();
response.sendRedirect("doctorlogin.jsp");
    }

%>

    </body>
</html>