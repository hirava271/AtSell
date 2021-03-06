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
<script>
  function loadState()
	{
		var country_id=document.getElementById("country_id");
		
		var xmlhttp;
		
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  	xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		removeAllState();
	
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {

				var jsonObj = JSON.parse(xmlhttp.responseText);
				
				for(i=0 ; i<jsonObj.length ; i++)
				{
				
					var createOption=document.createElement("option");
					
					createOption.value=jsonObj[i].state_id;
					createOption.text=jsonObj[i].state_name;
					
					document.cityForm.state_id.options.add(createOption);
					
				}
			}
		}

		xmlhttp.open("get", "${pageContext.request.contextPath}/CityServlet?flag=loadState&country_id="+country_id.value, true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */
	}
	
	function removeAllState()
	{
		var removeState=document.cityForm.state_id.options.length;
		for(i=removeState ; i>=0 ; i-- )
		{
			document.cityForm.state_id.remove(i);
		}
	}
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
<form class="form-horizontal" role="form" name="cityForm" action="<%=request.getContextPath() %>/CityServlet?flag=insert" method="post">

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<div class="form-group">
<label class="col-sm-2 control-label">Country Name:</label>
<div class="col-sm-10">
<select class="form-control" name="dropdown_country" id="country_id" onchange="loadState()">
<option>Choose One</option>
<c:forEach items="${sessionScope.country }" var="i">
<option value="${i.country_id }">${i.country_name}</option>
</c:forEach>
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">State Name:</label>
<div class="col-sm-10">
<select class="form-control" name="state_id">
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">City Name:</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="city_name">
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">City Description:</label>
<div class="col-sm-10">
<textarea class="form-control" rows="3"></textarea>
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