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
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok2v=1613a3a185/"},atok:"ec3294b02e460ec9751bf9d3e03fcdfc",petok:"0d320992e4882dfc00ae940fe0058717bc24b085-1414485612-1800",zone:"nyasha.me",rocket:"0",apps:{"ga_key":{"ua":"UA-50530436-1","ga_bs":"2"}}}];CloudFlare.push({"apps":{"ape":"0abf56fa514fa735f134c2c51eeb7dab"}});!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="<%=request.getContextPath() %>/admin/js/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/admin/css/chosen.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/admin/css/jquery.dataTables.css">
 
 
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
<section class="panel panel-default">
<header class="panel-heading">Data Tables</header>
<div class="panel-body">
<div class="table-responsive no-border">
<table class="table table-bordered table-striped mg-t datatable editable-datatable">
<thead>
<tr>
<th>Category Name</th>
<th>Subcategory Name</th>
<th>Product Name</th>
<th>Discount</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<tr>
<td>Airi Satou</td>
<td>Accountant</td>
<td>Tokyo</td>
<td><a href="javascript:;" class="edit">Edit</a>
</td>
<td><a href="javascript:;" class="delete">Delete</a>
</td>
</tr>
<tr>
<td>Angelica Ramos</td>
<td>Chief Executive Officer (CEO)</td>
<td>London</td>
<td><a href="javascript:;" class="edit">Edit</a>
</td>
<td><a href="javascript:;" class="delete">Delete</a>
</td>
</tr>
<tr>
<td>Ashton Cox</td>
<td>Junior Technical Author</td>
<td>San Francisco</td>
<td><a href="javascript:;" class="edit">Edit</a>
</td>
<td><a href="javascript:;" class="delete">Delete</a>
</td>
</tr>
<tr>
<td>Bradley Greer</td>
<td>Software Engineer</td>
<td>London</td>
<td><a href="javascript:;" class="edit">Edit</a>
</td>
<td><a href="javascript:;" class="delete">Delete</a>
</td>
</tr>
<tr>
<td>Brenden Wagner</td>
<td>Software Engineer</td>
<td>San Francisco</td>
<td><a href="javascript:;" class="edit">Edit</a>
</td>
<td><a href="javascript:;" class="delete">Delete</a>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</section>
</div>
 
</div>
 
<a class="exit-offscreen"></a>
</section>
 
</section>
</div>
<script src="<%=request.getContextPath() %>/admin/js/jquery-1.11.1.min.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/bootstrap.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/jquery.slimscroll.min.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/jquery.easing.min.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/jquery.appear.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/jquery.placeholder.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/fastclick.js"></script>
 
 
<script src="<%=request.getContextPath() %>/admin/js/chosen.jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/jquery.dataTables.js"></script>
 
 
<script src="<%=request.getContextPath() %>/admin/js/offscreen.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/main.js"></script>
 
 
<script src="<%=request.getContextPath() %>/admin/js/bootstrap-datatables.js"></script>
<script src="<%=request.getContextPath() %>/admin/js/table-edit.js"></script>

</body>
</html>