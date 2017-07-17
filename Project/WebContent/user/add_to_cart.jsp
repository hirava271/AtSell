<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Umenu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr" class="ltr">
<head>
<meta charset="utf-8" />
<title>Order - Bella store</title>
<meta name="generator" content="PrestaShop" />
<meta name="robots" content="index,follow" />
<meta name="viewport"
	content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<link rel="icon" type="image/vnd.microsoft.icon"
	href="/prestabrain/bella/cyan/img/favicon.ico?1410257037" />
<link rel="shortcut icon" type="image/x-icon"
	href="/prestabrain/bella/cyan/img/favicon.ico?1410257037" />
<link rel="stylesheet" href="css/global-cyan.css" id="global-style"
	type="text/css" media="all" />
<link rel="stylesheet" href="css/footable.core.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/jquery.bxslider.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/uniform.default.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/jquery.fancybox.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/addresses.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/order-opc.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blockcart.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blockcategories.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blockcurrencies.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blocklanguages.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blockcontact.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blockcontactinfos.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blocknewsletter.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blocktags.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blockuserinfo.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/ptsblockmanufacturer.css"
	type="text/css" media="all" />
<link rel="stylesheet" href="css/hooks.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/ptsmegamenu.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/hooks.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/blockleoblogs.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/ptsblockrelatedproducts.css"
	type="text/css" media="all" />
<link rel="stylesheet" href="css/panel.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/colorpicker.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/cyan.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/typo.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/productcomments.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blockwishlist.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/jquery.autocomplete.css"
	type="text/css" media="all" />
<link rel="stylesheet" href="css/product_list.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/ptsblocksearch.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/ptsinfiniteproducts.css"
	type="text/css" media="all" />
<script type="text/javascript">

function minus(id,x)
{
	var qty=document.getElementById("qty"+id);
	var priceid=document.getElementById("prizeid"+id);
	var total_product=document.getElementById("total_product");
	 
	var total_price=total_product.value;
	var i=Number(qty.value);
	var total=Number(priceid.value);
	i=i-1;
	
	total_price=total_price-x;
	total=total-x;
	qty.value=i;
	
	priceid.value=total;
	total_product.value=total_price;
	}
function plus_qty(id,x)
{
	
	var qty=document.getElementById("qty"+id);
	var priceid=document.getElementById("prizeid"+id);
	alert("plus");
	var total_product=document.getElementById("total_product");
	
	alert(total_product.value);
	 
	var total_price=Number(total_product.value);
	var i=Number(qty.value);
	var total=Number(priceid.value);
	i=i+1;
	
	total_price=total_price+x;
	total=total+x;
	qty.value=i;
	
	priceid.value=total;
	total_product.value=total_price;
	}
	
	function change_flag()
	{
		var flg=document.getElementById("hdnsbmit");
		flg.value="checkout";
	}
</script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.js"></script>
<script type="text/javascript" src="js/tools.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/10-bootstrap.min.js"></script>
<script type="text/javascript" src="js/15-jquery.total-storage.min.js"></script>
<script type="text/javascript" src="js/15-jquery.uniform-modified.js"></script>
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<script type="text/javascript" src="js/products-comparison.js"></script>
<script type="text/javascript" src="js/order-address.js"></script>
<script type="text/javascript" src="js/jquery.typewatch.js"></script>
<!-- <script type="text/javascript" src="js/cart-summary.js"></script> -->
<script type="text/javascript" src="js/order-opc.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo.js"></script>
<script type="text/javascript" src="js/vatManagement.js"></script>
<script type="text/javascript" src="js/statesManagement.js"></script>
<script type="text/javascript" src="js/order-carrier.js"></script>
<script type="text/javascript" src="js/validate.js"></script>
<script type="text/javascript" src="js/ajax-cart.js"></script>
<script type="text/javascript" src="js/jquery.serialScroll.js"></script>
<script type="text/javascript" src="js/jquery.bxslider.js"></script>
<script type="text/javascript" src="js/treeManagement.js"></script>
<script type="text/javascript" src="js/blocknewsletter.js"></script>
<script type="text/javascript" src="js/live_configurator.js"></script>
<script type="text/javascript" src="js/colorpicker.js"></script>
<script type="text/javascript" src="js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript"
	src="js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="js/ajax-wishlist.js"></script>
<script type="text/javascript" src="js/jquery.autocomplete.js"></script>
<script type="text/javascript" src="js/script.js"></script>


<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->
</head>
<body id="order-opc"
	class="keep-header order-opc hide-left-column hide-right-column lang_en layout-fullwidth"
	itemscope="" itemtype="http://schema.org/WebPage">
	<section class="banner hidden-xs hidden-sm">
	<div class="container"></div>
	</section>

	<div id="page">
		<div class="clearfix"></div>
		<section id="columns" class="offcanvas-siderbars"> <!-- Breadcrumb -->
		<div class=" breadcrumb">
			<div class="container">
				<a class="home" href="http://pavodemo.com/prestabrain/bella/cyan/"
					title="Return to Home"><i class="icon-home"></i> Home</a> <span
					class="navigation-pipe"></span> <span class="navigation_page">Your
					shopping cart</span>
			</div>
		</div>
		<!-- /Breadcrumb -->
		<div class="container main-content">
			<div class="row">
				<div id="center_column"
					class="center_column col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div id="content">
						<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


						<!-- Shopping Cart -->


						<h1 id="cart_title" class="page-heading">
							Shopping-cart summary <span class="heading-counter">Your
								shopping cart contains: <span id="summary_products_quantity"><c:out
										value="${sessionScope.list_size }"></c:out> </span>
							</span>
						</h1>










						<p style="display: none" id="emptyCartWarning"
							class="alert alert-warning">Your shopping cart is empty.</p>
						<div class="cart_last_product">
							<div class="cart_last_product_header">
								<div class="left">Last product added</div>
							</div>
							<a class="cart_last_product_img"
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=17&amp;controller=product&amp;id_lang=1">
								<img
								src="http://pavodemo.com/prestabrain/bella/cyan/img/p/3/6/5/365-small_default.jpg"
								alt="Integer velit mauris" />
							</a>
							<div class="cart_last_product_content">
								<p class="product-name">
									<a
										href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=17&amp;controller=product&amp;id_lang=1#/size-s/color-blue">
										Integer velit mauris </a>
								</p>
								<small> <a
									href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=17&amp;controller=product&amp;id_lang=1#/size-s/color-blue">
										Color : Blue, Size : S </a>
								</small>
							</div>
						</div>
						<form action="<%=request.getContextPath()%>/UAddToCartServlet" method="post">
						<input type="hidden" name="flag" id="hdnsbmit" value="insert">
						<div id="order-detail-content"
							class="table_block table-responsive">
							<table id="cart_summary"
								class="table table-bordered stock-management-off">
								<thead>
									<tr>
										<th class="cart_product first_item">Product</th>
										<th class="cart_description item">Description</th>
										<th class="cart_description item">Color</th>
										<th class="cart_description item">Size</th>
										<th class="cart_unit item">Unit price</th>
										<th class="cart_quantity item">Qty</th>
										<th class="cart_total item">Total</th>
										<th class="cart_delete last_item">&nbsp;</th>
									</tr>

								</thead>
								<!-- <tfoot>
									<tr class="cart_total_price">
										<td rowspan="3" colspan="3" id="cart_voucher"
											class="cart_voucher"></td>
										<td colspan="2" class="text-right">Total products</td>
										<td colspan="2" class="price" id="total_product">$66.50</td>
									</tr>
									<tr style="display: none;">
										<td colspan="3" class="text-right">Total gift-wrapping
											cost:</td>
										<td colspan="2" class="price-discount price"
											id="total_wrapping">$0.00</td>
									</tr>
									<tr class="cart_total_delivery">
										<td colspan="2" class="text-right">Total shipping</td>
										<td colspan="2" class="price" id="total_shipping">$2.00</td>
									</tr>
									<tr class="cart_total_voucher" style="display: none">
										<td colspan="2" class="text-right">Total vouchers</td>
										<td colspan="2" class="price-discount price"
											id="total_discount">$0.00</td>
									</tr>
									<tr class="cart_total_price">
										<td colspan="2" class="total_price_container text-right">
											<span>Total</span>
										</td>
										<td colspan="2" class="price" id="total_price_container">
											<span id="total_price">$68.50</span>
										</td>
									</tr>
								</tfoot> -->
								<tbody>
								<%int cnt=1; %>
								<c:if test="${not empty sessionScope.product_data_db}">
								
								<c:set var="totalprice" value="0"></c:set>
									<c:forEach items="${sessionScope.product_data_db }" var="i"
										varStatus="ii">
									<c:set scope="session" var="cart_mst_id" value="${i.cartMstVOObj.cart_mst_id }"></c:set>
										
										<c:set var="totalprice" value="${totalprice + i.price }"></c:set>
										
																				<tr id="product_15_70_0_0"
											class="cart_item first_item address_0 odd">
											<td class="cart_product" ><a
												href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=15&amp;controller=product&amp;id_lang=1#/size-one_size/color-green"><img
													src="<%=request.getContextPath() %>/doc/${i.path}"
													alt="Aliquam ac lectus" width="80" height="100" /></a>
													</td>
											<td class="cart_description" style="width:200px">
											<input type="hidden" name="product_id" value="${i.cloth_id }">
												<input type="text" class="product-name" name="product_name" value="${i.product_name }" style="border: 0px" >
											</td>
											<td class="cart_unit">
											<input type="hidden" name="product_color" value="#${i.color_code}">
												<div
													style="height: 25px; width: 25px; background: #${i.color_code}">
											
												</div>

											</td>

											<td class="cart_unit">
											<input type="hidden" name="product_size" value="${i.size }">
											<small> ${i.size }</small></td>

											<td class="cart_unit" data-title="Unit price"><span
												class="price" id="product_price_15_70_0"> <span
													class="price special-price">${i.price }</span>
											</span>
											<input type="hidden" name="product_price" value="${i.price }">
											</td>

											<td class="cart_quantity text-center"><input
												type="hidden" value="1" name="quantity_15_70_0_0_hidden" />
												<input size="2" type="text" autocomplete="off"
												class="cart_quantity_input form-control grey" value="${i.quantity}" name="qty_name"
												id="qty<%=cnt %>"/>
												<div class="cart_quantity_button clearfix">
													<a rel="nofollow" class="cart_quantity_down button-minus"
														id="cart_quantity_down_15_70_0_0" title="Subtract"> <span><i
															class="icon-minus"
															onclick="minus(<%=cnt%>,${i.price})"></i></span>
													</a> <a rel="nofollow" class="cart_quantity_up button-plus"
														id="cart_quantity_up_15_70_0_0" title="Add" onclick="plus_qty(<%=cnt%>,${i.price})"><span><i
															class="icon-plus"
															></i></span></a>
												</div></td>
											<td class="cart_total" data-title="Total"><input
												type="text" class="price" id="prizeid<%=cnt%>"
												value=${i.price} style="border: 0px"></td>
											<td class="cart_delete text-center" data-title="Delete">
												<div>
													<a  title="Delete"
														href="<%=request.getContextPath()%>/UProductSelectionServlet?flag=delete&id=${ii.count}"><i
														class="icon-trash-o">DELETE</i></a>
												</div>
											</td>
										</tr>
									<%cnt++; %>
									</c:forEach>
									</c:if>
									
									
								<c:if test="${not empty sessionScope.product_data}">
								
									<c:set var="totalprice" value="${totalprice}"></c:set>
									<c:forEach items="${sessionScope.product_data }" var="i"
										varStatus="ii">
									
										
										<c:set var="totalprice" value="${totalprice + i.price }"></c:set>
										
																				<tr id="product_15_70_0_0"
											class="cart_item first_item address_0 odd">
											<td class="cart_product" ><a
												href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=15&amp;controller=product&amp;id_lang=1#/size-one_size/color-green"><img
													src="<%=request.getContextPath() %>/doc/${i.path}"
													alt="Aliquam ac lectus" width="80" height="100" /></a>
													</td>
											<td class="cart_description" style="width:200px">
											<input type="hidden" name="product_id" value="${i.cloth_id }">
												<input type="text" class="product-name" name="product_name" value="${i.product_name }" style="border: 0px" >
											</td>
											<td class="cart_unit">
											<input type="hidden" name="product_color" value="#${i.color_code}">
												<div
													style="height: 25px; width: 25px; background: #${i.color_code}">
											
												</div>

											</td>

											<td class="cart_unit">
											<input type="hidden" name="product_size" value="${i.size }">
											<small> ${i.size }</small></td>

											<td class="cart_unit" data-title="Unit price"><span
												class="price" id="product_price_15_70_0"> <span
													class="price special-price">${i.price }</span>
											</span>
											<input type="hidden" name="product_price" value="${i.price }">
											</td>

											<td class="cart_quantity text-center"><input
												type="hidden" value="1" name="quantity_15_70_0_0_hidden" />
												<input size="2" type="text" autocomplete="off"
												class="cart_quantity_input form-control grey" value="1" name="qty_name"
												id="qty<%=cnt %>"/>
												<div class="cart_quantity_button clearfix">
													<a rel="nofollow" class="cart_quantity_down button-minus"
														id="cart_quantity_down_15_70_0_0" title="Subtract"> <span><i
															class="icon-minus"
															onclick="minus(<%=cnt%>,${i.price})"></i></span>
													</a> <a rel="nofollow" class="cart_quantity_up button-plus"
														id="cart_quantity_up_15_70_0_0" title="Add" onclick="plus_qty(<%=cnt%>,${i.price})"><span><i
															class="icon-plus"
															></i></span></a>
												</div></td>
											<td class="cart_total" data-title="Total"><input
												type="text" class="price" id="prizeid<%=cnt%>"
												value=${i.price} style="border: 0px"></td>
											<td class="cart_delete text-center" data-title="Delete">
												<div>
													<a  title="Delete"
														href="<%=request.getContextPath()%>/UProductSelectionServlet?flag=delete&id=${ii.count}"><i
														class="icon-trash-o">DELETE</i></a>
												</div>
											</td>
										</tr>
									<%cnt++; %>
									</c:forEach>
									</c:if>

								</tbody>
								<tfoot>
									<tr class="cart_total_price">
										<td rowspan="3" colspan="3" id="cart_voucher"
											class="cart_voucher"></td>
										<td colspan="2" class="text-right">Total products</td>
										<td colspan="2" class="price" id="total_product11"><input type="text" id="total_product" value=${totalprice} style="border: 0px"></td>
									</tr>
									<!-- <tr style="display: none;">
										<td colspan="3" class="text-right">Total gift-wrapping
											cost:</td>
										<td colspan="2" class="price-discount price"
											id="total_wrapping">$0.00</td>
									</tr> -->
									<tr class="cart_total_delivery">
										<td colspan="2" class="text-right">Total shipping</td>
										<td colspan="2" class="price" id="total_shipping">0.00</td>
									</tr>
									<!-- <tr class="cart_total_voucher" style="display: none">
										<td colspan="2" class="text-right">Total vouchers</td>
										<td colspan="2" class="price-discount price"
											id="total_discount">$0.00</td>
									</tr> -->
									<tr class="cart_total_price">
										<td colspan="2" class="total_price_container text-right">
											<span>Total</span>
										</td>
										<td colspan="2" class="price" id="total_price_container">
											<span id="total_price">${totalprice}</span>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
						<!-- end order-detail-content -->



<input type="hidden" name="cart_type" value="add_to_cart">
						<div id="HOOK_SHOPPING_CART"></div>
						<p class="cart_navigation clearfix">
							<a href="<%=request.getContextPath()%>/UMenuServlet"
								class="btn button-small pull-left" title="Continue shopping">
								<i class="icon-chevron-left"></i>Continue shopping
							</a> <button style="margin-left: 700px"
								name="Submit" class="btn btn-outline button"> <span>Save
									to cart</span></button> 
									<button style="margin-left: 50px"
								name="Submit" class="btn btn-outline button" onclick="change_flag()"> <span>Checkout
							</span></button>
						</p>

						</form>
						<!-- END Create account / Guest account / Login block -->
						<!-- Carrier -->

					</div>
				</div>
				<!-- #center_column -->

			</div>
			<!-- #columns -->
		</div>

		</section>
		<!-- .columns-container -->

		<!-- Bottom-->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>