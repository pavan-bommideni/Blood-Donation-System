<%-- 
    Document   : Donhome
    Created on : Jun 12, 2015, 1:57:27 PM
    Author     : Pavan Kumar
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <%@include file="connect.jsp"%>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Donor Home</title>
		<!-- Start css3menu.com HEAD section -->
	<link rel="stylesheet" href="Donhome_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
	<!-- End css3menu.com HEAD section -->
<script type="text/javascript">
            window.history.forward();
            function noBack()
            {
                window.history.forward();
            }
                            </script>
	
</head>
<body style="background-color:#EBEBEB" background="Images/home.jpg" onload="noBack();"   onpageshow="if(event.persisted)noBack();"onunload="">
<!-- Start css3menu.com BODY section -->
<ul id="css3menu1" class="topmenu">
<input type="checkbox" id="css3menu-switcher" class="switchbox"><label onclick="" class="switch" for="css3menu-switcher"></label>	<li class="topfirst"><a href="Donhome.jsp" style="height:31px;line-height:31px;">Home</a></li>
	<li class="topmenu"><a href="dview.jsp" style="height:31px;line-height:31px;"><span>Profile</span></a>
	</li>
	<li class="topmenu"><a href="dorgan.jsp" style="height:31px;line-height:31px;">Donate Organs</a></li>
	<li class="toplast"><a href="donlogout.jsp" style="height:31px;line-height:31px;">Logout</a></li>
</ul><p class="_css3m"><a href="http://css3menu.com/">css3 dropdown menu</a> by Css3Menu.com</p>
<!-- End css3menu.com BODY section -->
<%String id=(String)session.getAttribute("id");
        Statement st1=con.createStatement();
            ResultSet rs=st1.executeQuery("select name from DONORREG where ID='"+id+"'");
            rs.next();
            String n=rs.getString(1);
            %>



<h1><br> WELCOME <b><b><%=n%></h1>
</body>
</html>

