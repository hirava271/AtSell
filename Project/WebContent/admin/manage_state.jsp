<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="menu.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="Flat, Clean, Responsive, application admin template built with bootstrap 3">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1">
 
<title>Sublime - Web Application Admin Dashboard</title>
 
<script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok2v=1613a3a185/"},atok:"ec3294b02e460ec9751bf9d3e03fcdfc",petok:"0d320992e4882dfc00ae940fe0058717bc24b085-1414485612-1800",zone:"nyasha.me",rocket:"0",apps:{"ga_key":{"ua":"UA-50530436-1","ga_bs":"2"}}}];CloudFlare.push({"apps":{"ape":"0abf56fa514fa735f134c2c51eeb7dab"}});!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="js/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>
<link rel="stylesheet" href="css/chosen.min.css">
<link rel="stylesheet" href="css/jquery.dataTables.css">
 
 
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/themify-icons.css">
<link rel="stylesheet" href="css/animate.min.css">
 
 
<link rel="stylesheet" href="css/palette.css">
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="css/main.css">
 
 
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
 
<script src="js/modernizr.js"></script>
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
<section class="main-content">
 
<div class="content-wrap">
 
<div class="wrapper">

<div class="row">
<div class="col-lg-12">
<section class="panel">
<header class="panel-heading">Form Controls</header>
<div class="panel-body">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<form class="form-horizontal" role="form" method="post" action="<%=request.getContextPath()%>/StateServlet?flag=insert">

<div class="form-group">
<label class="col-sm-2 control-label">Country Name:</label>
<div class="col-sm-10">
<select class="form-control" name="dropdown_country">
<c:forEach items="${sessionScope.country }" var="i">
<option value="${i.country_id }">${i.country_name}</option>
</c:forEach>
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">State Name:</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="add_state_name">
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">State Description:</label>
<div class="col-sm-10">
<textarea class="form-control" rows="3" name="add_state_description"></textarea>
</div>
</div>

<button type="submit" class="btn btn-default">Submit</button>

</form>
</div>
</section>
</div>
</div>
</div>
 
</div>
 
<a class="exit-offscreen"></a>
</section>
 
</section>
</div>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/jquery.appear.js"></script>
<script src="js/jquery.placeholder.js"></script>
<script src="js/fastclick.js"></script>
 
 
<script src="js/chosen.jquery.min.js"></script>
<script src="js/jquery.dataTables.js"></script>
 
 
<script src="js/offscreen.js"></script>
<script src="js/main.js"></script>
 
 
<script src="js/bootstrap-datatables.js"></script>
<script src="js/table-edit.js"></script>

</body>
</html>