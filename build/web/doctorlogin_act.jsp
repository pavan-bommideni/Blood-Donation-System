<%-- 
    Document   : doctorlogin_act
    Created on : Jun 19, 2015, 1:53:38 PM
    Author     : Pavan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            window.history.forward();
            function noBack()
            {
                window.history.forward();
            }
                            </script>
    </head>
    <body onload="noBack();"   onpageshow="if(event.persisted)noBack();"onunload="">
    <%
            String n1=request.getParameter("id");
            session.setAttribute("id",n1);
            String n2=request.getParameter("pwd");
             
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select PASSWORD  from DOCTORINFO where did='"+n1+"'");  
if(rs.next())
{
    String dpwd=rs.getString(1);
    if(n2.equals(dpwd))
    {
     %>
    <jsp:forward page="Docthome.jsp"></jsp:forward>
<%   
    }
    else
    {
        out.println("<h1>enter valid password</h1>" );
    } 
}
else
{
    out.println("<h1>enter a valid id</h1>");
}
    %>
    <a href="doctorlogin.jsp">Back</a>
    </body>
</html>
