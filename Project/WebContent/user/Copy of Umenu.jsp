<%@page import="VO.subcategoryVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="VO.categoryVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="DAO.UmenuDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8" />
		<title>Bella store</title>
		<meta name="description" content="Shop powered by PrestaShop" />
		<meta name="generator" content="PrestaShop" />
		<meta name="robots" content="index,follow" />
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<link rel="icon" type="img/vnd.microsoft.icon" href="img/favicon.ico?1410257037" />
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico?1410257037" />
					<link rel="stylesheet" href="css/global-cyan.css"  id="global-style" type="text/css" media="all" />
								<link rel="stylesheet" href="css/footable.core.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/jquery.bxslider.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/uniform.default.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/jquery.fancybox.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/product_list.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/blockcart.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/blockcategories.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/blockcurrencies.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/blockfacebook.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/blocklanguages.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/blockcontact.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/blockcontactinfos.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/blocknewsletter.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/blocktags.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/blockuserinfo.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/homeslider.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/ptsblockmanufacturer.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/hooks.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/ptsmegamenu.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/hooks1.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/blockleoblogs.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/ptsblockrelatedproducts.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/panel.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/colorpicker.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/cyan.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/typo.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/productcomments.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/blockwishlist.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/jquery.autocomplete.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/ptsblocksearch.css" type="text/css" media="all" />
								<link rel="stylesheet" href="css/ptsinfiniteproducts.css" type="text/css" media="all" />
				<script type="text/javascript">
var CUSTOMIZE_TEXTFIELD = 1;
var FancyboxI18nClose = 'Close';
var FancyboxI18nNext = 'Next';
var FancyboxI18nPrev = 'Previous';
var added_to_wishlist = 'Added to your wishlist.';
var ajax_allowed = true;
var ajaxcontent_url = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?fc=module&module=ptsinfiniteproducts&controller=infinite&id_lang=1';
var ajaxsearch = true;
var baseDir = 'http://pavodemo.com/prestabrain/bella/cyan/';
var baseUri = 'http://pavodemo.com/prestabrain/bella/cyan/index.php';
var comparator_max_item = 3;
var comparedProductsIds = [];
var contentOnly = false;
var customizationIdMessage = 'Customization #';
var delete_txt = 'Delete';
var displayList = false;
var freeProductTranslation = 'Free!';
var freeShippingTranslation = 'Free shipping!';
var generated_date = 1414823706;
var homeslider_loop = 1;
var homeslider_pause = 3000;
var homeslider_speed = 500;
var homeslider_width = 779;
var id_lang = 1;
var img_dir = 'http://pavodemo.com/prestabrain/bella/cyan/themes/pf_bella/img/';
var instantsearch = false;
var isGuest = 0;
var isLogged = 0;
var loggin_required = 'You must be logged in to manage your wishlist.';
var max_item = 'You cannot add more than 3 product(s) to the product comparison';
var min_item = 'Please select at least one product';
var mywishlist_url = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?fc=module&module=blockwishlist&controller=mywishlist&id_lang=1';
var page_name = 'index';
var placeholder_blocknewsletter = 'Your e-mail';
var priceDisplayMethod = 1;
var priceDisplayPrecision = 2;
var ptsblocksearch_type = 'top';
var quickView = true;
var removingLinkText = 'remove this product from my cart';
var roundMode = 2;
var search_url = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search';
var static_token = 'fc8f4b82bcc66cb7501c4b081e23c92b';
var token = '89f3504c3b5030a19654a3f285e35596';
var usingSecureMode = false;
var wishlistProductsIds = false;
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
		<script type="text/javascript" src="js/ajax-cart.js"></script>
		<script type="text/javascript" src="js/jquery.scrollTo.js"></script>
		<script type="text/javascript" src="js/jquery.serialScroll.js"></script>
		<script type="text/javascript" src="js/jquery.bxslider.js"></script>
		<script type="text/javascript" src="js/treeManagement.js"></script>
		<script type="text/javascript" src="js/blockfacebook.js"></script>
		<script type="text/javascript" src="js/blocknewsletter.js"></script>
		<script type="text/javascript" src="js/homeslider.js"></script>
		<script type="text/javascript" src="js/live_configurator.js"></script>
		<script type="text/javascript" src="js/colorpicker.js"></script>
		<script type="text/javascript" src="js/jquery.themepunch.plugins.min.js"></script>
		<script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>
		<script type="text/javascript" src="js/ajax-wishlist.js"></script>
		<script type="text/javascript" src="js/jquery.autocomplete.js"></script>
		<script type="text/javascript" src="js/script.js"></script>
		<script type="text/javascript" src="js/index.js"></script>
			    
    
    
    


		<!--[if IE 8]>
		<script src="js/html5shiv.js"></script>
		<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
<body id="index"
	class="keep-header index hide-left-column hide-right-column lang_en layout-fullwidth"
	itemscope="" itemtype="http://schema.org/WebPage">
	<header id="header" class="header-v2">
	<div class="topbar">
		<div class="container">
			<div class="row">
				<div class="col-xs-2">
					<div id="logo-theme" class="logo-store">
						<div class="logo-theme">
							<a href="http://pavodemo.com/prestabrain/bella/cyan/"
								title="Bella store"> <img src="img/logo.png" alt="logo" />
							</a>
						</div>
					</div>
				</div>
				<div class="col-xs-10 position-inherit">
					<div class="top hidden-xs">
						<div
							class="ptsstaticontent_top staticontent-item-1 staticontent-item col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
							<div class="box block pts-custom " data-href="#">
								<div class="mask"></div>
								<a href="#" class="item-link"></a>

								<div class="block_content description" data-href="#">
									<div class="support">
										<div class="row">
											<div class="col-xs-4">
												<em class="icon icon-headphones">&nbsp;</em><span
													class="label hidden-sm hidden-xs">Call for support:</span>
												<span class="text text-theme-color">0123 - 456 - 789</span>
											</div>
											<div class="col-xs-4">
												<em class="icon icon-envelope-o">&nbsp;</em><span
													class="label hidden-sm hidden-xs">Email us: </span> <span
													class="text text-theme-color">SUPPORT@BELLA.COM</span>
											</div>
											<div class="col-xs-4">
												<em class="icon icon-comments-o ">&nbsp;</em><span
													class="label hidden-sm hidden-xs">Chat online skype:
												</span> <span class="text text-theme-color">SUPPORT_BELLA</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>



					</div>

					<div class="clearfix"></div>
					<div class="quick-access">
						<!-- Start quick Login -->
						<div class="btn-group focus hidden-xs hidden-sm">
							<div class="dropdown-toggle">
								<span class="btn-icon"></span> <span class="title hidden-xs">Quick
									Login</span>
							</div>
							<div class="quick-setting dropdown-menu quick-login">
								<form
									action="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=authentication"
									method="post" id="login_form_quick" class="box">
									<div class="form_content clearfix">
										<div class="form-group">
											<label for="email">Email</label> <input
												class="input-focus is_required validate account_input form-control"
												data-validate="isEmail" type="email" id="email" name="email"
												value="" />
										</div>
										<div class="form-group">
											<label for="passwd">Password</label> <span><input
												class="input-focus is_required validate account_input form-control"
												type="password" data-validate="isPasswd" id="passwd"
												name="passwd" value="" /></span>
										</div>
										<p class="lost_password form-group">
											<a
												href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=password"
												title="Recover your forgotten password" rel="nofollow">Forgot
												password?</a>
										</p>
										<p class="submit">
											<button type="submit" id="SubmitLogin" name="SubmitLogin"
												class="btn btn-outline-inverse">
												<span> <i class="icon-lock left"></i> Sign in
												</span>
											</button>
										</p>
										<p class="lost_registry form-group">
											New customer? <a href="Uregistration.jsp" title="Register"
												rel="nofollow">Register</a>
										</p>
									</div>
								</form>
							</div>
						</div>
						<!-- End quick login -->

						<!-- Block user information module NAV  -->
						<div id="header_user_info" class="hidden-xs hidden-sm ">
							<span>Welcome visitor you can</span> <a
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=my-account"
								title="Login to your customer account" class="login "
								rel="nofollow">Login</a> <span class="account">or</span> <a
								class="account"
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=my-account"
								title="View my customer account" rel="nofollow">Create an
								account</a>
						</div>

						<div class="btn-group">
							<div data-toggle="dropdown" class="dropdown-toggle">
								<span class="btn-icon"></span> <span class="title">Settings</span>
							</div>

							<div
								class="header_user_info quick-setting dropdown-menu tree-menu">

								<ul class="links">
									<li class="first"><a id="wishlist-total-topbar"
										href="http://pavodemo.com/prestabrain/bella/cyan/index.php?fc=module&amp;module=blockwishlist&amp;controller=mywishlist&amp;id_lang=1"
										title="My wishlists"><i class="icon icon-heart"></i>Wish
											List</a></li>

									<li><a id="wishlist-total"
										href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=products-comparison"
										title="Compare"><i class="icon icon-retweet"></i>Compare</a></li>

									<li><a class="login"
										href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=my-account"
										rel="nofollow" title="Login to your customer account"> <i
											class="icon icon-unlock-alt"></i>Sign in
									</a></li>

									<li><a
										href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=my-account"
										title="My account"><i class="icon icon-user"></i>My
											Account</a></li>
									<li class="last"><a
										href="http://pavodemo.com/prestabrain/bella/cyan/"
										title="Checkout" class="last"><i class="icon icon-share"></i>Checkout</a>
									</li>
								</ul>

							</div>
						</div>
						<!-- Block currencies module -->

						<div class="btn-group">
							<div data-toggle="dropdown" class="dropdown-toggle">
								<span class="btn-icon"></span> <span class="title"> $USD
								</span>
							</div>
							<div class="quick-setting dropdown-menu">
								<div id="currencies-block-top">
									<form id="setCurrency"
										action="/prestabrain/bella/cyan/index.php" method="post"
										class="tree-menu">

										<input type="hidden" name="id_currency" id="id_currency"
											value="" /> <input type="hidden" name="SubmitCurrency"
											value="" />

										<ul id="first-currencies"
											class="currencies_ul toogle_content links">
											<li class="selected"><a
												href="javascript:setCurrency(1);" rel="nofollow"
												title="Dollar"> $ Dollar </a></li>
											<li><a href="javascript:setCurrency(2);" rel="nofollow"
												title="Euros"> € Euros </a></li>
										</ul>
									</form>
								</div>
							</div>
						</div>
						<!-- /Block currencies module -->
						<!-- Block languages module -->
						<div class="btn-group">
							<div data-toggle="dropdown" class="dropdown-toggle">
								<span class="btn-icon"></span> <span class="title">
									English </span>
							</div>
							<div class="quick-setting dropdown-menu">
								<div id="languages-block-top" class="languages-block">
									<ul id="first-languages" class="languages-block_ul links">
										<li class="selected"><a> <span><img
													src="img/1.jpg" alt="en" width="16" height="11" />English</span>
										</a></li>
										<li><a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_lang=21"
											title="Français (French)"> <span><img
													src="img/21.jpg" alt="fr" width="16" height="11" />Français</span>

										</a></li>
										<li><a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_lang=22"
											title="Russian"> <span><img src="img/22.jpg"
													alt="ru" width="16" height="11" />Russian</span>

										</a></li>
										<li><a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_lang=23"
											title="Persian"> <span><img src="img/23.jpg"
													alt="fa" width="16" height="11" />Persian</span>

										</a></li>
										<li><a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_lang=24"
											title="Italiano (Italian)"> <span><img
													src="img/24.jpg" alt="it" width="16" height="11" />Italiano</span>

										</a></li>
										<li><a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_lang=25"
											title="Deutsch (German)"> <span><img
													src="img/25.jpg" alt="de" width="16" height="11" />Deutsch</span>

										</a></li>
									</ul>
								</div>
							</div>
						</div>

						<!-- /Block languages module -->
						<!-- MODULE Block cart -->
						<div class="cart-block">
							<div class="clearfix inner">
								<div id="cart" class="shopping_cart quick-cart clearfix">
									<div class="heading">
										<div class="mini-cart cart-inner">
											<a
												href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=order-opc"
												title="View my shopping cart" rel="nofollow">
												<div class="cart-icon"></div> <span
												class="ajax_cart_no_product">0</span> <span
												class="ajax_cart_quantity unvisible">0</span> <span>items</span>

												<!--<span class="ajax_cart_product_txt unvisible">item(s)</span>
					<span class="ajax_cart_product_txt_s unvisible">item(s)</span>	
					<span class="ajax_cart_total unvisible">
											</span>		 -->

											</a>
										</div>
									</div>

									<div class="cart_block block exclusive">
										<div class="block_content">
											<!-- block list of products -->
											<div class="cart_block_list">
												<p class="cart_block_no_products">No products</p>
												<div class="cart-prices">
													<div class="cart-prices-line first-line">
														<span
															class="price cart_block_shipping_cost ajax_cart_shipping_cost">
															Free shipping! </span> <span> Shipping </span>
													</div>
													<div class="cart-prices-line last-line">
														<span class="price cart_block_total ajax_block_cart_total">$0.00</span>
														<span>Total</span>
													</div>
												</div>
												<p class="cart-buttons clearfix">
													<a id="button_order_cart"
														class="btn btn-default pull-right"
														href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=order-opc"
														title="Check out" rel="nofollow"> <span> Check
															out </span>
													</a>
												</p>
											</div>
										</div>
									</div>
									<!-- .cart_block -->
								</div>
							</div>

							<div id="layer_cart">
								<div class="clearfix">
									<div class="layer_cart_product col-xs-12 col-md-6">
										<span class="cross" title="Close window"></span>
										<h2>
											<i class="icon-ok"></i>Product successfully added to your
											shopping cart
										</h2>
										<div class="product-image-container layer_cart_img"></div>
										<div class="layer_cart_product_info">
											<span id="layer_cart_product_title" class="product-name"></span>
											<span id="layer_cart_product_attributes"></span>
											<div>
												<strong class="dark">Quantity</strong> <span
													id="layer_cart_product_quantity"></span>
											</div>
											<div>
												<strong class="dark">Total</strong> <span
													id="layer_cart_product_price"></span>
											</div>
										</div>
									</div>
									<div class="layer_cart_cart col-xs-12 col-md-6">
										<h2>
											<!-- Plural Case [both cases are needed because page may be updated in Javascript] -->
											<span class="ajax_cart_product_txt_s  unvisible">
												There are <span class="ajax_cart_quantity">0</span> items in
												your cart.
											</span>
											<!-- Singular Case [both cases are needed because page may be updated in Javascript] -->
											<span class="ajax_cart_product_txt "> There is 1 item
												in your cart. </span>
										</h2>

										<div class="layer_cart_row">
											<strong class="dark"> Total products </strong> <span
												class="ajax_block_products_total"> </span>
										</div>

										<div class="layer_cart_row">
											<strong class="dark"> Total shipping&nbsp; </strong> <span
												class="ajax_cart_shipping_cost"> Free shipping! </span>
										</div>
										<div class="layer_cart_row">
											<strong class="dark"> Total </strong> <span
												class="ajax_block_cart_total"> </span>
										</div>
										<div class="button-container">
											<span
												class="continue btn btn-default button exclusive-medium"
												title="Continue shopping"> <span> <i
													class="icon-chevron-left left"></i>Continue shopping
											</span>
											</span> <a class="btn btn-warning button pull-right check-out"
												href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=order-opc"
												title="Proceed to checkout" rel="nofollow"> <span>
													Proceed to checkout<i class="icon-chevron-right right"></i>
											</span>
											</a>
										</div>
									</div>
								</div>
								<div class="crossseling"></div>
							</div>
							<!-- #layer_cart -->
							<div class="layer_cart_overlay"></div>

							<!-- /MODULE Block cart -->
						</div>
						<!-- block seach mobile -->
						<div class="pts-search">
							<div class="search-title">
								<span>buy online. pick up in store</span>
							</div>
							<div class="search-content">
								<!-- Block search module TOP -->
								<div id="pts_search_block_top">
									<form method="get"
										action="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search"
										id="searchbox">
										<input type="hidden" name="controller" value="search" />
										<div class="content-search">

											<div class="pull-left search full">
												<input type="hidden" name="orderby" value="position" /> <input
													type="hidden" name="orderway" value="desc" /> <input
													class="search_query" type="text" id="pts_search_query_top"
													name="search_query" value=""
													placeholder="Search for clothing, shoes, accessories, ..." />
											</div>
											<div class="pull-left btn-s">
												<button type="submit" id="btn-search-submit"
													name="submit_search" value="Search"
													class="button bg-theme-color"></button>
											</div>
										</div>
									</form>
								</div>


								<script type="text/javascript">
									// <![CDATA[
									$('document')
											.ready(
													function() {
														var ac = $(
																"#pts_search_query_top")
																.autocomplete(
																		'http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search',
																		{
																			minChars : 3,
																			max : 10,
																			width : 350,
																			selectFirst : false,
																			scroll : false,
																			dataType : "json",
																			formatItem : function(
																					data,
																					i,
																					max,
																					value,
																					term) {
																				return value;
																			},
																			parse : function(
																					data) {
																				var mytab = new Array();
																				for ( var i = 0; i < data.length; i++)
																					mytab[mytab.length] = {
																						data : data[i],
																						value : '<img class="pull-left" src="'+ data[i].image+'" style="margin-right:10px;"><div class="name">'
																								+ data[i].pname
																								+ '</div><div class="price">Price '
																								+ data[i].dprice
																								+ '</div> '
																					};
																				return mytab;
																			},
																			extraParams : {
																				ajaxSearch : 1,
																				id_lang : 1,
																				category_filter : $(
																						"#category_filter")
																						.val()
																			}
																		})
																.result(
																		function(
																				event,
																				data,
																				formatted) {
																			$(
																					'#pts_search_query_top')
																					.val(
																							data.pname);
																			document.location.href = data.product_link;
																		});

														$("#category_filter")
																.change(
																		function() {
																			ac
																					.setOptions({
																						extraParams : {
																							ajaxSearch : 1,
																							id_lang : 1,
																							category_filter : $(
																									"#category_filter")
																									.val()
																						}
																					});
																		});

													});
									// ]]>
								</script>
								<div class="clearfix"></div>
								<div id="search_tags" class="search_tags">
									<div class="title pull-left">
										<span>Trending keyword</span>
									</div>
									<div class="content pull-left">
										<a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search&amp;orderby=position&amp;orderway=desc&amp;search_query=WEB%2BDESIGN"
											title="WEB DESIGN">WEB DESIGN</a> <a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search&amp;orderby=position&amp;orderway=desc&amp;search_query=BOOTSTRAP"
											title="BOOTSTRAP">BOOTSTRAP</a> <a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search&amp;orderby=position&amp;orderway=desc&amp;search_query=RESPONSIVE"
											title="RESPONSIVE">RESPONSIVE</a> <a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search&amp;orderby=position&amp;orderway=desc&amp;search_query=CLOTHING"
											title="CLOTHING">CLOTHING</a> <a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search&amp;orderby=position&amp;orderway=desc&amp;search_query=BAGS"
											title="BAGS">BAGS</a> <a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search&amp;orderby=position&amp;orderway=desc&amp;search_query=SHOES"
											title="SHOES">SHOES</a> <a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search&amp;orderby=position&amp;orderway=desc&amp;search_query=STYLE"
											title="STYLE">STYLE</a> <a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search&amp;orderby=position&amp;orderway=desc&amp;search_query=MEN%2BFASHION"
											title="MEN FASHION">MEN FASHION</a> <a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search&amp;orderby=position&amp;orderway=desc&amp;search_query=WOMEN%2BDRESSES"
											title="WOMEN DRESSES">WOMEN DRESSES</a>
									</div>
								</div>
							</div>
						</div>
						<!-- /Block search module TOP -->

					</div>


				</div>
			</div>
		</div>
	</div>
	<div class="main-menu mainnav-v1">
		<div class="container">
			<div class="row">

				<div class="col-xs-12">
					<div id="logo-theme-keep" class="logo-store">
						<div class="logo-theme">
							<a href="http://pavodemo.com/prestabrain/bella/cyan/"
								title="Bella store"> <img src="img/logo.png" alt="logo" />
							</a>
						</div>
					</div>


					<div id="pts-mainnav">
						<nav id="cavas_menu" class="sf-contener pts-megamenu">
						<div class="navbar" role="navigation">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-ex1-collapse">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
							</div>


							<!-- Collect the nav links, forms, and other content for toggling -->
							<div id="pts-top-menu"
								class="collapse navbar-collapse navbar-ex1-collapse">
								<ul class="nav navbar-nav megamenu">
									<li class=""><a
										href="http://pavodemo.com/prestabrain/bella/cyan/index.php"
										target="_self"><span class="menu-title">Home</span></a></li>

									<li class="parent dropdown  aligned-left"><a
										class="dropdown-toggle has-subhtml" data-toggle="dropdown"
										href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_category=26&amp;controller=category&amp;id_lang=1"
										target="_self"><span class="menu-title">Cloths</span><b
											class="caret"></b></a>
										<div class="dropdown-menu level1">
											<div class="dropdown-menu-inner">
												<div class="row">
													<div class="mega-col col-sm-12" data-type="menu">
														<div class="mega-col-inner">
															<ul>
																<%@ taglib uri="http://java.sun.com/jstl/core_rt"
																	prefix="v"%>
																<v:forEach items="${sessionScope.menu}" var="i">
																	<v:choose>
																		<v:when test="${ not empty i.value }">
																			<li class="parent dropdown-submenu "><a
																				class="dropdown-toggle" data-toggle="dropdown"
																				href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=#"><span
																					class="menu-title">${i.key}</span><b class="caret"></b></a>
																				<div class="dropdown-menu level2">
																					<div class="dropdown-menu-inner">
																						<div class="row">
																							<div class="mega-col col-sm-12" data-type="menu">
																								<div class="mega-col-inner">
																									<ul>
																										<li class=" "><div class="menu-content">
																												<ul>
																													<v:forEach items="${i.value }" var="j">
																														<li><a href="<%=request.getContextPath()%>/UMenuServlet?id=${i.subcategory_id}">${j.subcategory_name}</a></li>
																													</v:forEach>
																												</ul>
																											</div></li>
																									</ul>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div></li>
																		</v:when>
																		<v:otherwise>
																		<li class=" " >
																		<a href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=#">
																		<span class="menu-title">${i.key }</span>
																		</a>
																		</li>
																		</v:otherwise>
																	</v:choose>
																</v:forEach>


															</ul>
														</div>
													</div>
												</div>
											</div>
										</div></li>



									<li class="parent dropdown  aligned-left"><a
										class="dropdown-toggle has-subhtml" data-toggle="dropdown"
										href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_category=26&amp;controller=category&amp;id_lang=1"
										target="_self"><span class="menu-title">Accessories</span><b
											class="caret"></b></a>
										<div class="dropdown-menu level1">
											<div class="dropdown-menu-inner">
												<div class="row">
													<div class="mega-col col-sm-12" data-type="menu">
														<div class="mega-col-inner">
															<ul>
																<v:forEach items="${sessionScope.menu_ac}" var="i">
																	<v:choose>
																		<v:when test="${ not empty i.value }">
																			<li class="parent dropdown-submenu "><a
																				class="dropdown-toggle" data-toggle="dropdown"
																				href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=#"><span
																					class="menu-title">${i.key}</span><b class="caret"></b></a>
																				<div class="dropdown-menu level2">
																					<div class="dropdown-menu-inner">
																						<div class="row">
																							<div class="mega-col col-sm-12" data-type="menu">
																								<div class="mega-col-inner">
																									<ul>
																										<li class=" "><div class="menu-content">
																												<ul>
																													<v:forEach items="${i.value }" var="j">
																														<li><a href="#">${j.subcategory_name}</a></li>
																													</v:forEach>
																												</ul>
																											</div></li>
																									</ul>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div></li>
																		</v:when>
																		<v:otherwise>
																		<li class=" " >
																		<a href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=#">
																		<span class="menu-title">${i.key }</span>
																		</a>
																		</li>
																		</v:otherwise>
																	</v:choose>
																</v:forEach>
														</div>
													</div>
												</div>
											</div>
										</div></li>
									<li class=""><a
										href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=contact"
										target="_self"><span class="menu-title">Contact</span></a></li>
								</ul>
							</div>
						</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row" style="display: none;">
		<div class="col-xs-12">
			<div class="quick-search">
				<div style="display: none;">


					<div
						class="ptsstaticontent_top staticontent-item-1 staticontent-item col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
						<div class="box block pts-custom " data-href="#">
							<div class="mask"></div>
							<a href="#" class="item-link"> </a>

							<div class="block_content description" data-href="#">
								<div class="support">
									<div class="row">
										<div class="col-xs-4">
											<em class="icon icon-headphones">&nbsp;</em><span
												class="label hidden-sm hidden-xs">Call for support:</span> <span
												class="text text-theme-color">0123 - 456 - 789</span>
										</div>
										<div class="col-xs-4">
											<em class="icon icon-envelope-o">&nbsp;</em><span
												class="label hidden-sm hidden-xs">Email us: </span> <span
												class="text text-theme-color">SUPPORT@BELLA.COM</span>
										</div>
										<div class="col-xs-4">
											<em class="icon icon-comments-o ">&nbsp;</em><span
												class="label hidden-sm hidden-xs">Chat online skype:
											</span> <span class="text text-theme-color">SUPPORT_BELLA</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>
	</header>
</body>


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
<script type="text/javascript" src="js/ajax-cart.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo.js"></script>
<script type="text/javascript" src="js/jquery.serialScroll.js"></script>
<script type="text/javascript" src="js/jquery.bxslider.js"></script>
<script type="text/javascript" src="js/treeManagement.js"></script>
<script type="text/javascript" src="js/blockfacebook.js"></script>
<script type="text/javascript" src="js/blocknewsletter.js"></script>
<script type="text/javascript" src="js/homeslider.js"></script>
<script type="text/javascript" src="js/live_configurator.js"></script>
<script type="text/javascript" src="js/colorpicker.js"></script>
<script type="text/javascript" src="js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript"
	src="js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="js/ajax-wishlist.js"></script>
<script type="text/javascript" src="js/jquery.autocomplete.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/index.js"></script>








</html>