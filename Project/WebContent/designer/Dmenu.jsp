<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="description"
	content="Flat, Clean, Responsive, application admin template built with bootstrap 3">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1">

<title>Sublime - Web Application Admin Dashboard</title>

<script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok2v=1613a3a185/"},atok:"ba789335e70cab3833bc453c68c57bc4",petok:"9e0ddc1a729275bdae0be9f6e8f423ce0d413e69-1414824921-1800",zone:"nyasha.me",rocket:"0",apps:{"ga_key":{"ua":"UA-50530436-1","ga_bs":"2"}}}];CloudFlare.push({"apps":{"ape":"0279d6ce4072c5abdb75853c02d874e3"}});!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="<%=request.getContextPath()%>/designer/js/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/designer/css/jquery-jvectormap-1.2.2.css">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/designer/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/designer/css/font-awesome.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/designer/css/themify-icons.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/designer/css/animate.min.css">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/designer/css/palette.css"
	id="skin">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/designer/css/font.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/designer/css/main.css">


<!--[if lt IE 9]>
        <script src="<%=request.getContextPath()%>/designer/js/html5shiv.js"></script>
        <script src="<%=request.getContextPath()%>/designer/js/respond.min.js"></script>
    <![endif]-->

<script src="<%=request.getContextPath()%>/designer/js/modernizr.js"></script>
<script type="text/javascript">
/* <![CDATA[ */
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-50530436-1']);
_gaq.push(['_trackPageview']);

(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

(function(b){(function(a){"__CF"in b&&"DJS"in b.__CF?b.__CF.DJS.push(a):"addEventListener"in b?b.addEventListener("load",a,!1):b.attachEvent("onload",a)})(function(){"FB"in b&&"Event"in FB&&"subscribe"in FB.Event&&(FB.Event.subscribe("edge.create",function(a){_gaq.push(["_trackSocial","facebook","like",a])}),FB.Event.subscribe("edge.remove",function(a){_gaq.push(["_trackSocial","facebook","unlike",a])}),FB.Event.subscribe("message.send",function(a){_gaq.push(["_trackSocial","facebook","send",a])}));"twttr"in b&&"events"in twttr&&"bind"in twttr.events&&twttr.events.bind("tweet",function(a){if(a){var b;if(a.target&&a.target.nodeName=="IFRAME")a:{if(a=a.target.src){a=a.split("#")[0].match(/[^?=&]+=([^&]*)?/g);b=0;for(var c;c=a[b];++b)if(c.indexOf("url")===0){b=unescape(c.split("=")[1]);break a}}b=void 0}_gaq.push(["_trackSocial","twitter","tweet",b])}})})})(window);
/* ]]> */
</script>
</head>

<body>
	<div class="app">
		<header class="header header-fixed navbar">
		<div class="brand">

			<a href="javascript:;" class="ti-menu off-left visible-xs"
				data-toggle="offscreen" data-move="ltr"></a> <a 
				class="navbar-brand"> <img src="<%=request.getContextPath() %>/admin/img/logo.png" alt=""> <span
				class="heading-font"> @Sell </span>
			</a>

		</div>
		<ul class="nav navbar-nav">
			<li class="hidden-xs"><a href="javascript:;"
				class="toggle-sidebar"> <i class="ti-menu"></i>
			</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			
			<li class="off-right"><a href="javascript:;"
				data-toggle="dropdown"> <img src="<%=request.getContextPath() %>/admin/img/avatar.jpg"
					class="header-avatar img-circle" alt="user" title="user"> <span
					class="hidden-xs ml10">${sessionScope.user_name}</span> <i
					class="ti-angle-down ti-caret hidden-xs"></i>
			</a>
				<ul class="dropdown-menu animated fadeInRight">
					<li><a href="<%=request.getContextPath()%>/?logout=logout">Logout</a>
					</li>
				</ul></li>
		</ul>
		</header>

		<section class="layout"> <aside
			class="sidebar offscreen-left"> <nav class="main-navigation"
			data-height="auto" data-size="6px" data-distance="0"
			data-rail-visible="true" data-wheel-step="10">
		<p class="nav-title">MENU</p>
		<ul class="nav">

			<li><a href="<%=request.getContextPath()%>/designer/Dcode.jsp">
					<i class="ti-home"></i> <span>Dashboard</span>
			</a></li>


			<!-- <li>
<a href="search_user.jsp">
<i class="toggle-accordion"></i>
<i class="ti-layout-media-overlay-alt-2"></i>
<span>Manage Products</span>
</a>-->

			<li><a href="javascript:;"> <i class="toggle-accordion"></i>
					<i class="ti-support"></i> <span>Manage Items</span>
			</a>

				<ul class="sub-menu">
					<li><a
						href="<%=request.getContextPath()%>/DClothServlet?flag=load">
							<span>Add Item</span>
					</a></li>
					<li><a
						href="<%=request.getContextPath()%>/designer/add_color_file.jsp">
							<span>Add Multiple Colors</span>
					</a></li>
					<li><a
						href="<%=request.getContextPath()%>/DClothServlet?flag=search">
							<span>Search Item</span>
					</a></li>
				</ul></li>
			<li><a
				href="<%=request.getContextPath()%>/DManageOrdersServlet?flag=search">
					<i class="ti-home"></i> <span>Manage Orders</span>
			</a></li>

			<li><a
				href="<%=request.getContextPath()%>/DManageShippingServlet?flag=search">
					<i class="ti-home"></i> <span>Manage Shipping</span>
			</a></li>

			<li><a href="javascript:;"> <i class="toggle-accordion"></i>
					<i class="ti-support"></i> <span>Manage Designs</span>
			</a>

				<ul class="sub-menu">
					<li><a href="javascript:;"> <i class="toggle-accordion"></i>
							<i class="ti-layers"></i> <span>Neck</span>
					</a>
						<ul class="sub-menu">
							<li><a
								href="<%=request.getContextPath()%>/designer/neck.jsp"> <span>Add
										Neck</span>
							</a></li>
							<li><a
								href="<%=request.getContextPath()%>/DNeckServlet?flag=load">
									<span>Search Neck</span>
							</a></li>
						</ul></li>

					<li><a href="javascript:;"> <i class="toggle-accordion"></i>
							<i class="ti-layers"></i> <span>Sleeve</span>
					</a>
						<ul class="sub-menu">
							<li><a
								href="<%=request.getContextPath()%>/designer/sleeve.jsp"> <span>Add
										Sleeve</span>
							</a></li>
							<li><a
								href="<%=request.getContextPath()%>/designer/search_sleeve.jsp">
									<span>Search Sleeve</span>
							</a></li>
						</ul></li>

					<li><a href="javascript:;"> <i class="toggle-accordion"></i>
							<i class="ti-layers"></i> <span>Size</span>
					</a>
						<ul class="sub-menu">
							<li><a
								href="<%=request.getContextPath()%>/designer/size.jsp"> <span>Add
										Size</span>
							</a></li>
							<li><a
								href="<%=request.getContextPath()%>/designer/search_size.jsp">
									<span>Search Size</span>
							</a></li>
						</ul></li>

					<li><a href="javascript:;"> <i class="toggle-accordion"></i>
							<i class="ti-layers"></i> <span>Material</span>
					</a>
						<ul class="sub-menu">
							<li><a
								href="<%=request.getContextPath()%>/designer/material.jsp">
									<span>Add Material</span>
							</a></li>
							<li><a
								href="<%=request.getContextPath()%>/designer/search_material.jsp">
									<span>Search Material</span>
							</a></li>
						</ul></li>
				</ul></li>
		</ul>
		</nav> </aside> <script
			src="<%=request.getContextPath()%>/designer/js/jquery-1.11.1.min.js"></script>
		<script src="<%=request.getContextPath()%>/designer/js/bootstrap.js"></script>
		<script
			src="<%=request.getContextPath()%>/designer/js/jquery.slimscroll.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/designer/js/jquery.easing.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/designer/js/jquery.appear.js"></script>
		<script
			src="<%=request.getContextPath()%>/designer/js/jquery.placeholder.js"></script>
		<script src="<%=request.getContextPath()%>/designer/js/fastclick.js"></script>


		<script
			src="<%=request.getContextPath()%>/designer/js/jquery.blockUI.js"></script>
		<script
			src="<%=request.getContextPath()%>/designer/js/jquery-jvectormap-1.2.2.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/designer/js/jquery-jvectormap-world-mill-en.js"></script>
		<script
			src="<%=request.getContextPath()%>/designer/js/jquery.sparkline.js"></script>
		<script
			src="<%=request.getContextPath()%>/designer/js/jquery.flot.js"></script>
		<script
			src="<%=request.getContextPath()%>/designer/js/jquery.flot.resize.js"></script>
		<script
			src="<%=request.getContextPath()%>/designer/js/jquery.countTo.js"></script>


		<script src="<%=request.getContextPath()%>/designer/js/dashboard.js"></script>


		<script src="<%=request.getContextPath()%>/designer/js/offscreen.js"></script>
		<script src="<%=request.getContextPath()%>/designer/js/main.js"></script>
</body>
</html>