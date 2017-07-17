<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="menu.jsp" %>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
<th>ID</th>
<th>Subcategory Name</th>
<th>Subcategory Description</th>
<th>Action</th>
</tr>
</thead>
<c:forEach items="${sessionScope.subcategory}" var="i" varStatus="ii">
<tbody>
	<tr>
		<td> ${ii.count}</td>
		<td> ${i.subcategory_name}</td>
		<td> ${i.subcategory_description}</td>
		<td> <a href="<%=request.getContextPath() %>/SubcategoryServlet?flag=delete&id=${i.subcategory_id}">Delete</a> /
			 <a href="<%=request.getContextPath() %>/SubcategoryServlet?flag=edit&id=${i.subcategory_id}">Edit</a></td>
	</tr>
</tbody>
</c:forEach>
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