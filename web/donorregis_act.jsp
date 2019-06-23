<%-- 
    Document   : donorregis_act
    Created on : Jun 16, 2015, 11:11:52 AM
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
             String pwd=request.getParameter("pwd");
        String name=request.getParameter("name");
        String phno=request.getParameter("phno");
        String gender=request.getParameter("gen");
        String bldgrp=request.getParameter("bloodgrp");
        String age=request.getParameter("age");
        String avail="";
        String days[]=request.getParameterValues("availday");
        for(int i=0;i<days.length;i++)
        {
            avail+=days[i]+",";
        }
        String add=request.getParameter("addrss");
        PreparedStatement ps=con.prepareStatement("insert into DONORREG values(?,?,?,?,?,?,?,?,?)");
        ps.setString(1,regid);
        ps.setString(2,pwd);
        ps.setString(3,name);
        ps.setString(4,phno);
        ps.setString(5,bldgrp);
        ps.setString(6,avail);
        ps.setString(7,add);
        ps.setString(8,age);
        ps.setString(9,gender);
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
        <br><a href="donorlogin.jsp">Login</a>
    </body>
</html>
