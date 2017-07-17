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

		xmlhttp.open("get", "${pageContext.request.contextPath}/DClothServlet?flag=load_subcat&category_id="+category_id.value, true);
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
		for(i=removeState ; i>=0 ; i-- )
		{
			document.subcategoryForm.subcategory_id.remove(i);
		}
	}
	
	function removeAllCategory()
	{
		var removeState=document.subcategoryForm.category_id.options.length;
		for(i=removeState ; i>=0 ; i-- )
		{
			document.subcategoryForm.category_id.remove(i);
		}
	}
	
	function enableField()
	{
		var  material=document.getElementById("material_id");
		var  sleeve=document.getElementById("sleeve_id");
		var  neck=document.getElementById("neck_id");
		var  length=document.getElementById("length_id");

		
		sleeve.style.display="";
		material.style.display="";
		neck.style.display="";
		length.style.display="";
		
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

		xmlhttp.open("get", "${pageContext.request.contextPath}/DClothServlet?flag=load_cat&item_type_id=Cloths", true);
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
		var  material=document.getElementById("material_id");
		var  sleeve=document.getElementById("sleeve_id");
		var  neck=document.getElementById("neck_id");
		var  length=document.getElementById("length_id");
		
		sleeve.style.display="none";
		material.style.display="none";
		neck.style.display="none";
		length.style.display="none";
		
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

		xmlhttp.open("get", "${pageContext.request.contextPath}/DClothServlet?flag=load_cat_ac&item_type_id=Accessories", true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */

	}
	function enableColorIframe()
	{
		var  color_iframe=document.getElementById("color_iframe");
		color_iframe.style.display="";
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
<form class="form-horizontal" role="form" name="subcategoryForm" method="post" action="<%=request.getContextPath()%>/DClothServlet?flag=insert">

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
<select class="form-control" name="subcategory_id">
<option>Choose One</option>
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Product Name:</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="product_name">
</div>
</div>

<div class="form-group" style="display: none" id="length_id">
<label class="col-sm-2 control-label">Length:</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="length">
</div>
</div>

<div class="form-group" style="display: none" id="material_id">
<label class="col-sm-2 control-label">Material:</label>
<div class="col-sm-10">
<select class="form-control" name="material">
<option value="">Choose One</option>
<c:forEach items="${sessionScope.material }" var="i">
	<option value="${i.material_id }">${i.material}</option>
</c:forEach>
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Price:</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="price" id="price_id">
</div>
</div>

<%-- <div class="form-group">
<label class="col-sm-2 control-label">Product Colour:</label>
<div class="col-sm-10">
<c:forEach items="${sessionScope.colour }" var="i">
<div class="checkbox" style="float:left;width:100px">
<label>
<input type="checkbox" value="${i.colour_id }" name="color_iframe_id">${i.colour}</label>
</div>
</c:forEach>
<a style="color:blue;margin-top:150px"  onClick="enableColorIframe()"><u>Add Color</u></a>
<iframe src="color_iframe.jsp" width="450px" height="150px" id="color_iframe" style="display: none">
<input type="hidden" name="mode" value="1"/> 
</iframe>

</div>
</div>
 --%>

<!-- <div class="form-group">
<label class="col-sm-2 control-label">Product Colour:</label>
<div class="col-sm-10">
<select class="form-control" name="colour" id="colour_id">
<option value="">Choose One</option>
<c:forEach items="${sessionScope.colour }" var="i">
 <option value="${i.colour_id }">${i.colour}</option> 
	
</c:forEach>
</select>
</div>
</div> -->

<div class="form-group" style="display: none" id="neck_id">
<label class="col-sm-2 control-label">Neck:</label>
<div class="col-sm-10">
<select class="form-control" name="neck">
<option value="">Choose One</option>
<c:forEach items="${sessionScope.neck }" var="i">
	<option value="${i.neck_id }">${i.neck_type}</option>
</c:forEach>
</select>
</div>
</div>

<div class="form-group" style="display: none" id="sleeve_id">
<label class="col-sm-2 control-label">Sleeves:</label>
<div class="col-sm-10">
<select class="form-control" name="sleeve">
<option value="">Choose One</option>
<c:forEach items="${sessionScope.sleeve }" var="i">
	<option value="${i.sleeves_id }">${i.sleeves_type}</option>
</c:forEach></select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Product Description:</label>
<div class="col-sm-10">
<textarea class="form-control" rows="3" name="product_description" ></textarea>
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