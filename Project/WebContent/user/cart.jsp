<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7 lte9 lte8 lte7" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 lte9 lte8" lang="en-US">	<![endif]-->
<!--[if IE 9]><html class="ie ie9 lte9" lang="en-US"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html class="noIE" lang="en-US"><!--<![endif]-->

<!-- Mirrored from themina.net/themes/gfashion-html/cart.php by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Oct 2014 19:14:20 GMT -->
<head>
	<meta charset="UTF-8" />
	<title>GFashion - Responsive eCommerce HTML Template</title>
	<meta name="description" content="GFashion is Responsive And Retina Ready HTML eCommerce Template that is ideal to set up your online shopping website easily."/>
	<meta name="keywords" content="html, html theme, html template, responsive, mobile friendly, shop theme, shopping, ecommerce, ecommerce theme, ecommerce template, shopping template, shopping html template, bootstrap theme, bootstrap template, bootstrap 3, retina theme, template"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<!-- Favorite Icons -->
	<link rel="icon" href="img/favicon/favicon.jsp" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/favicon/apple-touch-icon-144x144-precomposed.jsp">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/favicon/apple-touch-icon-72x72-precomposed.jsp">
	<link rel="apple-touch-icon-precomposed" href="img/favicon/apple-touch-icon-precomposed.jsp">
	<!-- // Favorite Icons -->
	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
	
	<!-- GENERAL CSS FILES -->
	<link rel="stylesheet" href="css/minified.css">
	<!-- // GENERAL CSS FILES -->
	
	<!--[if IE 8]>
		<script src="js/respond.min.js"></script>
		<script src="js/selectivizr-min.js"></script>
	<![endif]-->
	<!--
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	-->
	<script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>');</script>
	<script src="js/modernizr.min.js"></script>	
	<!-- PARTICULAR PAGES CSS FILES -->
	<link rel="stylesheet" href="css/innerpage.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/owl.theme.css">
	<!-- // PARTICULAR PAGES CSS FILES -->
	<link rel="stylesheet" href="css/responsive.css">
	<script>
	function qty(x)
	{   var temp=1;
	    
	 	var id=document.getElementById("qtyid"+x);
	 	
	 	var priceid=document.getElementById("prizeid"+x);
	 	 
	 	
	 	var temp1=id.value-temp;
	 	var temp2=temp1*priceid.value
	 	
	 	document.getElementById("subtotal"+x).innerHTML=temp2;
	 	
	}
	function qtyup(y)
	{   var temp=1;
	    
	 	var id=document.getElementById("qtyid"+y);
	 	var priceid=document.getElementById("prizeid"+y);
	 	
	 	var temp2=id.value;
	 	var temp1= +temp + +temp2;
	 	var temp3=temp1*priceid.value
	 	
	 	document.getElementById("subtotal"+y).innerHTML=temp3;
	 	
	 	
	 	
	}</script>
</head>
<body>
			
	<!-- PAGE WRAPPER -->
<div id="page-wrapper">

	<!-- SITE HEADER -->
   <header id="site-header" role="banner">
		<!-- HEADER TOP -->
		<%@include file="Headertop.jsp" %>
		<!-- // HEADER TOP -->
		<!-- MAIN HEADER -->
		<div class="main-header-wrapper">
			<div class="container">
				<div class="main-header">
					<!-- CURRENCY / LANGUAGE / USER MENU -->
					<%@include file="UserRelatedMenu.jsp" %>
					<!-- // CURRENCY / LANGUAGE / USER MENU -->
					<%@include file="SiteLogo.jsp" %>
					<!-- // SITE LOGO -->
					<!-- SITE LOGO -->
					<!-- SITE NAVIGATION MENU -->
                    <%@include file="main-menu.jsp"%>
					<!-- // SITE NAVIGATION MENU -->
				</div>
			</div>
		</div>
		<!-- // MAIN HEADER -->
	</header>
	
	<!-- // SITE HEADER -->
	
		<!-- BREADCRUMB -->
		<div class="breadcrumb-container">
			<div class="container">
				<div class="relative">
					<ul class="bc unstyled clearfix">
						<li><a href="#">Home</a></li>
						<li class="active">Shopping Cart</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // BREADCRUMB -->
		
		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main">
				
				
						
						
						
			<section class="section">
			<form action="<%=request.getContextPath()%>/CartController" method="post"> 
						<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
				<div class="container">
					
					<table class="tbl-cart">
						<thead>
							<tr>
								<th>Product Name</th>
								<th style="width: 15%;">Unit Price</th>
								<th style="width: 15%;">QTY</th>
								<th class="hidden-xs" style="width: 15%;">Sub Total</th>
								<th class="hidden-xs" style="width: 10%;"></th>
							</tr>
						</thead>
						<tbody>
						<% int count=1;
						%>
					<c:if test="${not empty sessionScope.numberofcartitems}"> 	<c:forEach items="${sessionScope.numberofcartitems}" var="i">
						
						   <tr class="hide empty-cart">
								<td colspan="5">
									It seems your shopping cart is empty, try looking our <a href="products.jsp">products</a>.
								</td>
							</tr>
							<tr>
                             	<td>
                             	    <input type="hidden" value="${i.cartimageid.fileId}" name="img<%=count%>">
                             	    <input type="hidden" value="${i.cartproductid.productId}" name="productid<%=count%>">
									<a class="entry-thumbnail" href="../doc/${i.cartimageid.upload}" data-toggle="lightbox">
										<img src="../doc/${i.cartimageid.upload}" alt="" />
									</a>
									<a class="entry-title" href="product.jsp" name="productname">${i.cartproductid.productName}</a>
								</td>
							 	
							 <td><input type="hidden" id="prizeid<%=count%>" class="unit-price" name="productprize<%=count%>" value="${i.cartproductid.productPrize}">${i.cartproductid.productPrize }</td>
							<td>
									<div class="qty-btn-group">
									<button type="button" class="down" onclick="qty(<%=count%>)"><i class="iconfont-caret-down inline-middle"></i></button>
										<input type="text" value="${i.quantity}" name="qtyid<%=count %>" id="qtyid<%=count%>" />
								<button type="button" class="up" onclick="qtyup(<%=count%>)"><i class="iconfont-caret-up inline-middle"></i></button>
									</div>
								</td>
								<td><div id="subtotal<%=count%>" value="subtotal" name="subtotal<%=count%>"></div></td>
							  </tr>
							 <%-- <%HttpSession session1=request.getSession();
							    session1.setAttribute("count",count);%> --%>
							  <%=count++%>
							
			</c:forEach>
			</c:if>
					<c:if test="${not empty sessionScope.numberofitems}"> 
						<c:forEach items="${sessionScope.numberofitems}" var="i">
						
						   <tr class="hide empty-cart"> 
								<td colspan="5">
									It seems your shopping cart is empty, try looking our <a href="products.jsp">products</a>.
								</td>
							</tr>
							<tr>
                             	<td>
                             	    <input type="hidden" value="${i.fileId}" name="img<%=count%>">
                             	    <input type="hidden" value="${i.productId.productId}" name="productid<%=count%>">
									<a class="entry-thumbnail" href="../doc/${i.upload}" data-toggle="lightbox">
										<img src="../doc/${i.upload}" alt="" />
									</a>
									<a class="entry-title" href="product.jsp" name="productname">${i.productId.productName}</a>
								</td>
							 	
							 <td><input type="hidden" id="prizeid<%=count%>" class="unit-price" name="productprize<%=count%>" value="${i.productId.productPrize}">${i.productId.productPrize }</td>
							<td>
									<div class="qty-btn-group">
										<button type="button" class="down" onclick="qty(<%=count%>)"><i class="iconfont-caret-down inline-middle"></i></button>
										<input type="text" value="1" name="qtyid<%=count %>" id="qtyid<%=count%>" />
										<button type="button" class="up" onclick="qtyup(<%=count%>)"><i class="iconfont-caret-up inline-middle"></i></button>
									</div>
								</td>
								<td><div id="subtotal<%=count%>" value="subtotal" name="subtotal<%=count%>"></div></td>
							  </tr>
							 <%HttpSession session1=request.getSession();
							    session1.setAttribute("count",count);%>
							  <%=count++%>
							 
			</c:forEach>	</c:if>			
							 
						</tbody>
					</table>
					
					<div class="pull-left coupon m-b">
						<div class="input-group">
							<label for="apply-coupon" class="placeholder">Enter Your Coupon Code</label>
							<input type="text" id="apply-coupon" name="coupon" class="form-control"  />
							<span class="input-group-btn">
								<button class="btn btn-primary">Apply Coupon</button>
							</span>
						</div>
					</div>
					<input type="hidden" name="carttype" value="order">
					<input type="hidden" name="flag" value="savetocart">
					<div class="shopcart-total clearfix text-center">
					  <input type="submit" class="btn btn-round btn-default uppercase" value="Save To Cart">
					</div>
					
					<div class="shopcart-total pull-right clearfix">
						<div class="cart-subtotal text-xs m-b-sm clearfix">
							<span class="pull-left">Sub Total:</span>
							<span class="pull-right text-bold row-total">$${i.productId.productPrize}</span>
						</div>
						<div class="cart-total text-bold m-b-lg clearfix">
							<span class="pull-left">Grand Total:</span>
							<span class="pull-right text-bold row-total">$${i.productId.productPrize}</span>
						</div>
						<div class="text-center">
						<%int count=1;%>
						 <c:forEach items="${sessionScope.numberofitems}" var="i">
							<a href="<%=request.getContextPath() %>/CartController?flag=proceedtocheckout&productprize=${i.productId.productPrize}&" class="btn btn-round btn-default uppercase">PROCEED TO CHECKOUT</a>
						    </c:forEach>	
						   <a class="btn btn-round btn-default uppercase" href="index.jsp">Continue Shopping</a>
						</div>
					</div>
					
				</div>
				</form>
			</section>
			

			<!-- RELATED PRODUCTS -->
			<section class="section visible-items-4">
				<div class="container">
					<div class="row">
						<header class="section-header clearfix col-sm-offset-3 col-sm-6">
							<h3 class="section-title">You may be interested in</h3>
							<p class="section-teaser">Lorem ipsum dolor sit amet, consectetur adipiscing elit ac lobortis lacus</p>
						</header>
						
						<div class="clearfix"></div>
						
						<!-- BEGIN CAROUSEL -->
						<div id="featured-products" class="add-cart" data-product=".product" data-thumbnail=".entry-media .thumb" data-title=".entry-title > a" data-url=".entry-title > a" data-price=".entry-price > .price">
						
							<div class="owl-controls clickable top">
								<div class="owl-buttons">
									<div class="owl-prev"><i class="iconfont-angle-left"></i></div>
									<div class="owl-next"><i class="iconfont-angle-right"></i></div>
								</div>
							</div>
							
							<div class="owl-carousel owl-theme" data-visible-items="4" data-navigation="true" data-lazyload="true">
								<div class="product" data-product-id="1">
									<div class="entry-media">
										<img data-src="images/women/basic/848051-0014_1_t.jpg" alt="" class="lazyOwl thumb" />
										<div class="hover">
											<a href="product.jsp" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<div class="circle ribbon ribbon-sale">Sale</div>
												</li>
												<li>
													<a href="images/women/basic/848051-0014_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="4.5" step="0.5" id="backing1" />
												<div class="rateit" data-rateit-backingfld="#backing1" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">Inceptos orci hac libero</a>
										</h5>
										<div class="entry-price">
											<s class="entry-discount">$ 350.00</s>
											<strong class="accent-color price">$ 250.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">+ Add to Wishlist</a>
											<a href="#" class="pull-right">+ Add to Compare</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="2">
									<div class="entry-media">
										<img data-src="images/women/basic/688086-0286_1_t.jpg" alt="" class="lazyOwl thumb" />
										<div class="hover">
											<a href="product.jsp" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<a href="images/women/basic/688086-0286_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart" data-><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="4" step="0.5" id="backing2" />
												<div class="rateit" data-rateit-backingfld="#backing2" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">Inceptos orci hac libero</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 350.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">+ Add to Wishlist</a>
											<a href="#" class="pull-right">+ Add to Compare</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="3">
									<div class="entry-media">
										<img data-src="images/women/basic/848099-0067_1_t.jpg" alt="" class="lazyOwl thumb" />
										<div class="hover">
											<a href="product.jsp" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<div class="circle ribbon ribbon-new">New</div>
												</li>
												<li>
													<a href="images/women/basic/848099-0067_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart" data-><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="3.5" step="0.5" id="backing3" />
												<div class="rateit" data-rateit-backingfld="#backing3" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">Inceptos orci hac libero</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 450.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">+ Add to Wishlist</a>
											<a href="#" class="pull-right">+ Add to Compare</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="4">
									<div class="entry-media">
										<img data-src="images/women/basic/589550-0014_1_t.jpg" alt="" class="lazyOwl thumb" />
										<div class="hover">
											<a href="product.jsp" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<a href="images/women/basic/589550-0014_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart" data-><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="5" step="0.5" id="backing4" />
												<div class="rateit" data-rateit-backingfld="#backing4" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">Inceptos orci hac libero</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 350.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">+ Add to Wishlist</a>
											<a href="#" class="pull-right">+ Add to Compare</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="5">
									<div class="entry-media">
										<img data-src="images/women/legging/104331-0014_1_t.jpg" alt="" class="lazyOwl thumb" />
										<div class="hover">
											<a href="product.jsp" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<div class="circle ribbon ribbon-sale">Sale</div>
												</li>
												<li>
													<a href="images/women/legging/104331-0014_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart" data-><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="4.5" step="0.5" id="backing5" />
												<div class="rateit" data-rateit-backingfld="#backing5" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">Inceptos orci hac libero</a>
										</h5>
										<div class="entry-price">
											<s class="entry-discount">$ 350.00</s>
											<strong class="accent-color price">$ 250.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">+ Add to Wishlist</a>
											<a href="#" class="pull-right">+ Add to Compare</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="6">
									<div class="entry-media">
										<img data-src="images/women/legging/714384-0014_1_t.jpg" alt="" class="lazyOwl thumb" />
										<div class="hover">
											<a href="product.jsp" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<a href="images/women/legging/714384-0014_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart" data-><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="4" step="0.5" id="backing6" />
												<div class="rateit" data-rateit-backingfld="#backing6" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">Inceptos orci hac libero</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 350.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">+ Add to Wishlist</a>
											<a href="#" class="pull-right">+ Add to Compare</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="7">
									<div class="entry-media">
										<img data-src="images/women/dress/256479-0014_1_t.jpg" alt="" class="lazyOwl thumb" />
										<div class="hover">
											<a href="product.jsp" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<div class="circle ribbon ribbon-new">New</div>
												</li>
												<li>
													<a href="images/women/dress/256479-0014_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart" data-><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="3.5" step="0.5" id="backing7" />
												<div class="rateit" data-rateit-backingfld="#backing7" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">Inceptos orci hac libero</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 450.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">+ Add to Wishlist</a>
											<a href="#" class="pull-right">+ Add to Compare</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="8">
									<div class="entry-media">
										<img data-src="images/women/dress/278638-0083_1_t.jpg" alt="" class="lazyOwl thumb" />
										<div class="hover">
											<a href="product.jsp" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<a href="images/women/dress/278638-0083_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart" data-><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="5" step="0.5" id="backing8" />
												<div class="rateit" data-rateit-backingfld="#backing8" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">Inceptos orci hac libero</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 350.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">+ Add to Wishlist</a>
											<a href="#" class="pull-right">+ Add to Compare</a>
										</div>
									</div>
								</div>
							
							</div>
								
						</div>
						<!-- // END CAROUSEL -->
						
					</div>
				</div>
			</section>
			<!-- // RELATED PRODUCTS -->
			
		</main>
		<!-- // SITE MAIN CONTENT -->
		
		<!-- SITE FOOTER -->
	<footer class="page-footer">
		
		<!-- WIDGET AREA -->
		<div class="widgets">
		
			<!-- FIRST ROW -->
			<div class="section">
				<div class="container">
					<div class="row">
						
						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-text">
								<h5 class="widget-title">our store</h5>
								<div class="widget-content">
									<p>Sed ornare cras donec litora integer curabitur orci, at nullam aliquam libero nam himenaeos, amet massa amet ut ipsum viverra mauris rhoncus neque aenean rhoncus gravida orci facilisis quis dui consectetur.</p>
									<p>Nisi porttitor inceptos consectetur donec orci, dui ipsum leo class gravida, felis primis viverra placerat.</p>
								</div>
							</section>
						</div>
						
						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-text">
								<h5 class="widget-title">Opening Time</h5>
								<div class="widget-content">
									<p>Monday-Friday:-------------------------9.00 to 18.00</p>
									<p>Saturday:--------------------------------10.00 to 16.00</p>
									<p>Sunday:----------------------------------10.00 to 16.00</p>
									<br/>
									<p>Every 30 day of month Lorem ipsum dolor sit amet, consectetur adipiscing.</p>
								</div>
							</section>
						</div>
						
						<div class="space40 visible-sm clearfix"></div>
						
						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-menu">
								<h5 class="widget-title">information</h5>
								<div class="widget-content">
									<ul class="menu iconed-menu unstyled">
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>Affiliate</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>Shipping</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>Shop support</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>Customer Service</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>Payment & Return</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>Terms & Conditions</a></li>
									</ul>
								</div>
							</section>
						</div>
						
						<div class="col-xs-12 col-sm-6 col-md-3">
							<iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fenvato&amp;&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden;" allowTransparency="true" width="100%"></iframe>
						</div>
						
					</div>
				</div>
			</div>
			<!-- // FIRST ROW -->
			
			<!-- SECOND ROW -->
			<div class="section">
				<div class="container">
					<div class="row">
						
						<div class="col-xs-12 col-sm-12 col-md-3">
							<section class="widget widget-menu">
								<h5 class="widget-title">Contact info</h5>
								<div class="widget-content">
									<ul class="menu iconed-list unstyled">
										<li>
											<span class="list-icon"><i class="round-icon iconfont-map-marker"></i></span>
											<div class="list-content">Lorem ipsum maecenas dapibus luctus euismod 133/2 New York City</div>
										</li>
										<li>
											<span class="list-icon"><i class="round-icon iconfont-phone"></i></span>
											<div class="list-content">(+00)1344356-675</div>
										</li>
										<li>
											<span class="list-icon"><i class="round-icon iconfont-envelope-alt"></i></span>
											<div class="list-content">support@themina.net</div>
										</li>
									</ul>
								</div>
							</section>
						</div>
						
						<div class="col-xs-12 col-sm-12 col-md-6">
							<section class="widget widget-ads">
								<div class="widget-content">
									<div class="center-xs">
										<div class="ads">
											<a href="#">
												<img src="images/demo/images-footer.jpg" alt="" />
											</a>
											<div class="ads-caption bottom-right">
												<a href="#" class="btn btn-default btn-round">
													<i class="round-icon iconfont-angle-right"></i>
													<span class="inline-middle">Show More</span>
												</a>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
						
						<div class="col-xs-12 col-sm-12 col-md-3">
							<section class="widget widget-subscription">
								<h5 class="widget-title">Newletter</h5>
								<div class="widget-content">
									<p>Subscribe to be the first to know about Sales, Events, and Exclusive Offers!</p>
									<form action="#" method="post">
										<div class="input-group">
											<label for="subscription-email" class="placeholder">Enter Your Email</label>
											<input type="email" id="subscription-email" name="email" class="form-control" required />
											<span class="input-group-btn">
												<button class="btn btn-primary">Subscribe</button>
											</span>
										</div>
									</form>
								</div>
							</section>
						</div>
						
					</div>
				</div>
			</div>
			<!-- // SECOND ROW -->
			
		</div>
		<!-- // WIDGET AREA -->
		
		<div class="footer-sub">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6">
						<div class="footer-links center-xs clearfix">
							<ul class="unstyled">
								<li><a href="#">Site Map</a></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">Work for us</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
						</div>
						<div class="space10"></div>
						<div class="copyright center-xs">
							<p>© 2013 Gfashion Demo Store. All Rights Reserved. <a href="http://visioniso.ir/" target="_blank">VisionISO</a></p>
						</div>
					</div>
					
					<div class="space40 visible-xs"></div>
					
					<div class="col-xs-12 col-sm-6 center-xs">
						<div class="pull-right">
							<div class="vmid">
								<span class="uppercase">Payment Accept&emsp;</span>
								<a href="#"><img src="img/visacard.png" alt="" width="40" /></a>
								<a href="#"><img src="img/mastercard.png" alt="" width="40" /></a>
								<a href="#"><img src="img/paypal.png" alt="" width="40" /></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</footer>
	<!-- // SITE FOOTER -->
		
</div>
<!-- // PAGE WRAPPER -->

<!-- Essential Javascripts -->
<script src="js/minified.min.js"></script>
<!-- // Essential Javascripts -->

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-27646173-3', 'themina.net');
  ga('send', 'pageview');

</script>
	<!-- Particular Page Javascripts -->
	<script src="js/products.js"></script>
	<script src="js/owl.carousel.js"></script>
	<!-- // Particular Page Javascripts -->
	
</body>

<!-- Mirrored from themina.net/themes/gfashion-html/cart.php by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Oct 2014 19:14:24 GMT -->
</html>