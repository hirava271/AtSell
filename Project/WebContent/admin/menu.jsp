<%@page import="java.util.List"%>
<%@page import="DAO.UfeedbackDAO"%>
<%@page import="DAO.UcomplaintDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 
<meta charset="utf-8">
<meta name="description" content="Flat, Clean, Responsive, application admin template built with bootstrap 3">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1">
 
<title>Sublime - Web Application Admin Dashboard</title>
 
<script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok2v=1613a3a185/"},atok:"ba789335e70cab3833bc453c68c57bc4",petok:"9e0ddc1a729275bdae0be9f6e8f423ce0d413e69-1414824921-1800",zone:"nyasha.me",rocket:"0",apps:{"ga_key":{"ua":"UA-50530436-1","ga_bs":"2"}}}];CloudFlare.push({"apps":{"ape":"0279d6ce4072c5abdb75853c02d874e3"}});!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="<%=request.getContextPath()%>/admin/js/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/<%=request.getContextPath()%>/admin/css/jquery-jvectormap-1.2.2.css">
 
 
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/font-awesome.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/themify-icons.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/animate.min.css">
 
 
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/palette.css" id="skin">
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/font.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/main.css">
 
 
<!--[if lt IE 9]>
        <script src="<%=request.getContextPath()%>/admin/js/html5shiv.js"></script>
        <script src="<%=request.getContextPath()%>/admin/js/respond.min.js"></script>
    <![endif]-->
 
<script src="<%=request.getContextPath()%>/admin/js/modernizr.js"></script>
<!-- <script type="text/javascript">
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
 --></head>
 
<body>

<%
UcomplaintDAO complainDao=new UcomplaintDAO();
List l=complainDao.search_complaint();

UfeedbackDAO feedbackDao=new UfeedbackDAO();
List l1=feedbackDao.search_feedback();

HttpSession hs=request.getSession();
hs.setAttribute("complaint", l);
hs.setAttribute("feedback", l1);
hs.setAttribute("notification", l.size());
hs.setAttribute("message", l1.size());

%>
<div class="app">
<header class="header header-fixed navbar">
<div class="brand">
 
<a href="javascript:;" class="ti-menu off-left visible-xs" data-toggle="offscreen" data-move="ltr"></a>
 
 
<a href="index.html" class="navbar-brand">
<img src="img/logo.png" alt="">
<span class="heading-font">
@Sell
</span>
</a>
 
</div>
<ul class="nav navbar-nav">
<li class="hidden-xs">
 
<a href="javascript:;" class="toggle-sidebar">
<i class="ti-menu"></i>
</a>
 
</li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li class="notifications dropdown">
<a href="<%=request.getContextPath() %>/admin/manage_feedback.jsp">
<img src="<%=request.getContextPath()%>/admin/img/envelope_icon-10a28163820ef7ba28782912548701a5.png" style="height: 25px; width: 20px">
<div class="badge badge-top bg-danger animated flash">
<span>${sessionScope.message }</span>
</div>
</a>
</li>
<li class="notifications dropdown">
<a href="<%=request.getContextPath() %>/admin/manage_complaint.jsp">
<i class="ti-bell"></i>
<div class="badge badge-top bg-danger animated flash">
<span>${sessionScope.notification }</span>
</div>
</a>
</li>
<li class="off-right">
<a href="javascript:;" data-toggle="dropdown">
<img src="img/avatar.jpg" class="header-avatar img-circle" alt="user" title="user">
<span class="hidden-xs ml10">Admin</span>
<i class="ti-angle-down ti-caret hidden-xs"></i>
</a>
<ul class="dropdown-menu animated fadeInRight">
<li>
<a href="login.jsp">Logout</a>
</li>
</ul>
</li>
</ul>
</header>
 
<section class="layout">
 
<aside class="sidebar offscreen-left" style="width:228px">
 
<nav class="main-navigation" data-height="auto" data-size="6px" data-distance="0" data-rail-visible="true" data-wheel-step="10">
<p class="nav-title">MENU</p>
<ul class="nav">
 
<li>
<a href="<%=request.getContextPath()%>/admin/code.jsp">
<i class="ti-home"></i>
<span>Dashboard</span>
</a>
</li>
 
 
<li>
<a href="<%=request.getContextPath()%>/ManageUserServlet?flag=search">
<i class="toggle-accordion"></i>
<i class="ti-layout-media-overlay-alt-2"></i>
<span>Manage User</span>
</a>
</li>

<li>
<a href="<%=request.getContextPath()%>/MangeDesignerServlet?flag=search">
<i class="toggle-accordion"></i>
<i class="ti-layout-media-overlay-alt-2"></i>
<span>Manage Designer</span>
</a>
</li>

<li>
<a href="javascript:;">
<i class="toggle-accordion"></i>
<i class="ti-support"></i>
<span>Manage Category</span>
</a>
<ul class="sub-menu">
<li>
<a href="<%=request.getContextPath()%>/admin/add_category.jsp">
<span>Add Category</span>
</a>
</li>
<li>
<a href="<%=request.getContextPath()%>/CategoryServlet?flag=load">
<span>Search Category</span>
</a>
</li>
</ul>
</li>
 
 
<li>
<a href="javascript:;">
<i class="toggle-accordion"></i>
<i class="ti-folder"></i>
<span>Manage Subcategory</span>
</a>
<ul class="sub-menu">
<!-- <li>
<a href="forms.html">
<span></span>
</a>
</li> -->
<li>
<a href="<%=request.getContextPath()%>/SubcategoryServlet?flag=load">
<span>Add Subcategory</span>
</a>
</li>
<li>
<a href="<%=request.getContextPath()%>/SubcategoryServlet?flag=search">
<span>Search Subcategory</span>
</a>
</li>
</ul>
</li>
 
 
<li>
<a href="javascript:;">
<i class="toggle-accordion"></i>
<i class="ti-support"></i>
<span>Manage Packages</span>
</a>
<ul class="sub-menu">
<li>
<a href="<%=request.getContextPath()%>/admin/add_package.jsp">
<span>Add Package</span>
</a>
</li>
<li>
<a href="<%=request.getContextPath()%>/PackageServlet?flag=search">
<span>Search Package</span>
</a>
</li>
</ul>
</li>
 
</ul>
<!-- <p class="nav-title">MORE< /p>-->
<ul class="nav">
 
<li>
<a href="javascript:;">
<i class="toggle-accordion"></i>
<i class="ti-layers"></i>
<span>Manage Location</span>
</a>
<ul class="sub-menu">
	<li>
	<a href="javascript:;">
	<i class="toggle-accordion"></i>
	<i class="ti-layers"></i>
	<span>Manage Country</span>
	</a>
	<ul class="sub-menu">
		<li>
		<a href="<%=request.getContextPath()%>/admin/manage_country.jsp">
		<span>Add Country</span>
		</a>
		</li>
		<li>
		<a href="<%=request.getContextPath()%>/CountryServlet?flag=load">
		<span>Search Country</span>
		</a>
		</li>
	</ul>
	</li>
	
	<li>
	<a href="javascript:;">
	<i class="toggle-accordion"></i>
	<i class="ti-layers"></i>
	<span>Manage State</span>
	</a>
	<ul class="sub-menu">
		<li>
		<a href="<%=request.getContextPath()%>/StateServlet?flag=load">
		<span>Add State</span>
		</a>
		</li>
		<li>
		<a href="<%=request.getContextPath()%>/StateServlet?flag=search">
		<span>Search State</span>
		</a>
		</li>
	</ul>
	</li>
	
	<li>
	<a href="javascript:;">
	<i class="toggle-accordion"></i>
	<i class="ti-layers"></i>
	<span>Manage City</span>
	</a>
	<ul class="sub-menu">
		<li>
		<a href="<%=request.getContextPath()%>/CityServlet?flag=load">
		<span>Add City</span>
		</a>
		</li>
		<li>
		<a href="search_city.jsp">
		<span>Search City</span>
		</a>
		</li>
	</ul>
	</li>
</ul>
</li>
 
<li>
<a href="<%=request.getContextPath()%>/admin/manage_complaint.jsp">
<i class="toggle-accordion"></i>
<i class="ti-window"></i>
<span>Manage Complaint</span>
</a>
</li>
 
 <li>
<a href="manage_feedback.jsp">
<i class="toggle-accordion"></i>
<i class="ti-window"></i>
<span>Manage Feedback</span>
</a>
</li>

<li>
<a href="<%=request.getContextPath() %>/ManageDeliveryServlet?flag=search">
<i class="toggle-accordion"></i>
<i class="ti-window"></i>
<span>Manage Deliveries</span>
</a>
</li>

<!-- <li>
<a href="add_package.jsp">
<i class="toggle-accordion"></i>
<i class="ti-window"></i>
<span>Manage Payments</span>
</a>
</li>
 -->
 
</ul>
</nav>
</aside>
 


<script src="<%=request.getContextPath()%>/admin/js/jquery-1.11.1.min.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery.slimscroll.min.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery.easing.min.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery.appear.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery.placeholder.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/fastclick.js"></script>
 
 
<script src="<%=request.getContextPath()%>/admin/js/jquery.blockUI.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery.sparkline.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery.flot.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery.flot.resize.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery.countTo.js"></script>
 
 
<script src="<%=request.getContextPath()%>/admin/js/dashboard.js"></script>
 
 
<script src="<%=request.getContextPath()%>/admin/js/offscreen.js"></script>
<script src="<%=request.getContextPath()%>/admin/js/main.js"></script>


</body>
</html>