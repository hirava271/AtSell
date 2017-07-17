<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Umenu.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>Nam vulputate magna - Bella store</title>
<meta name="description"
	content="Sed vestibulum, ligula eu rhoncus sodales, lectus leo vulputate justo, in pharetra arcu felis molestie dui. Ut mattis risus ipsum, vel luctus tortor tristique vestibulum." />
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
<link rel="stylesheet" href="css/product.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/print.css" type="text/css"
	media="print" />
<link rel="stylesheet" href="css/socialsharing.css" type="text/css"
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
<link rel="stylesheet" href="css/sendtoafriend.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/hooks1.css" type="text/css" media="all" />
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
	var CUSTOMIZE_TEXTFIELD = 1;
	var FancyboxI18nClose = 'Close';
	var FancyboxI18nNext = 'Next';
	var FancyboxI18nPrev = 'Previous';
	var PS_CATALOG_MODE = false;
	var added_to_wishlist = 'Added to your wishlist.';
	var ajax_allowed = true;
	var ajaxcontent_url = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?fc=module&module=ptsinfiniteproducts&controller=infinite&id_lang=1';
	var ajaxsearch = true;
	var allowBuyWhenOutOfStock = true;
	var attribute_anchor_separator = '-';
	var attributesCombinations = [ {
		"id_attribute" : "2",
		"id_attribute_group" : "1",
		"attribute" : "m",
		"group" : "size"
	}, {
		"id_attribute" : "6",
		"id_attribute_group" : "3",
		"attribute" : "taupe",
		"group" : "color"
	}, {
		"id_attribute" : "7",
		"id_attribute_group" : "3",
		"attribute" : "beige",
		"group" : "color"
	}, {
		"id_attribute" : "3",
		"id_attribute_group" : "1",
		"attribute" : "l",
		"group" : "size"
	}, {
		"id_attribute" : "24",
		"id_attribute_group" : "3",
		"attribute" : "pink",
		"group" : "color"
	} ];
	var availableLaterValue = '';
	var availableNowValue = 'In stock';
	var baseDir = 'http://pavodemo.com/prestabrain/bella/cyan/';
	var baseUri = 'http://pavodemo.com/prestabrain/bella/cyan/index.php';
	var combinations = {
		"90" : {
			"attributes_values" : {
				"1" : "M",
				"3" : "Taupe"
			},
			"attributes" : [ 2, 6 ],
			"price" : 0,
			"specific_price" : {
				"id_specific_price" : "36",
				"id_specific_price_rule" : "0",
				"id_cart" : "0",
				"id_product" : "20",
				"id_shop" : "0",
				"id_shop_group" : "0",
				"id_currency" : "0",
				"id_country" : "0",
				"id_group" : "0",
				"id_customer" : "0",
				"id_product_attribute" : "0",
				"price" : "-1.000000",
				"from_quantity" : "1",
				"reduction" : "2.000000",
				"reduction_type" : "amount",
				"from" : "0000-00-00 00:00:00",
				"to" : "0000-00-00 00:00:00",
				"score" : "32"
			},
			"ecotax" : 0,
			"weight" : 0,
			"quantity" : 88,
			"reference" : null,
			"unit_impact" : "0.00",
			"minimal_quantity" : "1",
			"available_date" : "",
			"id_image" : -1,
			"list" : "'2','6'"
		},
		"92" : {
			"attributes_values" : {
				"1" : "L",
				"3" : "Pink"
			},
			"attributes" : [ 3, 24 ],
			"price" : 0,
			"specific_price" : {
				"id_specific_price" : "36",
				"id_specific_price_rule" : "0",
				"id_cart" : "0",
				"id_product" : "20",
				"id_shop" : "0",
				"id_shop_group" : "0",
				"id_currency" : "0",
				"id_country" : "0",
				"id_group" : "0",
				"id_customer" : "0",
				"id_product_attribute" : "0",
				"price" : "-1.000000",
				"from_quantity" : "1",
				"reduction" : "2.000000",
				"reduction_type" : "amount",
				"from" : "0000-00-00 00:00:00",
				"to" : "0000-00-00 00:00:00",
				"score" : "32"
			},
			"ecotax" : 0,
			"weight" : 0,
			"quantity" : 99,
			"reference" : null,
			"unit_impact" : "0.00",
			"minimal_quantity" : "1",
			"available_date" : "",
			"id_image" : -1,
			"list" : "'3','24'"
		},
		"91" : {
			"attributes_values" : {
				"3" : "Beige"
			},
			"attributes" : [ 7 ],
			"price" : 0,
			"specific_price" : {
				"id_specific_price" : "36",
				"id_specific_price_rule" : "0",
				"id_cart" : "0",
				"id_product" : "20",
				"id_shop" : "0",
				"id_shop_group" : "0",
				"id_currency" : "0",
				"id_country" : "0",
				"id_group" : "0",
				"id_customer" : "0",
				"id_product_attribute" : "0",
				"price" : "-1.000000",
				"from_quantity" : "1",
				"reduction" : "2.000000",
				"reduction_type" : "amount",
				"from" : "0000-00-00 00:00:00",
				"to" : "0000-00-00 00:00:00",
				"score" : "32"
			},
			"ecotax" : 0,
			"weight" : 0,
			"quantity" : 99,
			"reference" : null,
			"unit_impact" : "0.00",
			"minimal_quantity" : "1",
			"available_date" : "",
			"id_image" : -1,
			"list" : "'7'"
		}
	};
	var combinationsFromController = {
		"90" : {
			"attributes_values" : {
				"1" : "M",
				"3" : "Taupe"
			},
			"attributes" : [ 2, 6 ],
			"price" : 0,
			"specific_price" : {
				"id_specific_price" : "36",
				"id_specific_price_rule" : "0",
				"id_cart" : "0",
				"id_product" : "20",
				"id_shop" : "0",
				"id_shop_group" : "0",
				"id_currency" : "0",
				"id_country" : "0",
				"id_group" : "0",
				"id_customer" : "0",
				"id_product_attribute" : "0",
				"price" : "-1.000000",
				"from_quantity" : "1",
				"reduction" : "2.000000",
				"reduction_type" : "amount",
				"from" : "0000-00-00 00:00:00",
				"to" : "0000-00-00 00:00:00",
				"score" : "32"
			},
			"ecotax" : 0,
			"weight" : 0,
			"quantity" : 88,
			"reference" : null,
			"unit_impact" : "0.00",
			"minimal_quantity" : "1",
			"available_date" : "",
			"id_image" : -1,
			"list" : "'2','6'"
		},
		"92" : {
			"attributes_values" : {
				"1" : "L",
				"3" : "Pink"
			},
			"attributes" : [ 3, 24 ],
			"price" : 0,
			"specific_price" : {
				"id_specific_price" : "36",
				"id_specific_price_rule" : "0",
				"id_cart" : "0",
				"id_product" : "20",
				"id_shop" : "0",
				"id_shop_group" : "0",
				"id_currency" : "0",
				"id_country" : "0",
				"id_group" : "0",
				"id_customer" : "0",
				"id_product_attribute" : "0",
				"price" : "-1.000000",
				"from_quantity" : "1",
				"reduction" : "2.000000",
				"reduction_type" : "amount",
				"from" : "0000-00-00 00:00:00",
				"to" : "0000-00-00 00:00:00",
				"score" : "32"
			},
			"ecotax" : 0,
			"weight" : 0,
			"quantity" : 99,
			"reference" : null,
			"unit_impact" : "0.00",
			"minimal_quantity" : "1",
			"available_date" : "",
			"id_image" : -1,
			"list" : "'3','24'"
		},
		"91" : {
			"attributes_values" : {
				"3" : "Beige"
			},
			"attributes" : [ 7 ],
			"price" : 0,
			"specific_price" : {
				"id_specific_price" : "36",
				"id_specific_price_rule" : "0",
				"id_cart" : "0",
				"id_product" : "20",
				"id_shop" : "0",
				"id_shop_group" : "0",
				"id_currency" : "0",
				"id_country" : "0",
				"id_group" : "0",
				"id_customer" : "0",
				"id_product_attribute" : "0",
				"price" : "-1.000000",
				"from_quantity" : "1",
				"reduction" : "2.000000",
				"reduction_type" : "amount",
				"from" : "0000-00-00 00:00:00",
				"to" : "0000-00-00 00:00:00",
				"score" : "32"
			},
			"ecotax" : 0,
			"weight" : 0,
			"quantity" : 99,
			"reference" : null,
			"unit_impact" : "0.00",
			"minimal_quantity" : "1",
			"available_date" : "",
			"id_image" : -1,
			"list" : "'7'"
		}
	};
	var comparator_max_item = 3;
	var comparedProductsIds = [];
	var confirm_report_message = 'Are you sure that you want to report this comment?';
	var contentOnly = false;
	var currencyBlank = 0;
	var currencyFormat = 1;
	var currencyRate = 1;
	var currencySign = '$';
	var currentDate = '2014-12-19 01:58:13';
	var customerGroupWithoutTax = true;
	var customizationFields = false;
	var customizationIdMessage = 'Customization #';
	var default_eco_tax = 0;
	var delete_txt = 'Delete';
	var displayDiscountPrice = '0';
	var displayList = false;
	var displayPrice = 1;
	var doesntExist = 'This combination does not exist for this product. Please select another combination.';
	var doesntExistNoMore = 'This product is no longer in stock';
	var doesntExistNoMoreBut = 'with those attributes but is available with others.';
	var ecotaxTax_rate = 0;
	var fieldRequired = 'Please fill in all the required fields before saving your customization.';
	var freeProductTranslation = 'Free!';
	var freeShippingTranslation = 'Free shipping!';
	var generated_date = 1418972293;
	var group_reduction = 0;
	var idDefaultImage = 370;
	var id_lang = 1;
	var id_product = 20;
	var img_dir = 'http://pavodemo.com/prestabrain/bella/cyan/themes/pf_bella/img/';
	var img_prod_dir = 'http://pavodemo.com/prestabrain/bella/cyan/img/p/';
	var img_ps_dir = 'http://pavodemo.com/prestabrain/bella/cyan/img/';
	var instantsearch = false;
	var isGuest = 0;
	var isLogged = 0;
	var jqZoomEnabled = false;
	var loggin_required = 'You must be logged in to manage your wishlist.';
	var maxQuantityToAllowDisplayOfLastQuantityMessage = 3;
	var max_item = 'You cannot add more than 3 product(s) to the product comparison';
	var min_item = 'Please select at least one product';
	var minimalQuantity = 1;
	var moderation_active = true;
	var mywishlist_url = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?fc=module&module=blockwishlist&controller=mywishlist&id_lang=1';
	var noTaxForThisProduct = true;
	var oosHookJsCodeFunctions = [];
	var page_name = 'product';
	var placeholder_blocknewsletter = 'Your e-mail';
	var priceDisplayMethod = 1;
	var priceDisplayPrecision = 2;
	var productAvailableForOrder = true;
	var productBasePriceTaxExcl = 99.99;
	var productBasePriceTaxExcluded = 99.99;
	var productHasAttributes = true;
	var productPrice = 97.99;
	var productPriceTaxExcluded = 99.99;
	var productPriceWithoutReduction = 99.99;
	var productShowPrice = true;
	var productUnitPriceRatio = 0;
	var product_fileButtonHtml = 'Choose File';
	var product_fileDefaultHtml = 'No file selected';
	var product_specific_price = {
		"id_specific_price" : "36",
		"id_specific_price_rule" : "0",
		"id_cart" : "0",
		"id_product" : "20",
		"id_shop" : "0",
		"id_shop_group" : "0",
		"id_currency" : "0",
		"id_country" : "0",
		"id_group" : "0",
		"id_customer" : "0",
		"id_product_attribute" : "0",
		"price" : "-1.000000",
		"from_quantity" : "1",
		"reduction" : "2.000000",
		"reduction_type" : "amount",
		"from" : "0000-00-00 00:00:00",
		"to" : "0000-00-00 00:00:00",
		"score" : "32"
	};
	var productcomment_added = 'Your comment has been added!';
	var productcomment_added_moderation = 'Your comment has been added and will be available once approved by a moderator';
	var productcomment_ok = 'OK';
	var productcomment_title = 'New comment';
	var productcomments_controller_url = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?fc=module&module=productcomments&controller=default&id_lang=1';
	var productcomments_url_rewrite = false;
	var ptsblocksearch_type = 'top';
	var quantitiesDisplayAllowed = false;
	var quantityAvailable = 0;
	var quickView = true;
	var reduction_percent = 0;
	var reduction_price = 2;
	var removingLinkText = 'remove this product from my cart';
	var roundMode = 2;
	var search_url = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search';
	var secure_key = '4b76c8891873e7d11f58db86a882eac7';
	var specific_currency = false;
	var specific_price = -1;
	var static_token = 'fc8f4b82bcc66cb7501c4b081e23c92b';
	var stf_msg_error = 'Your e-mail could not be sent. Please check the e-mail address and try again.';
	var stf_msg_required = 'You did not fill required fields';
	var stf_msg_success = 'Your e-mail has been sent successfully';
	var stf_msg_title = 'Send to a friend';
	var stf_secure_key = 'c12fb7ec965f5e85c6cf0e7d2b1c43be';
	var stock_management = 0;
	var taxRate = 0;
	var token = 'fc8f4b82bcc66cb7501c4b081e23c92b';
	var upToTxt = 'Up to';
	var uploading_in_progress = 'Uploading in progress, please be patient.';
	var usingSecureMode = false;
	var wishlistProductsIds = false;
</script>
<script type="text/javascript">
	function sendaddcart(x) {
		var hdn = document.getElementById("hdncolorcode");
		var hdnimg = document.getElementById("hdnimgpath");
		var href = document.getElementById("href");
		var size = document.getElementById("hdnsize");
		var color = hdn.value;
		var code = color.substr(1);
		alert(code);
		//x.href = x.href+"&colorcode="+hdn.value+"&img="+hdnimg.value;

		href.value = href.value + "&colorcode=" + code + "&img=" + hdnimg.value
				+ "&size=" + size.value;
		alert(href.value);
		/* window.location.href=href.value;
		 alert("llllllllllllllllll"+href.value);
		 alert("dddddddddddddddddddddddd"+window.location.href);
		 */
		var addtocarthref = document.getElementById("addtocarthref");
		addtocarthref.href = href.value;

	}
	function sendaddwishlist(x) {
		var hdn = document.getElementById("hdncolorcode");
		var hdnimg = document.getElementById("hdnimgpath");
		var href = document.getElementById("hrefwish");
		var size = document.getElementById("hdnsize");
		var color = hdn.value;
		var code = color.substr(1);
		alert(code);
		//x.href = x.href+"&colorcode="+hdn.value+"&img="+hdnimg.value;

		href.value = href.value + "&colorcode=" + code + "&img=" + hdnimg.value
				+ "&size=" + size.value;
		alert(href.value);
		/* window.location.href=href.value;
		 alert("llllllllllllllllll"+href.value);
		 alert("dddddddddddddddddddddddd"+window.location.href);
		 */
		var addtocarthref = document.getElementById("addtoWishListhref");
		addtocarthref.href = href.value;

	}

	function change_image(x, c) {
		var hdn = document.getElementById("hdncolorcode");
		var hdnimg = document.getElementById("hdnimgpath");
		var img_id = document.getElementById("bigpic");
		var p = x.id;
		img_id.src = "${pageContext.request.contextPath}/doc/" + p;
		/* var addtocarthref = document.getElementById("addtocarthref");
		addtocarthref.href=addtocarthref.href+"&colorcode="+c;
		 */
		hdnimg.value = p;
		hdn.value = c;
	}

	function select_size(x) {
		var hdn = document.getElementById("hdnsize");
		hdn.value = x.value;
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
<script type="text/javascript" src="js/jquery.idTabs.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo.js"></script>
<script type="text/javascript" src="js/jquery.serialScroll.js"></script>
<script type="text/javascript" src="js/jquery.bxslider.js"></script>
<script type="text/javascript" src="js/product.js"></script>
<script type="text/javascript" src="js/socialsharing.js"></script>
<script type="text/javascript" src="js/ajax-cart.js"></script>
<script type="text/javascript" src="js/treeManagement.js"></script>
<script type="text/javascript" src="js/blocknewsletter.js"></script>
<script type="text/javascript" src="js/sendtoafriend.js"></script>
<script type="text/javascript" src="js/live_configurator.js"></script>
<script type="text/javascript" src="js/colorpicker.js"></script>
<script type="text/javascript" src="js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript"
	src="js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="js/jquery.rating.pack.js"></script>
<script type="text/javascript" src="js/ajax-wishlist.js"></script>
<script type="text/javascript" src="js/jquery.autocomplete.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.textareaCounter.plugin.js"></script>
<script type="text/javascript" src="js/productcomments.js"></script>
<meta property="og:title" content="" />
<meta property="og:type" content="product" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta property="og:email" content="" />
<meta property="og:phone_number" content="" />
<meta property="og:street-address" content="" />
<meta property="og:locality" content="" />
<meta property="og:country-name" content="" />
<meta property="og:postal-code" content="" />
<meta property="og:image" content="img/370-large_default.jpg" />


<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->
</head>
<body id="product"
	class="keep-header product product-20 product-nam-vulputate-magna category-2 category-home hide-left-column hide-right-column lang_en layout-fullwidth"
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
					class="navigation-pipe"></span> <span class="navigation_page">Nam
					vulputate magna</span>
			</div>
		</div>
		<!-- /Breadcrumb -->
		<div class="container main-content">
			<div class="row">
				<div id="center_column"
					class="center_column col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div id="content">



						<div itemscope itemtype="http://schema.org/Product"
							class="product-info">
							<c:forEach items="${sessionScope.product }" var="i">

								<div class="primary_block row">
									<div class="container">
										<div class="top-hr"></div>
									</div>
									<!-- left infos-->
									<div
										class="pb-left-column col-xs-12 col-sm-12 col-md-4 col-lg-4">
										<c:forEach items="${sessionScope.product_colors}" var="j"
											varStatus="jj">
											<c:if test="${jj.count eq 1 }">
												<c:set var="img" value="${j.path}" scope="session"></c:set>
											</c:if>
											<!-- product img-->
											<div class="product-image-block ">
												<div id="image-block">
													<span class="discount">Reduced price!</span> <span
														id="view_full_size"> <img id="bigpic"
														class="img-responsive" itemprop="image"
														src="<%=request.getContextPath() %>/doc/${j.path}"
														title="Nam vulputate magna" alt="Nam vulputate magna"
														width="554" height="700" /> <span
														class="span_link no-print">View larger</span>
													</span>
												</div>
												<!-- thumbnails -->
												<!-- end views-block -->
												<!-- end thumbnails -->
											</div>
										</c:forEach>
										<!-- end image-block -->


										<!-- <p class="resetimg clear no-print">
										<span id="wrapResetImages" style="display: none;"> <a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=20&amp;controller=product&amp;id_lang=1"
											name="resetImages"> <i class="icon-repeat"></i> Display
												all pictures
										</a>
										</span>
									</p> -->
									</div>
									<!-- end pb-left-column -->
									<!-- end left infos-->
									<!-- center infos -->
									<div class="pd-content col-xs-12 col-sm-12 col-md-8 col-lg-8">
										<div class="row">



											<div
												class="pb-center-column col-xs-12 col-sm-7 col-md-7 col-lg-7">

												<h1 itemprop="name">${i.product_name }</h1>
												<p id="product_reference">
													<label>Designer </label> <span class="editable"
														itemprop="${sessionScope.dname}">${sessionScope.dname}</span>
												</p>
												<div id="short_description_block">
													<div id="short_description_content"
														class="rte align_justify" itemprop="description">
														<p>${i.product_description }</p>
													</div>
												</div>
												<fieldset class="attribute_fieldset"><legend></legend>
												<div id="short_description_block">
													<div id="short_description_content"
														class="rte align_justify" itemprop="description">
														<p>${i.material.material }</p>
													</div>
												</div>
												<div id="short_description_block">
													<div id="short_description_content"
														class="rte align_justify" itemprop="description">
														<p>${i.neck.neck_type }</p>
													</div>
												</div>
												<div id="short_description_block">
													<div id="short_description_content"
														class="rte align_justify" itemprop="description">
														<p>${i.sleeve.sleeves_type }</p>
													</div>
												</div></fieldset>
												<!-- Out of stock hook -->


												<div id="product_comments_block_extra" class="no-print"
													itemprop="aggregateRating" itemscope
													itemtype="http://schema.org/AggregateRating"></div>
												<!--  /Module ProductComments -->
												<!-- usefull links-->
											</div>
											<!-- end center infos-->
											<!-- pb-right-column-->

											<div
												class="pb-right-column col-xs-12 col-sm-5 col-md-5 col-lg-5">
												<!-- add to cart form-->
												<form id="buy_block" action="" method="get">
													<!-- hidden datas -->

													<div class="box-info-product  product-extra">
														<div class="content_prices clearfix">
															<!-- prices -->
															<div class="price">
																<p class="our_price_display" itemprop="offers" itemscope
																	itemtype="http://schema.org/Offer">
																	<link itemprop="availability"
																		href="http://schema.org/InStock" />
																	<span id="our_price_display" itemprop="price">$${i.price
																		}</span>
																	<!---->
																	<meta itemprop="priceCurrency" content="USD" />

																</p>
															</div>
															<!-- end prices -->




															<div class="clear"></div>
														</div>
														<!-- end content_prices -->
														<div class="product_attributes clearfix">
															<div id="attributes">
																<div class="clearfix"></div>
																<fieldset class="attribute_fieldset">
																	<label class="attribute_label" for="group_1">Size
																		:&nbsp;</label>
																	<div class="attribute_list">
																		<select name="size_name" id="size_id"
																			class="form-control attribute_select no-print"
																			onchange="select_size(this)">
																			<option selected="selected">Choose One</option>
																			<c:forEach items="${sessionScope.product_size}"
																				var="s">
																				<option value=${s.size } title="M">${s.size}</option>
																			</c:forEach>
																		</select>
																	</div>
																	<!-- end attribute_list -->
																</fieldset>
																<fieldset class="attribute_fieldset">
																	<label class="attribute_label">Color :&nbsp;</label>
																	<div class="attribute_list">
																		<ul id="color_to_pick_list" class="clearfix">
																			<c:forEach items="${sessionScope.product_colors }"
																				var="img" varStatus="j">
																				<li class="selected"><input type="hidden"
																					id="hidden_id" value="${img.path}"> <a
																					id="${img.path}" class="color_pick selected"
																					style="background: ${img.color_code}" title="Taupe"
																					onmouseover="change_image(this,'${img.color_code}')">
																				</a></li>

																			</c:forEach>

																		</ul>
																		<input type="hidden" class="color_pick_hidden"
																			name="group_3" value="6" />
																	</div>
																	<!-- end attribute_list -->
																</fieldset>
															</div>
															<!-- end attributes -->

														</div>
														<!-- end product_attributes -->

														<div class="box-cart-bottom">
															<div>
																<p class="buttons_bottom_block no-print">
																	<input type="hidden" id="hdncolorcode"> <input
																		type="hidden" id="hdnimgpath"> <input
																		type="hidden" id="hdnsize"> <input
																		type="hidden" id="href"
																		value="<%=request.getContextPath() %>/UProductSelectionServlet?flag=add_to_cart&duser_id=${i.regVoObj.designer_user_id }&id=${i.cloth_id}&price=${i.price}&name=${i.product_name}">
																	<a onclick="sendaddcart(this)" id="addtocarthref"
																		href="#" name="Submit" class="btn btn-outline button">
																		<span>Add to cart</span>
																	</a>

																</p>
															</div>

															<div class="action">
																<!-- Productpaymentlogos module -->
																<div id="product_payment_logos">
																	<div class="box-security">
																		<h5 class="product-heading-h5"></h5>
																		<img src="img/payment-logo.png" alt=""
																			class="img-responsive" />
																	</div>
																</div>

																<!-- /Productpaymentlogos module -->

																<!-- <div class="box-cart-bottom ">
																<a class="wishlist btn" href="#"
																	onclick="WishlistCart('wishlist_block_list', 'add', '20', $('#idCombination').val(), document.getElementById('quantity_wanted').value); return false;"
																	rel="nofollow" title="Add to my wishlist"> Add to
																	wishlist </a>
															</div> -->

																<div class="box-cart-bottom">
																	<div>
																		<p class="buttons_bottom_block no-print">
																			<input type="hidden" id="hdncolorcode"> <input
																				type="hidden" id="hdnimgpath"> <input
																				type="hidden" id="hdnsize"> <input
																				type="hidden" id="hrefwish"
																				value="<%=request.getContextPath() %>/UProductSelectionServlet?flag=add_to_wishlist&id=${i.cloth_id}&duser_id=${i.regVoObj.designer_user_id }&price=${i.price}&name=${i.product_name}">
																			<a onclick="sendaddwishlist(this)"
																				id="addtoWishListhref" href="#" name="Submit1"
																				class="btn btn-outline button"> <span>Add
																					to Wishlist</span></a>

																		</p>
																	</div>

																</div>

															</div>
															<!-- end box-cart-bottom -->
														</div>
														<!-- end box-info-product -->
												</form>
											</div>
											<!-- end pb-right-column-->
										</div>
									</div>
								</div>
								<!-- end primary_block -->
								<!-- Tab panes -->
								<div class="tab-content">
									<section class="page-product-box tab-pane"
										id="producttab-custom">
									<div class="tab-inner">
										<p>Your Store Copyright Here</p>
									</div>
									</section>
									<section id="review-product" class="page-product-box tab-pane">

									<div id="idTab5">
										<div id="product_comments_block_tab">
											<div class="comment row" itemprop="review" itemscope
												itemtype="http://schema.org/Review">
												<div class="comment_author col-sm-2">
													<span>Grade&nbsp;</span>
													<div class="star_content clearfix" itemprop="reviewRating"
														itemscope itemtype="http://schema.org/Rating">
														<div class="star star_on"></div>
														<div class="star star_on"></div>
														<div class="star star_on"></div>
														<div class="star"></div>
														<div class="star"></div>
														<meta itemprop="worstRating" content="0" />
														<meta itemprop="ratingValue" content="3" />
														<meta itemprop="bestRating" content="5" />
													</div>
													<div class="comment_author_infos">
														<strong itemprop="author">John D</strong>
														<meta itemprop="datePublished" content="2014-05-08" />
														<em>05/08/2014</em>
													</div>
												</div>
												<!-- .comment_author -->

												<div class="comment_details col-sm-10">
													<p itemprop="name" class="title_block">
														<strong>Grade</strong>
													</p>
													<p itemprop="reviewBody">
														Integer velit mauris, dictum quis pellentesque quis,
														faucibus ultricies magna.<br />
													</p>
													<ul>
													</ul>
												</div>
												<!-- .comment_details -->

											</div>
											<!-- .comment -->
										</div>
										<!-- #product_comments_block_tab -->
									</div>

									<!-- Fancybox -->
									<div style="display: none;">
										<div id="new_comment_form">
											<form id="id_new_comment_form" action="#">
												<h2 class="page-subheading">Write a review</h2>
												<div class="row">
													<div class="product clearfix  col-xs-12 col-sm-6">
														<img src="img/370-medium_default.jpg" height="125"
															width="125" alt="" />
														<div class="product_desc">
															<p class="product_name">
																<strong></strong>
															</p>

														</div>
													</div>
													<div class="new_comment_form_content col-xs-12 col-sm-6">
														<h2>Write a review</h2>
														<div id="new_comment_form_error" class="error"
															style="display: none; padding: 15px 25px">
															<ul></ul>
														</div>
														<ul id="criterions_list">
															<li><label>Quality:</label>
																<div class="star_content">
																	<input class="star" type="radio" name="criterion[1]"
																		value="1" /> <input class="star" type="radio"
																		name="criterion[1]" value="2" /> <input class="star"
																		type="radio" name="criterion[1]" value="3"
																		checked="checked" /> <input class="star" type="radio"
																		name="criterion[1]" value="4" /> <input class="star"
																		type="radio" name="criterion[1]" value="5" />
																</div>
																<div class="clearfix"></div></li>
														</ul>
														<label for="comment_title"> Title: <sup
															class="required">*</sup>
														</label> <input id="comment_title" name="title" type="text"
															value="" /> <label for="content"> Comment: <sup
															class="required">*</sup>
														</label>
														<textarea id="content" name="content"></textarea>
														<div id="new_comment_form_footer">
															<input id="id_product_comment_send" name="id_product"
																type="hidden" value='20' />
															<p class="fl required">
																<sup>*</sup> Required fields
															</p>
															<p class="fr">
																<button id="submitNewMessage" name="submitMessage"
																	type="submit" class="btn button button-small">
																	<span>Send</span>
																</button>
																&nbsp; or&nbsp; <a class="closefb" href="#"> Cancel
																</a>
															</p>
															<div class="clearfix"></div>
														</div>
														<!-- #new_comment_form_footer -->
													</div>
												</div>
											</form>
											<!-- /end new_comment_form_content -->
										</div>
									</div>
									<!-- End fancybox --> </section>

								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>

			<!-- /MODULE Block ptsblockrelatedproducts -->
			<script>
				$(document).ready(function() {
					$('ptsblockrelatedproducts').each(function() {
						$(this).carousel({
							pause : true,
							interval : 1000
						});
					});

				});
			</script>
			<!-- description & features -->
		</div>
		<!-- itemscope product wrapper -->
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

</html>