<%-- 
    Document   : donorlogin_act
    Created on : Jun 19, 2015, 12:44:06 PM
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
            function noBack(){
                window.history.forward();}
                            </script>
    </head>
    <body>
    <%
            String n1=request.getParameter("id");
            session.setAttribute("id",n1);
            String n2=request.getParameter("pwd");
             
            Statement st=con.createStatement();
            Statement st1=con.createStatement();
            ResultSet rs=st.executeQuery("select PASSWORD  from DONORREG where id='"+n1+"'");
            ResultSet rs1=st1.executeQuery("select STATUS1 from STATUS where did='"+n1+"'");
            if(rs1.next())
            {
            String stat=rs1.getString(1);
if(rs.next())
{
    String dpwd=rs.getString(1);
    if(n2.equals(dpwd))
    {
        if(stat.equals("Accepted"))
        {
     %>
    <jsp:forward page="Donhome.jsp"></jsp:forward>
<%   }
        else if(stat.equals("Rejected"))
        {
           out.println("<h2>Sorry Registration Failed! Register Again.</h2>"); 
        }
        
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
            }
            else
            {
                out.println("<h2>Pending for Status (or) Invalid Id</h2>");
            }
       
       
       
    %>
    <a href="donorlogin.jsp">Back</a>
    </body>
</html>

