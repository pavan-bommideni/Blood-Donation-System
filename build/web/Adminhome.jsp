<%-- 
    Document   : newjsp
    Created on : Jun 11, 2015, 1:33:21 PM
    Author     : Pavan Kumar
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Admin Home</title>
		<!-- Start css3menu.com HEAD section -->
	<link rel="stylesheet" href="AdHome_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
	<!-- End css3menu.com HEAD section -->
<script type="text/javascript">
            window.history.forward();
            function noBack(){
                window.history.forward();}
                            </script>
	
</head>
<body style="background-color:#EBEBEB" background="Images/10.jpg" onload="noBack();"   onpageshow="if(event.persisted)noBack();"onunload="">
<!-- Start css3menu.com BODY section -->
<ul id="css3menu1" class="topmenu">
<input type="checkbox" id="css3menu-switcher" class="switchbox"><label onclick="" class="switch" for="css3menu-switcher"></label>	<li class="topfirst"><a href="Adminhome.jsp" style="height:25px;line-height:25px;">Home</a></li>
	<li class="topmenu"><a href="#" style="height:25px;line-height:25px;"><span>Donors</span></a>
	<ul>
		<li><a href="adview.jsp">View</a></li>
		<li><a href="addel.jsp">Delete</a></li>
		<li><a href="adgenst.jsp">Generate Status</a></li>
		<li><a href="organdonor.jsp">Organ Donors</a></li>
		<li><a href="http://site23.way2sms.com/content/">Inform</a></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:25px;line-height:25px;"><span>Doctors</span></a>
	<ul>
		<li><a href="adocview.jsp">View</a></li>
		<li><a href="adocadd.jsp">Add</a></li>
                <li><a href="adocdel.jsp">Delete</a></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:25px;line-height:25px;"><span>Patient</span></a>
	<ul>
		<li><a href="apatview.jsp">View</a></li>
		<li><a href="apatadd.jsp">Add</a></li>
	</ul></li>
	<li class="toplast"><a href="adlogout.jsp" style="height:25px;line-height:25px;">Logout</a></li>
</ul><p class="_css3m"><a href="http://css3menu.com/">dropdown menu</a> by Css3Menu.com</p>
<!-- End css3menu.com BODY section -->
<center><h1>Welcome Admin</h1>
</body>
</html>
