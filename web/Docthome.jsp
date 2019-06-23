<%-- 
    Document   : Docthome
    Created on : Jun 13, 2015, 11:32:54 AM
    Author     : Pavan Kumar
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <%@include file="connect.jsp"%>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Doctor Home</title>
		<!-- Start css3menu.com HEAD section -->
	<link rel="stylesheet" href="Docthome_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
	<!-- End css3menu.com HEAD section -->
<script type="text/javascript">
            window.history.forward();
            function noBack(){
                window.history.forward();}
                            </script>
	
</head>
<body style="background-color:#EBEBEB" background="Images/9.jpg" onload="noBack();"   onpageshow="if(event.persisted)noBack();"onunload="">
<!-- Start css3menu.com BODY section -->
<ul id="css3menu1" class="topmenu">
<input type="checkbox" id="css3menu-switcher" class="switchbox"><label onclick="" class="switch" for="css3menu-switcher"></label>	<li class="topfirst"><a href="Docthome.jsp" style="height:28px;line-height:28px;">Home</a></li>
	<li class="topmenu"><a href="#" style="height:28px;line-height:28px;"><span>Donors</span></a>
	<ul>
		<li><a href="dodview.jsp">View</a></li>
	</ul></li>
	<li class="topmenu"><a href="docview.jsp" style="height:28px;line-height:28px;"><span>Profile</span></a>
	</li>
	<li class="topmenu"><a href="#" style="height:28px;line-height:28px;"><span>Patients</span></a>
	<ul>
		<li><a href="dopatview.jsp">View</a></li>
		<li><a href="dopatadd.jsp">Add</a></li>
		<li><a href="patdel.jsp">Delete</a></li>
	</ul></li>
	<li class="toplast"><a href="doctlogout.jsp" style="height:28px;line-height:28px;">Logout</a></li>
</ul><p class="_css3m"><a href="http://css3menu.com/">web menu</a> by Css3Menu.com</p>
<!-- End css3menu.com BODY section -->
<%String did=(String)session.getAttribute("id");
        Statement st1=con.createStatement();
            ResultSet rs=st1.executeQuery("select name from DOCTORINFO where DID='"+did+"'");
            rs.next();
            String n=rs.getString(1);
            %>



            <center><h1><br> WELCOME <b><b><%=n%></h1>
</body>
</html>

