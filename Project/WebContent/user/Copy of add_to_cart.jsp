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
	var CUSTOMIZE_TEXTFIELD = 1;
	var FancyboxI18nClose = 'Close';
	var FancyboxI18nNext = 'Next';
	var FancyboxI18nPrev = 'Previous';
	var added_to_wishlist = 'Added to your wishlist.';
	var addressMultishippingUrl = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=address&back=order-opc.php%3Fstep%3D1%26multi-shipping%3D1';
	var addressUrl = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=address&back=order-opc.php%3Fstep%3D1';
	var addressUrlAdd = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=address&back=order-opc.php%3Fstep%3D1&id_address=';
	var addresses = [];
	var ajax_allowed = true;
	var ajaxcontent_url = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?fc=module&module=ptsinfiniteproducts&controller=infinite&id_lang=1';
	var ajaxsearch = true;
	var authenticationUrl = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=authentication';
	var baseDir = 'http://pavodemo.com/prestabrain/bella/cyan/';
	var baseUri = 'http://pavodemo.com/prestabrain/bella/cyan/index.php';
	var checkedCarrier = 1200;
	var comparator_max_item = 3;
	var comparedProductsIds = [];
	var conditionEnabled = 1;
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
	var currencyBlank = 0;
	var currencyFormat = 1;
	var currencyRate = 1;
	var currencySign = '$';
	var customizationIdMessage = 'Customization #';
	var delete_txt = 'Delete';
	var deliveryAddress = 0;
	var displayList = false;
	var displayPrice = 1;
	var errorCarrier = 'You must choose a carrier.';
	var errorTOS = 'You must accept the Terms of Service.';
	var freeProductTranslation = 'Free!';
	var freeShippingTranslation = 'Free shipping!';
	var generated_date = 1428125925;
	var guestCheckoutEnabled = 0;
	var guestTrackingUrl = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=guest-tracking';
	var historyUrl = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=history';
	var idSelectedCountry = false;
	var idSelectedCountryInvoice = false;
	var idSelectedState = false;
	var idSelectedStateInvoice = false;
	var id_lang = 1;
	var imgDir = 'http://pavodemo.comimg/';
	var img_dir = 'http://pavodemo.comimg/';
	var instantsearch = false;
	var isGuest = 0;
	var isLogged = 0;
	var isPaymentStep = 0;
	var isVirtualCart = 0;
	var liUpdate = '<a class="button button-small btn btn-default" href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=address&back=order-opc.php%3Fstep%3D1&id_address=" title="Update"><span>Update<i class="icon-chevron-right right"></i></span></a>';
	var loggin_required = 'You must be logged in to manage your wishlist.';
	var max_item = 'You cannot add more than 3 product(s) to the product comparison';
	var min_item = 'Please select at least one product';
	var msg_order_carrier = 'You must agree to the terms of service before continuing.';
	var mywishlist_url = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?fc=module&module=blockwishlist&controller=mywishlist&id_lang=1';
	var opc = true;
	var orderOpcUrl = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=order-opc';
	var orderProcess = 'order-opc';
	var page_name = 'order-opc';
	var placeholder_blocknewsletter = 'Your e-mail';
	var priceDisplayMethod = 1;
	var priceDisplayPrecision = 2;
	var ptsblocksearch_type = 'top';
	var quickView = true;
	var removingLinkText = 'remove this product from my cart';
	var roundMode = 2;
	var search_url = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=search';
	var static_token = 'fc8f4b82bcc66cb7501c4b081e23c92b';
	var taxEnabled = 1;
	var titleDelivery = '<h3 class="page-subheading">Your delivery address</h3>';
	var titleInvoice = '<h3 class="page-subheading">Your billing address</h3>';
	var token = '89f3504c3b5030a19654a3f285e35596';
	var txtConditionsIsNotNeeded = 'You do not need to accept the Terms of Service for this order.';
	var txtDeliveryAddress = 'Delivery address';
	var txtErrors = 'Error(s)';
	var txtFree = 'Free';
	var txtHasBeenSelected = 'has been selected';
	var txtInstantCheckout = 'Instant checkout';
	var txtInvoiceAddress = 'Invoice address';
	var txtModifyMyAddress = 'Modify my address';
	var txtNoCarrierIsNeeded = 'No carrier is needed for this order';
	var txtNoCarrierIsSelected = 'No carrier has been selected';
	var txtProduct = 'product';
	var txtProducts = 'products';
	var txtSelectAnAddressFirst = 'Please start by selecting an address.';
	var txtTOSIsAccepted = 'The service terms have been accepted';
	var txtTOSIsNotAccepted = 'The service terms have not been accepted';
	var txtThereis = 'There is';
	var txtWithTax = '(tax incl.)';
	var txtWithoutTax = '(tax excl.)';
	var usingSecureMode = false;
	var vat_management = 0;
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
<script type="text/javascript" src="js/order-address.js"></script>
<script type="text/javascript" src="js/jquery.typewatch.js"></script>
<script type="text/javascript" src="js/cart-summary.js"></script>
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


						<div id="order-detail-content"
							class="table_block table-responsive">
							<table id="cart_summary"
								class="table table-bordered stock-management-off">
								<thead>
									<tr>
										<th class="cart_product first_item">Product</th>
										<th class="cart_description item">Description</th>
										<th class="cart_unit item">Unit price</th>
										<th class="cart_quantity item">Qty</th>
										<th class="cart_total item">Total</th>
										<th class="cart_delete last_item">&nbsp;</th>
									</tr>

								</thead>
								<tfoot>
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
								</tfoot>
								<tbody>
									<c:forEach items="${sessionScope.product_data }" var="i">

									
									<tr id="product_15_70_0_0"
										class="cart_item first_item address_0 odd">
										<td class="cart_product"><a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=15&amp;controller=product&amp;id_lang=1#/size-one_size/color-green"><img
												src="<%=request.getContextPath() %>/doc/${i.path}"
												alt="Aliquam ac lectus" width="80" height="100" /></a></td>
										<td class="cart_description">
											<p class="product-name">
												<a
													href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=15&amp;controller=product&amp;id_lang=1#/size-one_size/color-green">${i.clothObj.product_name }</a>
											</p> <small><a
												href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=15&amp;controller=product&amp;id_lang=1#/size-one_size/color-green">Color
													: Green, Size : One size</a></small>
										</td>
										<td class="cart_unit" data-title="Unit price"><span
											class="price" id="product_price_15_70_0"> <span
												class="price special-price">${i.clothObj.price }</span>
										</span></td>

										<td class="cart_quantity text-center"><input
											type="hidden" value="1" name="quantity_15_70_0_0_hidden" />
											<input size="2" type="text" autocomplete="off"
											class="cart_quantity_input form-control grey" value="1"
											name="quantity_15_70_0_0" />
											<div class="cart_quantity_button clearfix">
												<a rel="nofollow" class="cart_quantity_down button-minus"
													id="cart_quantity_down_15_70_0_0"
													href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=cart&amp;add=1&amp;id_product=15&amp;ipa=70&amp;id_address_delivery=0&amp;op=down&amp;token=fc8f4b82bcc66cb7501c4b081e23c92b"
													title="Subtract"> <span><i class="icon-minus"></i></span>
												</a> <a rel="nofollow" class="cart_quantity_up button-plus"
													id="cart_quantity_up_15_70_0_0"
													href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=cart&amp;add=1&amp;id_product=15&amp;ipa=70&amp;id_address_delivery=0&amp;token=fc8f4b82bcc66cb7501c4b081e23c92b"
													title="Add"><span><i class="icon-plus"></i></span></a>
											</div></td>
										<td class="cart_total" data-title="Total"><span
											class="price" id="total_product_price_15_70_0"> $41.50
										</span></td>
										<td class="cart_delete text-center" data-title="Delete">
											<div>
												<a rel="nofollow" title="Delete"
													class="cart_quantity_delete" id="15_70_0_0"
													href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=cart&amp;delete=1&amp;id_product=15&amp;ipa=70&amp;id_address_delivery=0&amp;token=fc8f4b82bcc66cb7501c4b081e23c92b"><i
													class="icon-trash-o"></i></a>
											</div>
										</td>
									</tr>

</c:forEach>

								</tbody>
							</table>
						</div>
						<!-- end order-detail-content -->





						<div id="HOOK_SHOPPING_CART"></div>
						<p class="cart_navigation clearfix">
							<a
								href="<%=request.getContextPath() %>/UMenuServlet"
								class="btn button-small pull-left" title="Continue shopping">
								<i class="icon-chevron-left"></i>Continue shopping
							</a>
						</p>


						<!-- End Shopping Cart -->
						<!-- Create account / Guest account / Login block -->
						<div id="opc_new_account" class="opc-main-block">
							<div id="opc_new_account-overlay" class="opc-overlay"
								style="display: none;"></div>
							<h1 class="page-heading step-num">
								<span>1</span> Account
							</h1>
							<form
								action="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=authentication&amp;back=order-opc"
								method="post" id="login_form" class="box form-horizontal">
								<fieldset>
									<h3 class="page-subheading">Already registered?</h3>
									<p>
										<a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=authentication"
											id="openLoginFormBlock">&raquo; Click here</a>
									</p>
									<div id="login_form_content" style="display: none;">
										<!-- Error return block -->
										<div id="opc_login_errors" class="alert alert-danger"
											style="display: none;"></div>
										<!-- END Error return block -->
										<div class="form-group">
											<label class="control-label col-sm-4" for="login_email">Email
												address</label>
											<div class="col-sm-6">
												<input type="text" class="form-control validate"
													id="login_email" name="email" data-validate="isEmail" />
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-4" for="login_passwd">Password</label>
											<div class="col-sm-6">
												<input class="form-control validate" type="password"
													id="login_passwd" name="login_passwd"
													data-validate="isPasswd" />
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-4 col-sm-8">
												<a
													href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=password"
													class="lost_password">Forgot your password?</a>
												<p class="submit">
													<input type="hidden" class="hidden" name="back" value="" />
													<button type="submit" id="SubmitLogin" name="SubmitLogin"
														class="button btn btn-default button-medium">
														<span><i class="icon-lock left"></i>Sign in</span>
													</button>
												</p>
											</div>
										</div>
									</div>
								</fieldset>
							</form>
							<form
								action="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=authentication"
								method="post" id="new_account_form" class="std form-horizontal"
								autocomplete="on" autofill="on">
								<fieldset>
									<div class="box">
										<h3 id="new_account_title" class="page-subheading">New
											Customer</h3>
										<div id="opc_account_choice" class="row">
											<div class="col-xs-12 col-md-6">
												<p class="title_block">Instant Checkout</p>
												<p class="opc-button">
													<button type="submit"
														class="btn btn-outline button button-medium exclusive"
														id="opc_guestCheckout">
														<span>Guest checkout</span>
													</button>
												</p>
											</div>

											<div class="col-xs-12 col-md-6">
												<p class="title_block">Create your account today and
													enjoy:</p>
												<ul class="bullet">
													<li>- Personalized and secure access</li>
													<li>- A fast and easy check out process</li>
													<li>- Separate billing and shipping addresses</li>
												</ul>
												<p class="opc-button">
													<button type="submit"
														class="btn btn-outline button button-medium exclusive"
														id="opc_createAccount">
														<span><i class="icon-user left"></i>Create an
															account</span>
													</button>
												</p>
											</div>
										</div>
										<div id="opc_account_form" class="unvisible">

											<!-- Error return block -->
											<div id="opc_account_errors" class="alert alert-danger"
												style="display: none;"></div>
											<!-- END Error return block -->
											<!-- Account -->
											<input type="hidden" id="is_new_customer"
												name="is_new_customer" value="0" /> <input type="hidden"
												id="opc_id_customer" name="opc_id_customer" value="0" /> <input
												type="hidden" id="opc_id_address_delivery"
												name="opc_id_address_delivery" value="0" /> <input
												type="hidden" id="opc_id_address_invoice"
												name="opc_id_address_invoice" value="0" />
											<div class="required text form-group">
												<label class="control-label col-sm-4" for="email">Email
													<sup>*</sup>
												</label>
												<div class="col-sm-6">
													<input type="text" class="text form-control validate"
														id="email" name="email" data-validate="isEmail" value="" />
												</div>
											</div>
											<div class="required password is_customer_param form-group">
												<label class="control-label col-sm-4" for="passwd">Password
													<sup>*</sup>
												</label>
												<div class="col-sm-6">
													<input type="password" class="text form-control validate"
														name="passwd" id="passwd" data-validate="isPasswd" /> <span
														class="form_info">(five characters min.)</span>
												</div>
											</div>
											<div class="required clearfix gender-line">
												<label class="control-label col-sm-4">Title</label>
												<div class="col-sm-6">

													<div class="radio-inline">
														<label for="id_gender1" class="top"> <input
															type="radio" name="id_gender" id="id_gender1" value="1" />
															Mr.
														</label>
													</div>

													<div class="radio-inline">
														<label for="id_gender2" class="top"> <input
															type="radio" name="id_gender" id="id_gender2" value="2" />
															Mrs.
														</label>
													</div>
												</div>
											</div>
											<div class="required form-group">
												<label class="control-label col-sm-4" for="firstname">First
													name <sup>*</sup>
												</label>
												<div class="col-sm-6">
													<input type="text" class="text form-control validate"
														id="customer_firstname" name="customer_firstname"
														onblur="$('#firstname').val($(this).val());"
														data-validate="isName" value="" />
												</div>
											</div>
											<div class="required form-group">
												<label class="control-label col-sm-4" for="lastname">Last
													name <sup>*</sup>
												</label>
												<div class="col-sm-6">
													<input type="text" class="form-control validate"
														id="customer_lastname" name="customer_lastname"
														onblur="$('#lastname').val($(this).val());"
														data-validate="isName" value="" />
												</div>
											</div>
											<div class="select form-group date-select">
												<label class="control-label col-sm-4">Date of Birth</label>
												<div class="col-sm-6">
													<div class="row">
														<div class="col-sm-3 col-xs-3">
															<select id="days" name="days" class="form-control">
																<option value="">-</option>
																<option value="1">1&nbsp;&nbsp;</option>
																<option value="2">2&nbsp;&nbsp;</option>
																<option value="3">3&nbsp;&nbsp;</option>
																<option value="4">4&nbsp;&nbsp;</option>
																<option value="5">5&nbsp;&nbsp;</option>
																<option value="6">6&nbsp;&nbsp;</option>
																<option value="7">7&nbsp;&nbsp;</option>
																<option value="8">8&nbsp;&nbsp;</option>
																<option value="9">9&nbsp;&nbsp;</option>
																<option value="10">10&nbsp;&nbsp;</option>
																<option value="11">11&nbsp;&nbsp;</option>
																<option value="12">12&nbsp;&nbsp;</option>
																<option value="13">13&nbsp;&nbsp;</option>
																<option value="14">14&nbsp;&nbsp;</option>
																<option value="15">15&nbsp;&nbsp;</option>
																<option value="16">16&nbsp;&nbsp;</option>
																<option value="17">17&nbsp;&nbsp;</option>
																<option value="18">18&nbsp;&nbsp;</option>
																<option value="19">19&nbsp;&nbsp;</option>
																<option value="20">20&nbsp;&nbsp;</option>
																<option value="21">21&nbsp;&nbsp;</option>
																<option value="22">22&nbsp;&nbsp;</option>
																<option value="23">23&nbsp;&nbsp;</option>
																<option value="24">24&nbsp;&nbsp;</option>
																<option value="25">25&nbsp;&nbsp;</option>
																<option value="26">26&nbsp;&nbsp;</option>
																<option value="27">27&nbsp;&nbsp;</option>
																<option value="28">28&nbsp;&nbsp;</option>
																<option value="29">29&nbsp;&nbsp;</option>
																<option value="30">30&nbsp;&nbsp;</option>
																<option value="31">31&nbsp;&nbsp;</option>
															</select>

														</div>
														<div class="col-sm-6 col-xs-6">
															<select id="months" name="months" class="form-control">
																<option value="">-</option>
																<option value="1">January&nbsp;</option>
																<option value="2">February&nbsp;</option>
																<option value="3">March&nbsp;</option>
																<option value="4">April&nbsp;</option>
																<option value="5">May&nbsp;</option>
																<option value="6">June&nbsp;</option>
																<option value="7">July&nbsp;</option>
																<option value="8">August&nbsp;</option>
																<option value="9">September&nbsp;</option>
																<option value="10">October&nbsp;</option>
																<option value="11">November&nbsp;</option>
																<option value="12">December&nbsp;</option>
															</select>
														</div>
														<div class="col-sm-3 col-xs-3">
															<select id="years" name="years" class="form-control">
																<option value="">-</option>
																<option value="2015">2015&nbsp;&nbsp;</option>
																<option value="2014">2014&nbsp;&nbsp;</option>
																<option value="2013">2013&nbsp;&nbsp;</option>
																<option value="2012">2012&nbsp;&nbsp;</option>
																<option value="2011">2011&nbsp;&nbsp;</option>
																<option value="2010">2010&nbsp;&nbsp;</option>
																<option value="2009">2009&nbsp;&nbsp;</option>
																<option value="2008">2008&nbsp;&nbsp;</option>
																<option value="2007">2007&nbsp;&nbsp;</option>
																<option value="2006">2006&nbsp;&nbsp;</option>
																<option value="2005">2005&nbsp;&nbsp;</option>
																<option value="2004">2004&nbsp;&nbsp;</option>
																<option value="2003">2003&nbsp;&nbsp;</option>
																<option value="2002">2002&nbsp;&nbsp;</option>
																<option value="2001">2001&nbsp;&nbsp;</option>
																<option value="2000">2000&nbsp;&nbsp;</option>
																<option value="1999">1999&nbsp;&nbsp;</option>
																<option value="1998">1998&nbsp;&nbsp;</option>
																<option value="1997">1997&nbsp;&nbsp;</option>
																<option value="1996">1996&nbsp;&nbsp;</option>
																<option value="1995">1995&nbsp;&nbsp;</option>
																<option value="1994">1994&nbsp;&nbsp;</option>
																<option value="1993">1993&nbsp;&nbsp;</option>
																<option value="1992">1992&nbsp;&nbsp;</option>
																<option value="1991">1991&nbsp;&nbsp;</option>
																<option value="1990">1990&nbsp;&nbsp;</option>
																<option value="1989">1989&nbsp;&nbsp;</option>
																<option value="1988">1988&nbsp;&nbsp;</option>
																<option value="1987">1987&nbsp;&nbsp;</option>
																<option value="1986">1986&nbsp;&nbsp;</option>
																<option value="1985">1985&nbsp;&nbsp;</option>
																<option value="1984">1984&nbsp;&nbsp;</option>
																<option value="1983">1983&nbsp;&nbsp;</option>
																<option value="1982">1982&nbsp;&nbsp;</option>
																<option value="1981">1981&nbsp;&nbsp;</option>
																<option value="1980">1980&nbsp;&nbsp;</option>
																<option value="1979">1979&nbsp;&nbsp;</option>
																<option value="1978">1978&nbsp;&nbsp;</option>
																<option value="1977">1977&nbsp;&nbsp;</option>
																<option value="1976">1976&nbsp;&nbsp;</option>
																<option value="1975">1975&nbsp;&nbsp;</option>
																<option value="1974">1974&nbsp;&nbsp;</option>
																<option value="1973">1973&nbsp;&nbsp;</option>
																<option value="1972">1972&nbsp;&nbsp;</option>
																<option value="1971">1971&nbsp;&nbsp;</option>
																<option value="1970">1970&nbsp;&nbsp;</option>
																<option value="1969">1969&nbsp;&nbsp;</option>
																<option value="1968">1968&nbsp;&nbsp;</option>
																<option value="1967">1967&nbsp;&nbsp;</option>
																<option value="1966">1966&nbsp;&nbsp;</option>
																<option value="1965">1965&nbsp;&nbsp;</option>
																<option value="1964">1964&nbsp;&nbsp;</option>
																<option value="1963">1963&nbsp;&nbsp;</option>
																<option value="1962">1962&nbsp;&nbsp;</option>
																<option value="1961">1961&nbsp;&nbsp;</option>
																<option value="1960">1960&nbsp;&nbsp;</option>
																<option value="1959">1959&nbsp;&nbsp;</option>
																<option value="1958">1958&nbsp;&nbsp;</option>
																<option value="1957">1957&nbsp;&nbsp;</option>
																<option value="1956">1956&nbsp;&nbsp;</option>
																<option value="1955">1955&nbsp;&nbsp;</option>
																<option value="1954">1954&nbsp;&nbsp;</option>
																<option value="1953">1953&nbsp;&nbsp;</option>
																<option value="1952">1952&nbsp;&nbsp;</option>
																<option value="1951">1951&nbsp;&nbsp;</option>
																<option value="1950">1950&nbsp;&nbsp;</option>
																<option value="1949">1949&nbsp;&nbsp;</option>
																<option value="1948">1948&nbsp;&nbsp;</option>
																<option value="1947">1947&nbsp;&nbsp;</option>
																<option value="1946">1946&nbsp;&nbsp;</option>
																<option value="1945">1945&nbsp;&nbsp;</option>
																<option value="1944">1944&nbsp;&nbsp;</option>
																<option value="1943">1943&nbsp;&nbsp;</option>
																<option value="1942">1942&nbsp;&nbsp;</option>
																<option value="1941">1941&nbsp;&nbsp;</option>
																<option value="1940">1940&nbsp;&nbsp;</option>
																<option value="1939">1939&nbsp;&nbsp;</option>
																<option value="1938">1938&nbsp;&nbsp;</option>
																<option value="1937">1937&nbsp;&nbsp;</option>
																<option value="1936">1936&nbsp;&nbsp;</option>
																<option value="1935">1935&nbsp;&nbsp;</option>
																<option value="1934">1934&nbsp;&nbsp;</option>
																<option value="1933">1933&nbsp;&nbsp;</option>
																<option value="1932">1932&nbsp;&nbsp;</option>
																<option value="1931">1931&nbsp;&nbsp;</option>
																<option value="1930">1930&nbsp;&nbsp;</option>
																<option value="1929">1929&nbsp;&nbsp;</option>
																<option value="1928">1928&nbsp;&nbsp;</option>
																<option value="1927">1927&nbsp;&nbsp;</option>
																<option value="1926">1926&nbsp;&nbsp;</option>
																<option value="1925">1925&nbsp;&nbsp;</option>
																<option value="1924">1924&nbsp;&nbsp;</option>
																<option value="1923">1923&nbsp;&nbsp;</option>
																<option value="1922">1922&nbsp;&nbsp;</option>
																<option value="1921">1921&nbsp;&nbsp;</option>
																<option value="1920">1920&nbsp;&nbsp;</option>
																<option value="1919">1919&nbsp;&nbsp;</option>
																<option value="1918">1918&nbsp;&nbsp;</option>
																<option value="1917">1917&nbsp;&nbsp;</option>
																<option value="1916">1916&nbsp;&nbsp;</option>
																<option value="1915">1915&nbsp;&nbsp;</option>
																<option value="1914">1914&nbsp;&nbsp;</option>
																<option value="1913">1913&nbsp;&nbsp;</option>
																<option value="1912">1912&nbsp;&nbsp;</option>
																<option value="1911">1911&nbsp;&nbsp;</option>
																<option value="1910">1910&nbsp;&nbsp;</option>
																<option value="1909">1909&nbsp;&nbsp;</option>
																<option value="1908">1908&nbsp;&nbsp;</option>
																<option value="1907">1907&nbsp;&nbsp;</option>
																<option value="1906">1906&nbsp;&nbsp;</option>
																<option value="1905">1905&nbsp;&nbsp;</option>
																<option value="1904">1904&nbsp;&nbsp;</option>
																<option value="1903">1903&nbsp;&nbsp;</option>
																<option value="1902">1902&nbsp;&nbsp;</option>
																<option value="1901">1901&nbsp;&nbsp;</option>
																<option value="1900">1900&nbsp;&nbsp;</option>
															</select>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-offset-4 col-sm-8">
													<div class="checkbox">
														<label for="newsletter"> <input type="checkbox"
															name="newsletter" id="newsletter" value="1"
															autocomplete="off" /> Sign up for our newsletter!
														</label>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-offset-4 col-sm-8">
													<div class="checkbox">
														<label for="optin"> <input type="checkbox"
															name="optin" id="optin" value="1" autocomplete="off" />
															Receive special offers from our partners!
														</label>
													</div>
												</div>
											</div>
											<h3 class="page-subheading top-indent">Delivery address</h3>
											<div class="required text form-group">
												<label class="control-label col-sm-4" for="firstname">First
													name <sup>*</sup>
												</label>
												<div class="col-sm-6">
													<input type="text" class="text form-control validate"
														id="firstname" name="firstname" data-validate="isName"
														value="" />
												</div>
											</div>
											<div class="required text form-group">
												<label class="control-label col-sm-4" for="lastname">Last
													name <sup>*</sup>
												</label>
												<div class="col-sm-6">
													<input type="text" class="text form-control validate"
														id="lastname" name="lastname" data-validate="isName"
														value="" />
												</div>
											</div>
											<div class="required text form-group">
												<label class="control-label col-sm-4" for="address1">Address
													<sup>*</sup>
												</label>
												<div class="col-sm-6">
													<input type="text" class="text form-control validate"
														name="address1" id="address1" data-validate="isAddress"
														value="" />
												</div>
											</div>
											<div class="text is_customer_param form-group">
												<label class="control-label col-sm-4" for="address2">Address
													(Line 2)</label>
												<div class="col-sm-6">
													<input type="text" class="text form-control validate"
														name="address2" id="address2" data-validate="isAddress"
														value="" />
												</div>
											</div>
											<div class="required text form-group">
												<label class="control-label col-sm-4" for="city">City
													<sup>*</sup>
												</label>
												<div class="col-sm-6">
													<input type="text" class="text form-control validate"
														name="city" id="city" data-validate="isCityName" value="" />
												</div>
											</div>
											<div class="required id_state form-group"
												style="display: none;">
												<label class="control-label col-sm-4" for="id_state">State
													<sup>*</sup>
												</label>
												<div class="col-sm-6">
													<select name="id_state" id="id_state" class="form-control">
														<option value="">-</option>
													</select>
												</div>
											</div>
											<div class="required postcode text form-group">
												<label class="control-label col-sm-4" for="postcode">Zip
													/ Postal code <sup>*</sup>
												</label>
												<div class="col-sm-6">
													<input type="text" class="text form-control validate"
														name="postcode" id="postcode" data-validate="isPostCode"
														value=""
														onkeyup="$('#postcode').val($('#postcode').val().toUpperCase());" />
												</div>
											</div>
											<div class="required select form-group">
												<label class="control-label col-sm-4" for="id_country">Country
													<sup>*</sup>
												</label>
												<div class="col-sm-6">
													<select name="id_country" id="id_country"
														class="form-control">
														<option value="21" selected="selected">United
															States</option>
													</select>
												</div>
											</div>

											<div class="required dni form-group">
												<label class="control-label col-sm-4" for="dni">Identification
													number <sup>*</sup>
												</label>
												<div class="col-sm-6">
													<input type="text" class="text form-control validate"
														name="dni" id="dni" data-validate="isDniLite" value="" />
													<span class="form_info">DNI / NIF / NIE</span>
												</div>
											</div>
											<div class="form-group is_customer_param">
												<label class="control-label col-sm-4" for="other">Additional
													information</label>
												<div class="col-sm-6">
													<textarea class="form-control" name="other" id="other"
														cols="26" rows="7"></textarea>
												</div>
											</div>
											<div class="inline-infos required is_customer_param">
												<label class="col-sm-offset-4 col-sm-6">You must
													register at least one phone number.</label>
											</div>

											<div class="form-group is_customer_param">
												<label class="control-label col-sm-4" for="phone">Home
													phone</label>
												<div class="col-sm-6">
													<input type="text" class="text form-control validate"
														name="phone" id="phone" data-validate="isPhoneNumber"
														value="" />
												</div>
											</div>
											<div class="required form-group">
												<label class="control-label col-sm-4" for="phone_mobile">Mobile
													phone <sup>*</sup>
												</label>
												<div class="col-sm-6">
													<input type="text" class="text form-control validate"
														name="phone_mobile" id="phone_mobile"
														data-validate="isPhoneNumber" value="" />
												</div>
											</div>
											<input type="hidden" name="alias" id="alias"
												value="My address" />
											<div class="form-group">
												<div class="col-sm-offset-4 col-sm-8">
													<div class="checkbox">
														<label for="invoice_address"> <input
															type="checkbox" name="invoice_address"
															id="invoice_address" autocomplete="off" /> Please use
															another address for invoice
														</label>
													</div>
												</div>
											</div>

											<div id="opc_invoice_address" class="is_customer_param">
												<h3 class="page-subheading top-indent">Invoice address</h3>
												<div class="required form-group">
													<label class="control-label col-sm-4"
														for="firstname_invoice">First name <sup>*</sup></label>
													<div class="col-sm-6">
														<input type="text" class="form-control validate"
															id="firstname_invoice" name="firstname_invoice"
															data-validate="isName" value="" />
													</div>
												</div>
												<div class="required form-group">
													<label class="control-label col-sm-4"
														for="lastname_invoice">Last name <sup>*</sup></label>
													<div class="col-sm-6">
														<input type="text" class="form-control validate"
															id="lastname_invoice" name="lastname_invoice"
															data-validate="isName" value="" />
													</div>
												</div>
												<div class="required form-group">
													<label class="control-label col-sm-4"
														for="address1_invoice">Address <sup>*</sup></label>
													<div class="col-sm-6">
														<input type="text" class="form-control validate"
															name="address1_invoice" id="address1_invoice"
															data-validate="isAddress" value="" />
													</div>
												</div>
												<div class="form-group is_customer_param">
													<label class="control-label col-sm-4"
														for="address2_invoice">Address (Line 2)</label>
													<div class="col-sm-6">
														<input type="text" class="form-control address"
															name="address2_invoice" id="address2_invoice"
															data-validate="isAddress" value="" />
													</div>
												</div>
												<div class="required form-group">
													<label class="control-label col-sm-4" for="city_invoice">City
														<sup>*</sup>
													</label>
													<div class="col-sm-6">
														<input type="text" class="form-control validate"
															name="city_invoice" id="city_invoice"
															data-validate="isCityName" value="" />
													</div>
												</div>
												<div class="required id_state_invoice form-group"
													style="display: none;">
													<label class="control-label col-sm-4"
														for="id_state_invoice">State <sup>*</sup></label>
													<div class="col-sm-6">
														<select name="id_state_invoice" id="id_state_invoice"
															class="form-control">
															<option value="">-</option>
														</select>
													</div>
												</div>
												<div class="required postcode_invoice form-group">
													<label class="control-label col-sm-4"
														for="postcode_invoice">Zip / Postal Code <sup>*</sup></label>
													<div class="col-sm-6">
														<input type="text" class="form-control validate"
															name="postcode_invoice" id="postcode_invoice"
															data-validate="isPostCode" value=""
															onkeyup="$('#postcode_invoice').val($('#postcode_invoice').val().toUpperCase());" />
													</div>
												</div>
												<div class="required form-group">
													<label class="control-label col-sm-4"
														for="id_country_invoice">Country <sup>*</sup></label>
													<div class="col-sm-6">
														<select name="id_country_invoice" id="id_country_invoice"
															class="form-control">
															<option value="">-</option>
															<option value="21" selected="selected">United
																States</option>
														</select>
													</div>
												</div>

												<div class="required form-group dni_invoice">
													<label class="control-label col-sm-4" for="dni">Identification
														number <sup>*</sup>
													</label>
													<div class="col-sm-6">
														<input type="text" class="text form-control validate"
															name="dni_invoice" id="dni_invoice"
															data-validate="isDniLite" value="" /> <span
															class="form_info">DNI / NIF / NIE</span>
													</div>
												</div>
												<div class="form-group is_customer_param">
													<label class="control-label col-sm-4" for="other_invoice">Additional
														information</label>
													<div class="col-sm-6">
														<textarea class="form-control" name="other_invoice"
															id="other_invoice" cols="26" rows="3"></textarea>
													</div>
												</div>
												<div class="inline-infos required is_customer_param">
													<label class="col-sm-offset-4 col-sm-6">You must
														register at least one phone number.</label>
												</div>

												<div class="form-group is_customer_param">
													<label class="control-label col-sm-4" for="phone_invoice">Home
														phone</label>
													<div class="col-sm-6">
														<input type="text" class="form-control validate"
															name="phone_invoice" id="phone_invoice"
															data-validate="isPhoneNumber" value="" />
													</div>
												</div>
												<div class="required form-group">
													<label class="control-label col-sm-4"
														for="phone_mobile_invoice">Mobile phone <sup>*</sup></label>
													<div class="col-sm-6">
														<input type="text" class="form-control validate"
															name="phone_mobile_invoice" id="phone_mobile_invoice"
															data-validate="isPhoneNumber" value="" />
													</div>
												</div>
												<input type="hidden" name="alias_invoice" id="alias_invoice"
													value="My Invoice address" />
											</div>

											<div class="submit opc-add-save clearfix">
												<p class="required opc-required pull-right">
													<sup>*</sup>Required field
												</p>
												<button type="submit" name="submitAccount"
													id="submitAccount"
													class="btn btn-outline button button-medium">
													<span>Save<i class="icon-chevron-right right"></i></span>
												</button>

											</div>
											<div style="display: none;" id="opc_account_saved"
												class="alert alert-success">Account information saved
												successfully</div>
											<!-- END Account -->
										</div>
									</div>
								</fieldset>
							</form>
						</div>

						<!-- END Create account / Guest account / Login block -->
						<!-- Carrier -->
						<div id="carrier_area" class="opc-main-block">
							<h1 class="page-heading step-num">
								<span>2</span> Delivery methods
							</h1>
							<div id="opc_delivery_methods" class="opc-main-block">
								<div id="opc_delivery_methods-overlay" class="opc-overlay"
									style="display: none;"></div>
								<div class="order_carrier_content box">
									<div id="HOOK_BEFORECARRIER"></div>
									<div class="checkbox">
										<label for="recyclable"> <input type="checkbox"
											name="recyclable" id="recyclable" value="1" /> I would like
											to receive my order in recycled packaging..
										</label>
									</div>
									<div class="delivery_options_address">
										<p class="carrier_title">Choose a shipping option</p>
										<div class="delivery_options">
											<div class="delivery_option item">
												<div>
													<table class="resume table table-bordered">
														<tr>
															<td class="delivery_option_radio"><input
																id="delivery_option_0_0" class="delivery_option_radio"
																type="radio" name="delivery_option[0]" data-key="2,"
																data-id_address="0" value="2," checked="checked" /></td>
															<td class="delivery_option_logo"><img
																src="/prestabrain/bella/cyan/img/s/2.jpg"
																alt="My carrier" /></td>
															<td><strong>My carrier</strong> Delivery next day!</td>
															<td class="delivery_option_price">
																<div class="delivery_option_price">$2.00</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<!-- end delivery_option -->
										</div>
										<!-- end delivery_options -->
										<div class="hook_extracarrier" id="HOOK_EXTRACARRIER_0"></div>
									</div>
									<!-- end delivery_options_address -->
									<p class="carrier_title">Leave a message</p>
									<div>
										<p>If you would like to add a comment about your order,
											please write it in the field below.</p>
										<textarea class="form-control" cols="120" rows="2"
											name="message" id="message"></textarea>
									</div>
									<hr style="" />
									<div id="extra_carrier" style="display: none;"></div>
									<p class="carrier_title">Terms of service</p>
									<p class="checkbox">
										<input type="checkbox" name="cgv" id="cgv" value="1" /> <label
											for="cgv">I agree to the terms of service and will
											adhere to them unconditionally.</label> <a
											href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_cms=3&amp;controller=cms&amp;id_lang=1&amp;content_only=1"
											class="iframe" rel="nofollow">(Read the Terms of Service)</a>
									</p>
								</div>
								<!-- end delivery_options_address -->
							</div>
							<!-- end opc_delivery_methods -->
						</div>
						<!-- end carrier_area -->

						<!-- END Carrier -->

						<!-- Payment -->
						<h1 class="page-heading step-num">
							<span>3</span> Please choose your payment method
						</h1>

						<div id="opc_payment_methods" class="opc-main-block">
							<div id="opc_payment_methods-overlay" class="opc-overlay"
								style="display: none;"></div>
							<div class="paiement_block">
								<div id="HOOK_TOP_PAYMENT"></div>
								<div id="opc_payment_methods-content">
									<div id="HOOK_PAYMENT">
										<p class="warning">Please sign in to see payment methods.</p>
									</div>
								</div>
								<!-- end opc_payment_methods-content -->
							</div>
							<!-- end opc_payment_methods -->
						</div>
						<!-- end HOOK_TOP_PAYMENT -->
						<!-- END Payment -->

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
								action="http://pavodemo.com/prestabrain/bella/cyan/index.php"
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
								src="/prestabrain/bella/cyan/modules/ptsstaticcontent/images/logo-footer.png.png"
								class="item-img img-responsive" alt="" />
							</a>

							<div class="block_content description" data-href="#"></div>
						</div>
					</div>



					<div id="pts-panelthemechanger"
						class="hidden-xs hidden-sm pts-paneltool themechanger">


						<div class=" pts-panelbutton">
							<i class="icon icon-gear"></i>
						</div>
						<div class="paneltool editortool pts-panelcontent">
							<div class="pts-customize panelcontent">
								<form action="#" method="post" id="panethemesettingfrm">
									<div class="form-group">
										<div class="pts-paneltitle">
											<b>RTL Mode</b> <select name="rtl_mode" id="pts-themelangrtl">
												<option value="0">No</option>
												<option value="1">Yes</option>

											</select>
										</div>
									</div>
									<div class="pts-paneltitle">
										<b>Theme Skins</b>
									</div>
									<div class="form-group">
										<div id="pts-themecollection" class="themecollection clearfix">
											<div class="theme-default btn-switchskin"
												data-theme="default">
												<div class="theme-preview"></div>
											</div>
											<div class="theme-cyan btn-switchskin" data-theme="cyan">
												<div class="theme-preview"></div>
											</div>
											<div class="theme-green btn-switchskin" data-theme="green">
												<div class="theme-preview"></div>
											</div>
										</div>
										<input type="hidden" name="themeskin" value="cyan" />
									</div>
									<button type="submit" class="btn btn-primary"
										id="btn-resettheme" name="resetDemoTheme">Reset</button>
									<button type="submit" class="btn btn-warning"
										name="applyCustomSkinChanger">Apple Change Now</button>

								</form>
							</div>
						</div>
					</div>

					<div id="pts-paneltool" class="hidden-xs hidden-sm pts-paneltool">


						<div class=" pts-panelbutton">
							<i class="icon icon-magic"></i>
						</div>

						<div class="paneltool editortool pts-panelcontent">
							<form enctype="multipart/form-data"
								action="http://pavodemo.com/prestabrain/bella/cyan/index.php?live_configurator_token=467a18f43d07ea6419871e88db6b9fcd&amp;id_employee=0&amp;id_shop=1"
								id="formliveedittheme" method="post">



								<div id="ptscustomize"
									class="pts-customize panelcontent editortool clearfix">

									<p>
										<b>Custom Theme Profiles Management</b>
									</p>
									<div class="buttons-action row">

										<div class="col-sm-6">
											<select id="saved-files" name="saved_file">
												<option value="">Create New Profile</option>
												<option value="test">test</option>
											</select>
										</div>
									</div>


									<div class="wrapper  clearfix">
										<div id="customize-form">
											<div class="groups">

												<div class="clearfix" id="customize-body">
													<ul class="nav nav-tabs pts-tabs">
														<li><a href="#tab-selectors">selectors</a></li>
														<li><a href="#tab-elements">elements</a></li>

													</ul>
													<div class="tab-content">
														<div class="tab-pane" id="tab-selectors">
															<div class="pts-panelcollapse"
																id="custom-accordionselectors">
																<div class="panel panel-default panel-group ">
																	<div class="panel-heading">
																		<div class="panel-title">
																			<a data-toggle="collapse"
																				data-parent="#custom-accordionselectors"
																				href="#collapsebody"> Body Content </a>
																		</div>
																	</div>

																	<div id="collapsebody" class="panel-collapse collapse">
																		<div class="panel-body">

																			<div class="form-group">
																				<label>Background Color</label> <input value=""
																					size="10" name="customize[body][]"
																					data-match="body" type="text" class="input-setting"
																					data-selector="body, body #content, #page"
																					data-attrs="background-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>




																			<div class="form-group background-images">
																				<label>Background Image</label> <a class="clear-bg"
																					href="#"><span class="icon icon-eraser"></span></a>
																				<input value="" type="hidden"
																					name="customize[body][]" data-match="body"
																					class="input-setting"
																					data-selector="body, body #content, #page"
																					data-attrs="background-image">

																				<div class="clearfix"></div>
																				<p>
																					<em style="font-size: 10px">Those Images in
																						folder YOURTHEME/img/patterns/</em>
																				</p>
																				<div class="bi-wrapper clearfix">
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern10.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern10.png"
																						data-val="../../img/patterns/pattern10.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern11.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern11.png"
																						data-val="../../img/patterns/pattern11.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern12.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern12.png"
																						data-val="../../img/patterns/pattern12.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern13.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern13.png"
																						data-val="../../img/patterns/pattern13.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern1.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern1.png"
																						data-val="../../img/patterns/pattern1.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern2.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern2.png"
																						data-val="../../img/patterns/pattern2.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern3.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern3.png"
																						data-val="../../img/patterns/pattern3.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern4.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern4.png"
																						data-val="../../img/patterns/pattern4.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern6.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern6.png"
																						data-val="../../img/patterns/pattern6.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern7.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern7.png"
																						data-val="../../img/patterns/pattern7.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern8.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern8.png"
																						data-val="../../img/patterns/pattern8.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern9.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern9.png"
																						data-val="../../img/patterns/pattern9.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern.png"
																						data-val="../../img/patterns/pattern.png"></div>
																				</div>
																			</div>



																			<div class="form-group">
																				<label>Font Family</label> <select
																					name="customize[body][]" data-match="body"
																					class="input-setting" data-selector="body #page"
																					data-attrs="font-family">
																					<option value="inherit">Inherit</option>
																					<option value="Verdana, Geneva, sans-serif">Verdana</option>
																					<option
																						value="Georgia, 'Times New Roman', Times, serif">Georgia</option>
																					<option value="Arial, Helvetica, sans-serif">Arial</option>
																					<option
																						value="Impact, Arial, Helvetica, sans-serif">Impact</option>
																					<option value="Tahoma, Geneva, sans-serif">Tahoma</option>
																					<option
																						value="'Trebuchet MS', Arial, Helvetica, sans-serif">Trebuchet
																						MS</option>
																					<option value="'Arial Black', Gadget, sans-serif">Arial
																						Black</option>
																					<option value="Times, 'Times New Roman', serif">Times</option>
																					<option
																						value="'Palatino Linotype', 'Book Antiqua', Palatino, serif">Palatino
																						Linotype</option>
																					<option
																						value="'Lucida Sans Unicode', 'Lucida Grande', sans-serif">Lucida
																						Sans Unicode</option>
																					<option value="'MS Serif', 'New York', serif">MS
																						Serif</option>
																					<option value="'Comic Sans MS', cursive">Comic
																						Sans MS</option>
																					<option value="'Courier New', Courier, monospace">Courier
																						New</option>
																					<option value="'Lucida Console', Monaco, monospace">Lucida
																						Console</option>
																				</select> <a href="#" class="clear-bg"><span
																					class="icon icon-eraser"></span></a>
																			</div>





																			<div class="form-group">
																				<label>Font-Size</label> <select
																					name="customize[body][]" data-match="body"
																					class="input-setting" data-selector="body #page"
																					data-attrs="font-size">
																					<option value="">Inherit</option>
																					<option value="9">9</option>
																					<option value="10">10</option>
																					<option value="11">11</option>
																					<option value="12">12</option>
																					<option value="13">13</option>
																					<option value="14">14</option>
																					<option value="15">15</option>
																					<option value="16">16</option>
																				</select> <a href="#" class="clear-bg"><span
																					class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Text</label> <input value="" size="10"
																					name="customize[body][]" data-match="body"
																					type="text" class="input-setting"
																					data-selector="body #page" data-attrs="color"><a
																					href="#" class="clear-bg"><span
																					class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Link Color</label> <input value="" size="10"
																					name="customize[body][]" data-match="body"
																					type="text" class="input-setting"
																					data-selector="body #page a" data-attrs="color"><a
																					href="#" class="clear-bg"><span
																					class="icon icon-eraser"></span></a>
																			</div>


																		</div>
																	</div>
																</div>
																<div class="panel panel-default panel-group ">
																	<div class="panel-heading">
																		<div class="panel-title">
																			<a data-toggle="collapse"
																				data-parent="#custom-accordionselectors"
																				href="#collapsepav-mainnav"> MainMenu </a>
																		</div>
																	</div>

																	<div id="collapsepav-mainnav"
																		class="panel-collapse collapse">
																		<div class="panel-body">

																			<div class="form-group">
																				<label>Background Color</label> <input value=""
																					size="10" name="customize[pav-mainnav][]"
																					data-match="pav-mainnav" type="text"
																					class="input-setting" data-selector=".main-menu"
																					data-attrs="background-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>




																			<div class="form-group background-images">
																				<label>Background Image</label> <a class="clear-bg"
																					href="#"><span class="icon icon-eraser"></span></a>
																				<input value="" type="hidden"
																					name="customize[pav-mainnav][]"
																					data-match="pav-mainnav" class="input-setting"
																					data-selector=".main-menu"
																					data-attrs="background-image">

																				<div class="clearfix"></div>
																				<p>
																					<em style="font-size: 10px">Those Images in
																						folder YOURTHEME/img/patterns/</em>
																				</p>
																				<div class="bi-wrapper clearfix">
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern10.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern10.png"
																						data-val="../../img/patterns/pattern10.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern11.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern11.png"
																						data-val="../../img/patterns/pattern11.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern12.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern12.png"
																						data-val="../../img/patterns/pattern12.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern13.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern13.png"
																						data-val="../../img/patterns/pattern13.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern1.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern1.png"
																						data-val="../../img/patterns/pattern1.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern2.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern2.png"
																						data-val="../../img/patterns/pattern2.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern3.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern3.png"
																						data-val="../../img/patterns/pattern3.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern4.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern4.png"
																						data-val="../../img/patterns/pattern4.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern6.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern6.png"
																						data-val="../../img/patterns/pattern6.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern7.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern7.png"
																						data-val="../../img/patterns/pattern7.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern8.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern8.png"
																						data-val="../../img/patterns/pattern8.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern9.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern9.png"
																						data-val="../../img/patterns/pattern9.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern.png"
																						data-val="../../img/patterns/pattern.png"></div>
																				</div>
																			</div>



																			<div class="form-group">
																				<label>Color Link</label> <input value="" size="10"
																					name="customize[pav-mainnav][]"
																					data-match="pav-mainnav" type="text"
																					class="input-setting"
																					data-selector="#pts-mainnav a" data-attrs="color"><a
																					href="#" class="clear-bg"><span
																					class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Background Sub Menu</label> <input value=""
																					size="10" name="customize[pav-mainnav][]"
																					data-match="pav-mainnav" type="text"
																					class="input-setting"
																					data-selector=".pts-megamenu .dropdown-menu"
																					data-attrs="background-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Text submenu</label> <input value=""
																					size="10" name="customize[pav-mainnav][]"
																					data-match="pav-mainnav" type="text"
																					class="input-setting"
																					data-selector=".pts-megamenu .dropdown-menu"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Link submenu</label> <input value=""
																					size="10" name="customize[pav-mainnav][]"
																					data-match="pav-mainnav" type="text"
																					class="input-setting"
																					data-selector=".pts-megamenu .dropdown-menu ul li a"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>


																		</div>
																	</div>
																</div>
																<div class="panel panel-default panel-group ">
																	<div class="panel-heading">
																		<div class="panel-title">
																			<a data-toggle="collapse"
																				data-parent="#custom-accordionselectors"
																				href="#collapsefooter-top"> Footer Top </a>
																		</div>
																	</div>

																	<div id="collapsefooter-top"
																		class="panel-collapse collapse">
																		<div class="panel-body">

																			<div class="form-group">
																				<label>Background Color</label> <input value=""
																					size="10" name="customize[footer-top][]"
																					data-match="footer-top" type="text"
																					class="input-setting" data-selector=".footer-top"
																					data-attrs="background-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>




																			<div class="form-group background-images">
																				<label>Background Image</label> <a class="clear-bg"
																					href="#"><span class="icon icon-eraser"></span></a>
																				<input value="" type="hidden"
																					name="customize[footer-top][]"
																					data-match="footer-top" class="input-setting"
																					data-selector=".footer-top "
																					data-attrs="background-image">

																				<div class="clearfix"></div>
																				<p>
																					<em style="font-size: 10px">Those Images in
																						folder YOURTHEME/img/patterns/</em>
																				</p>
																				<div class="bi-wrapper clearfix">
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern10.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern10.png"
																						data-val="../../img/patterns/pattern10.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern11.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern11.png"
																						data-val="../../img/patterns/pattern11.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern12.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern12.png"
																						data-val="../../img/patterns/pattern12.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern13.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern13.png"
																						data-val="../../img/patterns/pattern13.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern1.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern1.png"
																						data-val="../../img/patterns/pattern1.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern2.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern2.png"
																						data-val="../../img/patterns/pattern2.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern3.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern3.png"
																						data-val="../../img/patterns/pattern3.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern4.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern4.png"
																						data-val="../../img/patterns/pattern4.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern6.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern6.png"
																						data-val="../../img/patterns/pattern6.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern7.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern7.png"
																						data-val="../../img/patterns/pattern7.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern8.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern8.png"
																						data-val="../../img/patterns/pattern8.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern9.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern9.png"
																						data-val="../../img/patterns/pattern9.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern.png"
																						data-val="../../img/patterns/pattern.png"></div>
																				</div>
																			</div>


																		</div>
																	</div>
																</div>
																<div class="panel panel-default panel-group ">
																	<div class="panel-heading">
																		<div class="panel-title">
																			<a data-toggle="collapse"
																				data-parent="#custom-accordionselectors"
																				href="#collapsefooter-center"> Footer Center </a>
																		</div>
																	</div>

																	<div id="collapsefooter-center"
																		class="panel-collapse collapse">
																		<div class="panel-body">

																			<div class="form-group">
																				<label>Background Color</label> <input value=""
																					size="10" name="customize[footer-center][]"
																					data-match="footer-center" type="text"
																					class="input-setting"
																					data-selector=".footer-center"
																					data-attrs="background-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Text</label> <input value="" size="10"
																					name="customize[footer-center][]"
																					data-match="footer-center" type="text"
																					class="input-setting"
																					data-selector=".footer-center .inner"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Link</label> <input value="" size="10"
																					name="customize[footer-center][]"
																					data-match="footer-center" type="text"
																					class="input-setting"
																					data-selector=".footer-center a "
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Link Hover</label> <input value=""
																					size="10" name="customize[footer-center][]"
																					data-match="footer-center" type="text"
																					class="input-setting"
																					data-selector=".footer-center a:hover"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Heading Color</label> <input value=""
																					size="10" name="customize[footer-center][]"
																					data-match="footer-center" type="text"
																					class="input-setting"
																					data-selector=".footer-center .title_block"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>




																			<div class="form-group background-images">
																				<label>Background Image</label> <a class="clear-bg"
																					href="#"><span class="icon icon-eraser"></span></a>
																				<input value="" type="hidden"
																					name="customize[footer-center][]"
																					data-match="footer-center" class="input-setting"
																					data-selector=".footer-center "
																					data-attrs="background-image">

																				<div class="clearfix"></div>
																				<p>
																					<em style="font-size: 10px">Those Images in
																						folder YOURTHEME/img/patterns/</em>
																				</p>
																				<div class="bi-wrapper clearfix">
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern10.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern10.png"
																						data-val="../../img/patterns/pattern10.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern11.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern11.png"
																						data-val="../../img/patterns/pattern11.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern12.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern12.png"
																						data-val="../../img/patterns/pattern12.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern13.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern13.png"
																						data-val="../../img/patterns/pattern13.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern1.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern1.png"
																						data-val="../../img/patterns/pattern1.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern2.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern2.png"
																						data-val="../../img/patterns/pattern2.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern3.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern3.png"
																						data-val="../../img/patterns/pattern3.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern4.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern4.png"
																						data-val="../../img/patterns/pattern4.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern6.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern6.png"
																						data-val="../../img/patterns/pattern6.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern7.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern7.png"
																						data-val="../../img/patterns/pattern7.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern8.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern8.png"
																						data-val="../../img/patterns/pattern8.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern9.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern9.png"
																						data-val="../../img/patterns/pattern9.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern.png"
																						data-val="../../img/patterns/pattern.png"></div>
																				</div>
																			</div>


																		</div>
																	</div>
																</div>
																<div class="panel panel-default panel-group ">
																	<div class="panel-heading">
																		<div class="panel-title">
																			<a data-toggle="collapse"
																				data-parent="#custom-accordionselectors"
																				href="#collapsepowered"> Powered </a>
																		</div>
																	</div>

																	<div id="collapsepowered"
																		class="panel-collapse collapse">
																		<div class="panel-body">

																			<div class="form-group">
																				<label>Background Color</label> <input value=""
																					size="10" name="customize[powered][]"
																					data-match="powered" type="text"
																					class="input-setting" data-selector="#powered"
																					data-attrs="background-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Text</label> <input value="" size="10"
																					name="customize[powered][]" data-match="powered"
																					type="text" class="input-setting"
																					data-selector="#powered .container"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Link</label> <input value="" size="10"
																					name="customize[powered][]" data-match="powered"
																					type="text" class="input-setting"
																					data-selector="#powered a" data-attrs="color"><a
																					href="#" class="clear-bg"><span
																					class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Link Hover</label> <input value=""
																					size="10" name="customize[powered][]"
																					data-match="powered" type="text"
																					class="input-setting"
																					data-selector="#powered a:hover" data-attrs="color"><a
																					href="#" class="clear-bg"><span
																					class="icon icon-eraser"></span></a>
																			</div>




																			<div class="form-group background-images">
																				<label>Background Image</label> <a class="clear-bg"
																					href="#"><span class="icon icon-eraser"></span></a>
																				<input value="" type="hidden"
																					name="customize[powered][]" data-match="powered"
																					class="input-setting" data-selector="#powered"
																					data-attrs="background-image">

																				<div class="clearfix"></div>
																				<p>
																					<em style="font-size: 10px">Those Images in
																						folder YOURTHEME/img/patterns/</em>
																				</p>
																				<div class="bi-wrapper clearfix">
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern10.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern10.png"
																						data-val="../../img/patterns/pattern10.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern11.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern11.png"
																						data-val="../../img/patterns/pattern11.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern12.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern12.png"
																						data-val="../../img/patterns/pattern12.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern13.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern13.png"
																						data-val="../../img/patterns/pattern13.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern1.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern1.png"
																						data-val="../../img/patterns/pattern1.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern2.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern2.png"
																						data-val="../../img/patterns/pattern2.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern3.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern3.png"
																						data-val="../../img/patterns/pattern3.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern4.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern4.png"
																						data-val="../../img/patterns/pattern4.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern6.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern6.png"
																						data-val="../../img/patterns/pattern6.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern7.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern7.png"
																						data-val="../../img/patterns/pattern7.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern8.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern8.png"
																						data-val="../../img/patterns/pattern8.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern9.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern9.png"
																						data-val="../../img/patterns/pattern9.png">

																					</div>
																					<div
																						style="background: url('http://pavodemo.comimg/patterns/pattern.png') no-repeat center center;"
																						class="pull-left"
																						data-image="http://pavodemo.comimg/patterns/pattern.png"
																						data-val="../../img/patterns/pattern.png"></div>
																				</div>
																			</div>


																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="tab-pane" id="tab-elements">
															<div class="pts-panelcollapse"
																id="custom-accordionelements">
																<div class="panel panel-default panel-group ">
																	<div class="panel-heading">
																		<div class="panel-title">
																			<a data-toggle="collapse"
																				data-parent="#custom-accordionelements"
																				href="#collapseproduct"> Products </a>
																		</div>
																	</div>

																	<div id="collapseproduct"
																		class="panel-collapse collapse">
																		<div class="panel-body">

																			<div class="form-group">
																				<label>Bg Product</label> <input value="" size="10"
																					name="customize[product][]" data-match="product"
																					type="text" class="input-setting"
																					data-selector=".product-block, .product-block .product-meta, .product-block .bottom"
																					data-attrs="background-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Text Product</label> <input value=""
																					size="10" name="customize[product][]"
																					data-match="product" type="text"
																					class="input-setting"
																					data-selector=".product-block" data-attrs="color"><a
																					href="#" class="clear-bg"><span
																					class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Text Link</label> <input value="" size="10"
																					name="customize[product][]" data-match="product"
																					type="text" class="input-setting"
																					data-selector=".product-block a" data-attrs="color"><a
																					href="#" class="clear-bg"><span
																					class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Text Link Font</label> <select
																					name="customize[product][]" data-match="product"
																					class="input-setting"
																					data-selector=".product-block a"
																					data-attrs="font-family">
																					<option value="inherit">Inherit</option>
																					<option value="Verdana, Geneva, sans-serif">Verdana</option>
																					<option
																						value="Georgia, 'Times New Roman', Times, serif">Georgia</option>
																					<option value="Arial, Helvetica, sans-serif">Arial</option>
																					<option
																						value="Impact, Arial, Helvetica, sans-serif">Impact</option>
																					<option value="Tahoma, Geneva, sans-serif">Tahoma</option>
																					<option
																						value="'Trebuchet MS', Arial, Helvetica, sans-serif">Trebuchet
																						MS</option>
																					<option value="'Arial Black', Gadget, sans-serif">Arial
																						Black</option>
																					<option value="Times, 'Times New Roman', serif">Times</option>
																					<option
																						value="'Palatino Linotype', 'Book Antiqua', Palatino, serif">Palatino
																						Linotype</option>
																					<option
																						value="'Lucida Sans Unicode', 'Lucida Grande', sans-serif">Lucida
																						Sans Unicode</option>
																					<option value="'MS Serif', 'New York', serif">MS
																						Serif</option>
																					<option value="'Comic Sans MS', cursive">Comic
																						Sans MS</option>
																					<option value="'Courier New', Courier, monospace">Courier
																						New</option>
																					<option value="'Lucida Console', Monaco, monospace">Lucida
																						Console</option>
																				</select> <a href="#" class="clear-bg"><span
																					class="icon icon-eraser"></span></a>
																			</div>





																			<div class="form-group">
																				<label>Text Link Size</label> <select
																					name="customize[product][]" data-match="product"
																					class="input-setting"
																					data-selector=".product-block a"
																					data-attrs="font-size">
																					<option value="">Inherit</option>
																					<option value="9">9</option>
																					<option value="10">10</option>
																					<option value="11">11</option>
																					<option value="12">12</option>
																					<option value="13">13</option>
																					<option value="14">14</option>
																					<option value="15">15</option>
																					<option value="16">16</option>
																				</select> <a href="#" class="clear-bg"><span
																					class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Price</label> <input value="" size="10"
																					name="customize[product][]" data-match="product"
																					type="text" class="input-setting"
																					data-selector=".price" data-attrs="color"><a
																					href="#" class="clear-bg"><span
																					class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Price Old</label> <input value=""
																					size="10" name="customize[product][]"
																					data-match="product" type="text"
																					class="input-setting" data-selector=".old-price"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>BgColor Cart</label> <input value=""
																					size="10" name="customize[product][]"
																					data-match="product" type="text"
																					class="input-setting"
																					data-selector=".product-block .btn-shopping-cart"
																					data-attrs="background-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>


																		</div>
																	</div>
																</div>
																<div class="panel panel-default panel-group ">
																	<div class="panel-heading">
																		<div class="panel-title">
																			<a data-toggle="collapse"
																				data-parent="#custom-accordionelements"
																				href="#collapsemodules"> Modules Default in
																				Sidebar </a>
																		</div>
																	</div>

																	<div id="collapsemodules"
																		class="panel-collapse collapse">
																		<div class="panel-body">

																			<div class="form-group">
																				<label>Heading Background</label> <input value=""
																					size="10" name="customize[modules][]"
																					data-match="modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block .title_block"
																					data-attrs="background-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Heading Color</label> <input value=""
																					size="10" name="customize[modules][]"
																					data-match="modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block .title_block"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Content Background</label> <input value=""
																					size="10" name="customize[modules][]"
																					data-match="modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block .block_content"
																					data-attrs="background-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Content border</label> <input value=""
																					size="10" name="customize[modules][]"
																					data-match="modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block .block_content"
																					data-attrs="border-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Link Color</label> <input value="" size="10"
																					name="customize[modules][]" data-match="modules"
																					type="text" class="input-setting"
																					data-selector=".sidebar .product-block .name a, .sidebar .block .block_content a"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Price New</label> <input value=""
																					size="10" name="customize[modules][]"
																					data-match="modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .product-block .price"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Price Old</label> <input value=""
																					size="10" name="customize[modules][]"
																					data-match="modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .product-block .price-old"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>


																		</div>
																	</div>
																</div>
																<div class="panel panel-default panel-group ">
																	<div class="panel-heading">
																		<div class="panel-title">
																			<a data-toggle="collapse"
																				data-parent="#custom-accordionelements"
																				href="#collapsehighlight-modules"> Modules
																				Highlight in Sidebar </a>
																		</div>
																	</div>

																	<div id="collapsehighlight-modules"
																		class="panel-collapse collapse">
																		<div class="panel-body">

																			<div class="form-group">
																				<label>Heading Background</label> <input value=""
																					size="10" name="customize[highlight-modules][]"
																					data-match="highlight-modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block.block-highlighted .title_block"
																					data-attrs="background-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Heading Color</label> <input value=""
																					size="10" name="customize[highlight-modules][]"
																					data-match="highlight-modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block.block-highlighted .title_block"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Heading Border Color</label> <input value=""
																					size="10" name="customize[highlight-modules][]"
																					data-match="highlight-modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block.block-highlighted .title_block"
																					data-attrs="border-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Content Background</label> <input value=""
																					size="10" name="customize[highlight-modules][]"
																					data-match="highlight-modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block.block-highlighted .block_content"
																					data-attrs="background-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Content border</label> <input value=""
																					size="10" name="customize[highlight-modules][]"
																					data-match="highlight-modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block.block-highlighted .block_content"
																					data-attrs="border-color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Link Color</label> <input value="" size="10"
																					name="customize[highlight-modules][]"
																					data-match="highlight-modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block-highlighted .product-block"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Link Color</label> <input value="" size="10"
																					name="customize[highlight-modules][]"
																					data-match="highlight-modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block-highlighted .product-block .name a, .sidebar .block-highlighted .block a"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Link Hover Color</label> <input value=""
																					size="10" name="customize[highlight-modules][]"
																					data-match="highlight-modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block-highlighted .product-block .name a:hover, .sidebar .block-highlighted .block a:hover"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Price New</label> <input value=""
																					size="10" name="customize[highlight-modules][]"
																					data-match="highlight-modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .product-block .price"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
																			</div>



																			<div class="form-group">
																				<label>Color Price Old</label> <input value=""
																					size="10" name="customize[highlight-modules][]"
																					data-match="highlight-modules" type="text"
																					class="input-setting"
																					data-selector=".sidebar .block-highlighted .product-block .price-old"
																					data-attrs="color"><a href="#"
																					class="clear-bg"><span class="icon icon-eraser"></span></a>
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
									</div>
								</div>
							</form>

						</div>

					</div>


					<script type="text/javascript">
						$(document).ready(function() {
							$('#pts-paneltool').PtsPanelTools({
								url : 'http://pavodemo.comcss/profiles/',
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
							src="/prestabrain/bella/cyan/modules/ptsstaticcontent/images/paypal.png"
							class="item-img img-responsive" alt="" />
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