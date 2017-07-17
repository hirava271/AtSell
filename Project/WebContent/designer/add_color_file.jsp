<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="Dmenu.jsp" %>
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
  function load_subcat()
	{
	    var category_id=document.getElementById("category_id");
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
					
					createOption.value=jsonObj[i].subcategory_id;
					createOption.text=jsonObj[i].subcategory_name;
					
					document.subcategoryForm.subcategory_id.options.add(createOption);
					
				}
			}
		}

		xmlhttp.open("get", "${pageContext.request.contextPath}/DColorFileServlet?flag=load_subcat&category_id="+category_id.value, true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */
	}

  function load_product()
	{
		alert("inside product fun");
	  var subcat_id=document.getElementById("subcat_id");
		var xmlhttp;
		
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  	xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
	//	removeAllState();
	//	removeAllCategory();
		removeAllProduct();
	
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {

				var jsonObj = JSON.parse(xmlhttp.responseText);
				
				for(i=0 ; i<jsonObj.length ; i++)
				{
				
					var createOption=document.createElement("option");
					
					createOption.value=jsonObj[i].cloth_id;
					createOption.text=jsonObj[i].product_name;
					
					document.subcategoryForm.product_id.options.add(createOption);
					
				}
			}
		}

		xmlhttp.open("get", "${pageContext.request.contextPath}/DColorFileServlet?flag=load_product&product_id="+subcat_id.value, true);
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
		var removeState=document.subcategoryForm.subcategory_id.options.length;
		for(i=removeState ; i>0 ; i-- )
		{
			document.subcategoryForm.subcategory_id.remove(i);
		}
	}
	
	function removeAllProduct()
	{
		var removeState=document.subcategoryForm.product_id.options.length;
		for(i=removeState ; i>0 ; i-- )
		{
			document.subcategoryForm.product_id.remove(i);
		}
	}
	
	function removeAllCategory()
	{
		var removeState=document.subcategoryForm.category_id.options.length;
		for(i=removeState ; i>0 ; i-- )
		{
			document.subcategoryForm.category_id.remove(i);
		}
	}
	
	function enableField()
	{
		var item_type_id=document.getElementById("cloth");
		var xmlhttp;
		alert("inside code..");
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  	xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		removeAllCategory();
		removeAllState();
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {

				var jsonObj = JSON.parse(xmlhttp.responseText);
				
				for(i=0 ; i<jsonObj.length ; i++)
				{
				
					var createOption=document.createElement("option");
					
					createOption.value=jsonObj[i].category_id;
					createOption.text=jsonObj[i].category_name;
					
					document.subcategoryForm.category_id.options.add(createOption);
					
				}
			}
		}

		xmlhttp.open("get", "${pageContext.request.contextPath}/DColorFileServlet?flag=load_cat&item_type_id=Cloths", true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */
		
	}
	
	function disableField()
	{
		
		var item_type_id=document.getElementById("cloth");
		var xmlhttp;
		alert("inside code..");
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  	xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		removeAllCategory();
		removeAllState();
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {

				var jsonObj = JSON.parse(xmlhttp.responseText);
				
				for(i=0 ; i<jsonObj.length ; i++)
				{
				
					var createOption=document.createElement("option");
					
					createOption.value=jsonObj[i].category_id;
					createOption.text=jsonObj[i].category_name;
					
					document.subcategoryForm.category_id.options.add(createOption);
					
				}
			}
		}

		xmlhttp.open("get", "${pageContext.request.contextPath}/DColorFileServlet?flag=load_cat_ac&item_type_id=Accessories", true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */

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
<form class="form-horizontal" role="form" name="subcategoryForm" method="post" action="<%=request.getContextPath()%>/DColorFileServlet?flag=insert">

<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<div class="form-group">
<label class="col-sm-2 control-label">Item type</label>
<div class="col-sm-10">
<div class="radio">
<label>
<input type="radio" name="type" value="Cloths" id="cloth" onclick="enableField()" >Cloths</label>
</div>
<div class="radio">
<label>
<input type="radio" name="type" value="Accessories" id="accessories" onclick="disableField()">Accessories</label>
</div>
</div>
</div>


<div class="form-group">
<label class="col-sm-2 control-label">Category Name:</label>
<div class="col-sm-10">
<select class="form-control" name="category_name" id="category_id" onchange="load_subcat()">
<option>Choose One</option>
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Subcategory Name:</label>
<div class="col-sm-10">
<select class="form-control" name="subcategory_id" id="subcat_id" onchange="load_product()">
<option>Choose One</option>
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Product Name:</label>
<div class="col-sm-10">
<select class="form-control" name="product_name" id="product_id">
<option>Choose One</option>
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">File Upload</label>
<div class="col-sm-10">
<iframe src="file_color_upload.jsp" width="450px" height="300px">
<input type="hidden" name="mode" value="1"/> 
</iframe>

</div>
</div>


<div class="form-group">
<label class="col-sm-2 control-label">Product Colour:</label>
<div class="col-sm-10">
<input type="color" name="color">

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