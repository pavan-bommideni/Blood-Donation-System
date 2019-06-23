<%-- 
    Document   : docupdate
    Created on : Jun 13, 2015, 10:59:18 AM
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
     <%
        String n1=request.getParameter("id");
        String n2=request.getParameter("name");
        String n3=request.getParameter("pwd");
        String n4=request.getParameter("hospital");
        String n5=request.getParameter("phno");
       
                
        PreparedStatement ps = con.prepareStatement("update DOCTORINFO set NAME=?,PASSWORD=?,HOSPITAL_DETAILS=?,PHONE_NUMBER=? where DID='"+n1+"'" );
   
        
           ps.setString(1,n2);
            ps.setString(2,n3);
            ps.setString(3,n4);
            ps.setString(4,n5);
          
              
            int k=ps.executeUpdate();
       if(k!=0)
       {
           
           out.println("<h3>Updated Successfully</h3>");
       }
       else
       {
           out.println("Update not Successful");
       }
       
                
       
        %>
        <a href="docview.jsp">View</a>
    </body>
</html>
