<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="images/favicon.png" type="image/png">

<title>Click-O-Business - Add City</title>

<link href="${pageContext.request.contextPath}/Admin/css/style.default.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->

<script>
  function loadState()
	{
		var countryId=document.getElementById("countryId");
		
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
					
					createOption.value=jsonObj[i].stateId;
					createOption.text=jsonObj[i].stateName;
					
					document.cityForm.stateId.options.add(createOption);
					
				}
			}
		}

		xmlhttp.open("get", "${pageContext.request.contextPath}/CityController?flag=loadState&countryId="+countryId.value, true);
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
		var removeState=document.cityForm.stateId.options.length;
		for(i=removeState ; i>0 ; i-- )
		{
			document.cityForm.stateId.remove(i);
		}
	}
</script>

</head>

<body>

	<!-- Preloader -->
	<div id="preloader">
		<div id="status">
			<i class="fa fa-spinner fa-spin"></i>
		</div>
	</div>

	<section> <jsp:include page="Menu.jsp"></jsp:include>

	<div class="mainpanel">

		<jsp:include page="Header.jsp"></jsp:include>

		<div class="pageheader">
			<h2>
				<i class="fa fa-pencil"></i> Manage City <!-- <span>Subtitle
					goes here...</span> -->
			</h2>
			<div class="breadcrumb-wrapper">
				<span class="label">You are here:</span>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/Admin/Index.jsp">Click-O-Business</a></li>
					<!-- <li><a href="general-forms.html">Forms</a></li> -->
					<li class="active">Add City</li>
				</ol>
			</div>
		</div>

		<div class="contentpanel">

			<div class="row">

				<div class="col-md-12">
					<form id="basicForm" action="${pageContext.request.contextPath}/CityController" name="cityForm" method="post" class="form-horizontal">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="panel-btns">
									<a href="" class="panel-close">&times;</a> <a href=""
										class="minimize">&minus;</a>
								</div>
								<h4 class="panel-title">Add City</h4>
								<p>Please provide All Required Field.</p>
							</div>
							<div class="panel-body">
								<div class="form-group">
									<label class="col-sm-2 control-label">Country Name <span
										class="asterisk">*</span></label>
									<div class="col-sm-6">
										<select  name="countryId" id="countryId" class="form-control" onchange="loadState()" required="">
											<option>Choose One</option>
											<c:forEach items="${sessionScope.country_list }" var="i">
												<option value="${i.countryId }">${i.countryName }</option>
											</c:forEach>
										</select> <label class="error" for="fruits"></label>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">State Name <span
										class="asterisk">*</span></label>
									<div class="col-sm-6">
										<select name="stateId" id="state" class="form-control" required="">
											<option value="">Choose One</option>
										</select> <label class="error" for="fruits"></label>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-2 control-label">City Name
										<span class="asterisk">*</span>
									</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" name="cityName" id="cityName"
											placeholder="Type City name..." required="">
									</div>
									
								</div>

								<div class="form-group">
									<label class="col-sm-2 control-label">Description <span class="asterisk">*</span>
									</label>
									<div class="col-sm-6">
										<textarea rows="5" class="form-control" name="cityDesc" id="cityDesc"
											placeholder="Type City description..." required=""></textarea>
									</div>
								</div>
							</div>
							<input type="hidden" name="flag" value="insertCity">
							<!-- panel-body -->
							<div class="panel-footer">
								<div class="row">
									<div class="col-sm-6 col-sm-offset-4">
										<button class="btn btn-primary">Submit</button>
										<button type="reset" class="btn btn-default">Reset</button>
									</div>
								</div>
							</div>

						</div>
						<!-- panel -->
					</form>


				</div>
				<!-- col-md-6 -->

			</div>
			<!--row -->

		</div>
		<!-- contentpanel -->

	</div>
	<!-- mainpanel -->

	<jsp:include page="Online.jsp"></jsp:include>

	<!-- rightpanel --> </section>


	<script src="${pageContext.request.contextPath}/Admin/js/jquery-1.10.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/modernizr.min.js"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/jquery.sparkline.min.js"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/toggles.min.js"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/retina.min.js"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/jquery.cookies.js"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/chosen.jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/jquery.validate.min.js"></script>

	<script src="${pageContext.request.contextPath}/Admin/js/custom.js"></script>

	<script>
			jQuery(document).ready(
				function() {

					// Basic Form
					jQuery("#basicForm").validate(
							{
								highlight : function(element) {
									jQuery(element).closest('.form-group')
											.removeClass('has-success')
											.addClass('has-error');
								},
								success : function(element) {
									jQuery(element).closest('.form-group')
											.removeClass('has-error');
								}
							});

					// Error Message In One Container
					jQuery("#basicForm2").validate({
						errorLabelContainer : jQuery("#basicForm2 div.error")
					});

					// With Checkboxes and Radio Buttons
					jQuery("#basicForm3").validate(
							{
								highlight : function(element) {
									jQuery(element).closest('.form-group')
											.removeClass('has-success')
											.addClass('has-error');
								},
								success : function(element) {
									jQuery(element).closest('.form-group')
											.removeClass('has-error');
								}
							});

					// Validation with select boxes
					jQuery("#basicForm4").validate(
							{
								highlight : function(element) {
									jQuery(element).closest('.form-group')
											.removeClass('has-success')
											.addClass('has-error');
								},
								success : function(element) {
									jQuery(element).closest('.form-group')
											.removeClass('has-error');
								}
							});
					
				jQuery(".chosen-select").chosen({'width':'100%','white-space':'nowrap'});
				});
	</script>

</body>
</html>
