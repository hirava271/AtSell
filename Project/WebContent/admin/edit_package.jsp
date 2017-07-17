<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="Flat, Clean, Responsive, application admin template built with bootstrap 3">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1">
 
<title>Sublime - Web Application Admin Dashboard</title>
 
 
 
<script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok2v=1613a3a185/"},atok:"e1d17b90015f417acdc497a575529ead",petok:"e0ac5e9d30f799ab48c2a638d812d713748605b0-1415075852-1800",zone:"nyasha.me",rocket:"0",apps:{"ga_key":{"ua":"UA-50530436-1","ga_bs":"2"}}}];CloudFlare.push({"apps":{"ape":"1cd4561656ccb50704e0517e2fcfce8c"}});!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="<%=request.getContextPath() %>/admin/js/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/admin/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/admin/css/font-awesome.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/admin/css/themify-icons.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/admin/css/animate.min.css">
 
 
<link rel="stylesheet" href="<%=request.getContextPath() %>/admin/css/palette.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/admin/css/font.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/admin/css/main.css">
 
 
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.<%=request.getContextPath() %>/admin/js/1.4.2/respond.min.js"></script>
    <![endif]-->
 
<script src="<%=request.getContextPath() %>/admin/js/modernizr.js"></script>
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
					<section class="panel"> <header class="panel-heading">Form
					Controls</header>
					<div class="panel-body">
			<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
			
			<c:forEach items="${sessionScope.edit_package_session }" var="i">
<form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/PackageServlet?flag=save&id=${i.package_id}" method="post">
<div class="form-group">
<label class="col-sm-2 control-label">Package Name</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="add_package_name" value="${i.package_name }">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Price</label>
<div class="col-sm-10">
<input type="number" class="form-control" name="add_package_price" value="${i.package_price }">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Duration</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="add_package_duration" value="${i.package_duration }">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Description</label>
<div class="col-sm-10">
<textarea class="form-control" rows="3" name="add_package_description">${i.package_description }</textarea>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Package Status</label>
<div class="col-sm-10">
<c:if test="${i.isActive eq 1 }">
<div class="radio">
<label>
<input type="radio" checked="checked" name="status" value="1">Active</label>
</div>
<div class="radio">
<label>
<input type="radio" name="status" value="0">InActive</label>
</div>
</c:if>
o
<c:if test="${i.isActive ne 1 }">
<div class="radio">
<label>
<input type="radio" name="status" value="1">Active</label>
</div>
<div class="radio">
<label>
<input type="radio" name="status" checked="checked" value="0">InActive</label>
</div>
</c:if>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">File Upload</label>
<div class="col-sm-10">
<c:forEach items="${sessionScope.edit_packageattachment_session}" var="j">
 <img src="<%=request.getContextPath() %>/doc/${j.path }" width="100" height="100" alt="Image not Found" /> 
 <a href="<%=request.getContextPath() %>/YourController?mode=4&id=${j.attachment_id}&pkg_id=${i.package_id}" > Delete File </a>
</c:forEach>
<p class="help-block">Example block-level help text here.</p>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Add Files</label>
<div class="col-sm-10">
<iframe src="fileupload.jsp" height="250px" width="350px"></iframe>
</div>
</div>
<button type="submit" class="btn btn-default">Edit</button>
</form>
</c:forEach>
</div>
</section>
</div>
</div>
</div>

</div>
 
<a class="exit-offscreen"></a>

<script src="<%=request.getContextPath() %>/admin/js/jquery-1.11.1.min.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/bootstrap.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/jquery.slimscroll.min.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/jquery.easing.min.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/jquery.appear.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/jquery.placeholder.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/fastclick.js"></script>
 
 
 
 
<script src="<%=request.getContextPath() %>/admin/js/offscreen.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/main.js"></script>

</body>
</html>