<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="Umenu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>Login - Bella store</title>
<meta name="generator" content="PrestaShop" />
<meta name="robots" content="index,follow" />
<meta name="viewport"
	content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<link rel="icon" type="image/vnd.microsoft.icon"
	href="img/favicon.ico?1410257037" />
<link rel="shortcut icon" type="image/x-icon"
	href="img/favicon.ico?1410257037" />
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
<link rel="stylesheet" href="css/authentication.css" type="text/css"
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
	var countries = {
		"21" : {
			"id_country" : "21",
			"id_lang" : "1",
			"name" : "United States",
			"id_zone" : "2",
			"id_currency" : "0",
			"iso_code" : "US",
			"call_prefix" : "1",
			"active" : "1",
			"contains_states" : "1",
			"need_identification_number" : "0",
			"need_zip_code" : "1",
			"zip_code_format" : "NNNNN",
			"display_tax_label" : "0",
			"country" : "United States",
			"zone" : "North America",
			"states" : [ {
				"id_state" : "1",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Alabama",
				"iso_code" : "AL",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "2",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Alaska",
				"iso_code" : "AK",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "3",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Arizona",
				"iso_code" : "AZ",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "4",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Arkansas",
				"iso_code" : "AR",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "5",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "California",
				"iso_code" : "CA",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "6",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Colorado",
				"iso_code" : "CO",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "7",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Connecticut",
				"iso_code" : "CT",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "8",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Delaware",
				"iso_code" : "DE",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "53",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "District of Columbia",
				"iso_code" : "DC",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "9",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Florida",
				"iso_code" : "FL",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "10",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Georgia",
				"iso_code" : "GA",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "11",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Hawaii",
				"iso_code" : "HI",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "12",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Idaho",
				"iso_code" : "ID",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "13",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Illinois",
				"iso_code" : "IL",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "14",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Indiana",
				"iso_code" : "IN",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "15",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Iowa",
				"iso_code" : "IA",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "16",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Kansas",
				"iso_code" : "KS",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "17",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Kentucky",
				"iso_code" : "KY",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "18",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Louisiana",
				"iso_code" : "LA",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "19",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Maine",
				"iso_code" : "ME",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "20",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Maryland",
				"iso_code" : "MD",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "21",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Massachusetts",
				"iso_code" : "MA",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "22",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Michigan",
				"iso_code" : "MI",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "23",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Minnesota",
				"iso_code" : "MN",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "24",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Mississippi",
				"iso_code" : "MS",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "25",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Missouri",
				"iso_code" : "MO",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "26",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Montana",
				"iso_code" : "MT",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "27",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Nebraska",
				"iso_code" : "NE",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "28",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Nevada",
				"iso_code" : "NV",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "29",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "New Hampshire",
				"iso_code" : "NH",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "30",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "New Jersey",
				"iso_code" : "NJ",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "31",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "New Mexico",
				"iso_code" : "NM",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "32",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "New York",
				"iso_code" : "NY",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "33",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "North Carolina",
				"iso_code" : "NC",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "34",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "North Dakota",
				"iso_code" : "ND",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "35",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Ohio",
				"iso_code" : "OH",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "36",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Oklahoma",
				"iso_code" : "OK",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "37",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Oregon",
				"iso_code" : "OR",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "38",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Pennsylvania",
				"iso_code" : "PA",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "51",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Puerto Rico",
				"iso_code" : "PR",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "39",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Rhode Island",
				"iso_code" : "RI",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "40",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "South Carolina",
				"iso_code" : "SC",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "41",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "South Dakota",
				"iso_code" : "SD",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "42",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Tennessee",
				"iso_code" : "TN",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "43",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Texas",
				"iso_code" : "TX",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "52",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "US Virgin Islands",
				"iso_code" : "VI",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "44",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Utah",
				"iso_code" : "UT",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "45",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Vermont",
				"iso_code" : "VT",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "46",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Virginia",
				"iso_code" : "VA",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "47",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Washington",
				"iso_code" : "WA",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "48",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "West Virginia",
				"iso_code" : "WV",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "49",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Wisconsin",
				"iso_code" : "WI",
				"tax_behavior" : "0",
				"active" : "1"
			}, {
				"id_state" : "50",
				"id_country" : "21",
				"id_zone" : "2",
				"name" : "Wyoming",
				"iso_code" : "WY",
				"tax_behavior" : "0",
				"active" : "1"
			} ]
		}
	};
	var customizationIdMessage = 'Customization #';
	var delete_txt = 'Delete';
	var displayList = false;
	var email_create = false;
	var freeProductTranslation = 'Free!';
	var freeShippingTranslation = 'Free shipping!';
	var generated_date = 1418889106;
	var idSelectedCountry = false;
	var idSelectedState = false;
	var id_lang = 1;
	var img_dir = 'http://pavodemo.com/prestabrain/bella/cyan/themes/pf_bella/img/';
	var instantsearch = false;
	var isGuest = 0;
	var isLogged = 0;
	var loggin_required = 'You must be logged in to manage your wishlist.';
	var max_item = 'You cannot add more than 3 product(s) to the product comparison';
	var min_item = 'Please select at least one product';
	var mywishlist_url = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?fc=module&module=blockwishlist&controller=mywishlist&id_lang=1';
	var page_name = 'authentication';
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
<script type="text/javascript" src="js/jquery.typewatch.js"></script>
<script type="text/javascript" src="js/vatManagement.js"></script>
<script type="text/javascript" src="js/statesManagement.js"></script>
<script type="text/javascript" src="js/authentication.js"></script>
<script type="text/javascript" src="js/validate.js"></script>
<script type="text/javascript" src="js/ajax-cart.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo.js"></script>
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
<body id="authentication"
	class="keep-header authentication hide-left-column hide-right-column lang_en layout-fullwidth"
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
					class="navigation-pipe"></span> <span class="navigation_page">
					Feedback</span>
			</div>
		</div>
		<!-- /Breadcrumb -->
		<div class="container main-content">
			<div class="row">
				<div id="center_column"
					class="center_column col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div id="content">
						<!---->
						<div class="row">
							<div class="col-xs-12 col-sm-12">

								<form class="std box form-horizontal" id="account-creation_form"
									method="post"
									action="<%=request.getContextPath()%>/UFeedbackServlet?flag=insert">
										<div class="form-group">
											<h3 class="control-label col-sm-4">Feedback:</h3>
											<div class="col-sm-6">
												<div class="row">
													<div class="col-sm-3 col-xs-3">
														<textarea rows="5" cols="30" name="feedback"></textarea>
													</div>
												</div>
											</div>
											</div>
										<input type="submit" value="Submit" style="margin-left:426px">
								</form>
							</div>

						</div>
					</div>
				</div>
				<!-- #center_column -->

			</div>
			<!-- #columns -->
		</div>

		</section>
		<!-- .columns-container -->

		<!-- Bottom-->

		<!-- Footer -->
		<footer id="footer"> <section id="pts-footercenter"
			class="footer-center">
		<div class="container">
			<div class="inner">
				<div class="row">

					<!-- Block myaccount module -->
					<div
						class="footer-block block col-xs-12 col-sm-4 col-md-2 col-lg-2">
						<h4 class="title_block">My account</h4>
						<ul class="list-block toggle-footer list-group">
							<li><a
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=history"
								title="My orders" rel="nofollow">My orders</a></li>
							<li><a
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=order-slip"
								title="My credit slips" rel="nofollow">My credit slips</a></li>
							<li><a
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=addresses"
								title="My addresses" rel="nofollow">My addresses</a></li>
							<li><a
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=identity"
								title="Manage my personal information" rel="nofollow">My
									personal info</a></li>

						</ul>
					</div>
					<!-- /Block myaccount module -->

					<!-- MODULE Block footer -->
					<!--<section class="footer-block block col-lg-4 col-md-4 col-sm-4 col-xs-12" id="block_various_links_footer">
		<h4 class="title_block">Extras</h4>
		<ul class="toggle-footer list-group list">
			
												<li>
	            <a href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=manufacturer" title="View a list of manufacturers">
	                Manufacturers
	            </a>
	        </li>		
		</ul>
		
	</section> -->

					<div
						class="footer-block block block_various_links col-lg-2 col-md-2 col-sm-4 col-xs-12">
						<h4 class="title_block">Information</h4>
						<ul class="block_content toggle-footer list-group list">
							<li class="item"><a
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_cms=4&amp;controller=cms&amp;id_lang=1"
								title="About us"> About us </a></li>
							<li class="item"><a
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_cms=5&amp;controller=cms&amp;id_lang=1"
								title="Secure payment"> Secure payment </a></li>
							<li class="item"><a
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_cms=6&amp;controller=cms&amp;id_lang=1"
								title="Typo"> Typo </a></li>
							<li class="item"><a
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=stores"
								title="Our stores"> Our stores </a></li>

							<li><a
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=sitemap"
								title="Sitemap"> Sitemap </a></li>
							<li><a
								href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=supplier"
								title="View a list of suppliers"> Suppliers </a></li>

						</ul>
					</div>
					<!-- /MODULE Block footer -->

					<!-- MODULE Block contact infos -->
					<div
						class="footer-block block contactinfos col-lg-3 col-md-3 col-sm-3 col-xs-12 hidden-sm">
						<h4 class="title_block">Contact info</h4>
						<div class="toggle-footer block_content">
							<div class="list-group list">Sed non mauris vitae erat
								consequat auctor eu in elit. Class aptent taciti sosqu ad litora
								torquent per conubia</div>
							<ul class="list-group list">

								<li><i class="icon-map-marker"></i>No 1104 Sky Tower,
									Newyork, USA</li>
								<li><i class="icon-phone"></i>Call us now: <span>0123-456-789</span>
								</li>
								<li><i class="icon-envelope"></i>Email: <span><a
										href="&#109;&#97;&#105;&#108;&#116;&#111;&#58;%73%61%6c%65%73@%79%6f%75%72%63%6f%6d%70%61%6e%79.%63%6f%6d">&#x73;&#x61;&#x6c;&#x65;&#x73;&#x40;&#x79;&#x6f;&#x75;&#x72;&#x63;&#x6f;&#x6d;&#x70;&#x61;&#x6e;&#x79;&#x2e;&#x63;&#x6f;&#x6d;</a></span>
								</li>
							</ul>
						</div>
					</div>
					<!-- /MODULE Block contact infos -->
					<!-- Block Newsletter module-->
					<div id="newsletter_block_left"
						class="block pts-newsletter col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<h4 class="title_block">
							<span>subscribe today</span>
						</h4>

						<div class="block_content">

							<form
								action="<%=request.getContextPath()%>/URegistrationServlet?flag=insert"
								class="formNewLestter" id="formNewLestter" method="post">
								<div class="content form-group">
									<div class="wapper">
										<div class="description">
											<span>Proin gravida nibh vel velit auctor aliquet.
												Aenean sollicitudin, lorem quis bibendum auctor, nisi elit
												consequat</span>
										</div>
										<div class="input-form">
											<input class="inputNew form-control grey newsletter-input"
												id="newsletter-input" type="text" name="email" size="18"
												value="Your e-mail" />
											<div class="button-submit">
												<button type="submit" name="submitNewsletter"
													class="text-theme-color btn btn-outline button button-newsletter">
													<span>Subcribe</span>
												</button>
											</div>
										</div>

										<input type="hidden" name="action" value="0" />

									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Block Newsletter module-->



					<div
						class="ptsstaticontent_footer staticontent-item-1 staticontent-item col-lg-2 col-md-2 col-sm-2 col-xs-12 hidden-sm">
						<div class="box block pts-custom logo-footer" data-href="#">
							<div class="mask"></div>
							<a href="#" class="item-link"> <img
								src="img/logo-footer.png.png" class="item-img img-responsive"
								alt="" />
							</a>

							<div class="block_content description" data-href="#"></div>
						</div>
					</div>

					<script type="text/javascript">
						$(document)
								.ready(
										function() {
											$('#pts-paneltool')
													.PtsPanelTools(
															{
																url : 'http://pavodemo.com/prestabrain/bella/cyan/themes/pf_bella/css/profiles/',
																'profile' : ''
															});
										});
					</script>

				</div>
			</div>
		</div>
		</section> <section id="pts-footer-top" class="footer-top parallax">
		<div class="container">
			<div class="row">



				<div
					class="ptsstaticontent_footertop staticontent-item-1 staticontent-item col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
					<div class="box block pts-custom " data-href="#">
						<div class="mask"></div>
						<a href="#" class="item-link" target="_blank"> <img
							src="img/paypal.png" class="item-img img-responsive" alt="" />
						</a>

						<div class="block_content description" data-href="#"></div>
					</div>
				</div>



			</div>
		</div>
		</section> <section id="powered">
		<div class="container">
			<div class="inner">
				<div class="row">
					<div id="pts-copyright" class="copyright">
						<div class="row">
							<div class="col-xs-12">
								<div class="copyright">
									<p>Your Store Copyright Here</p>
								</div>
								<span class="powered">Powered By <a
									href="http://www.prestashop.com" title="prestashop">Prestashop</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section> <section id="footer-bottom" class="fixed-footer">
		<div class="container">
			<div class="row">



				<div
					class="ptsstaticontent_footerbottom staticontent-item-1 staticontent-item col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
					<div class="box block pts-custom " data-href="#">
						<div class="mask"></div>
						<a href="#" class="item-link"> </a>

						<div class="block_content description" data-href="#">
							<div class="social">
								<a class="google-plus" title="" href="#" data-toggle="tooltip"
									data-placement="top" data-original-title="Google-plus"><em
									class="icon-google-plus">&nbsp; </em> </a> <a class="facebook"
									title="" href="#" data-toggle="tooltip" data-placement="top"
									data-original-title="Facebook"> <em class="icon-facebook">&nbsp;
								</em>
								</a> <a class="twitter" title="" href="#" data-toggle="tooltip"
									data-placement="top" data-original-title="Twitter"> <em
									class="icon-twitter">&nbsp; </em>
								</a><a class="rss" title="" href="#" data-toggle="tooltip"
									data-placement="top" data-original-title="Rss"> <em
									class="icon-rss">&nbsp; </em>
								</a><a class="pinterest" title="" href="#" data-toggle="tooltip"
									data-placement="top" data-original-title="Pinterest"> <em
									class="icon-pinterest">&nbsp; </em>
								</a>
							</div>
						</div>
					</div>
				</div>



			</div>
		</div>
		</section> </footer>
	</div>

	<!-- #page -->

	<div class="return-top">
		<i class="icon"></i> <span class="hidden-xs hidden-sm">Go on
			top</span>
	</div>
	<div id="fancybox-compare-add" style="display: none;">
		<div id="fancybox-html">
			<div class="msg">Add product to compare successful</div>
			<a
				href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=products-comparison"
				title="compare product"> <strong>Compare </strong>
			</a>
		</div>
	</div>
	<div id="fancybox-compare-remove" style="display: none;">
		<div id="fancybox-html">
			<div class="msg">Remove product successful</div>
			<a
				href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=products-comparison"
				title="compare product"> <strong>Click here to compare</strong>
			</a>
		</div>
	</div>
</body>
</html>