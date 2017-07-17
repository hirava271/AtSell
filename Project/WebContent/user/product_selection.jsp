<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Umenu.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>Aliquam cursus - Bella store</title>
<meta name="description"
	content="Aliquam cursus non dolor et eleifend. Maecenas mauris ante, dapibus ut mauris eu, viverra convallis leo. Nulla orci nunc, faucibus in quam eget, ultrices facilisis risus. Nullam vitae facilisis augue, commodo laoreet augue. Aliquam non porta erat, non suscipit urna. Morbi venenatis sapien vitae arcu aliquet, sit amet aliquet justo venenatis. Cras condimentum libero nisi, eget ultrices nulla scelerisque vel." />
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
<link rel="stylesheet" href="css/product_list.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/category.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/scenes.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/blockcart.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blockcategories.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blockcurrencies.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blocklanguages.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/jquery.ui.core.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/jquery.ui.slider.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/jquery.ui.theme.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/blocklayered.css" type="text/css"
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
	var blocklayeredSliderName = {
		"price" : "price",
		"weight" : "weight"
	};
	var comparator_max_item = 3;
	var comparedProductsIds = [];
	var contentOnly = false;
	var customizationIdMessage = 'Customization #';
	var delete_txt = 'Delete';
	var displayList = false;
	var filters = [
			{
				"type_lite" : "quantity",
				"type" : "quantity",
				"id_key" : 0,
				"name" : "Availability",
				"values" : [
						{
							"name" : "Not available",
							"nbr" : 0,
							"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#availability-not_available",
							"rel" : "nofollow"
						},
						{
							"name" : "In stock",
							"nbr" : 7,
							"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#availability-in_stock",
							"rel" : "nofollow"
						} ],
				"filter_show_limit" : "0",
				"filter_type" : "0"
			},
			{
				"type_lite" : "condition",
				"type" : "condition",
				"id_key" : 0,
				"name" : "Condition",
				"values" : {
					"new" : {
						"name" : "New",
						"nbr" : 7,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#condition-new",
						"rel" : "nofollow"
					},
					"used" : {
						"name" : "Used",
						"nbr" : 0,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#condition-used",
						"rel" : "nofollow"
					},
					"refurbished" : {
						"name" : "Refurbished",
						"nbr" : 0,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#condition-refurbished",
						"rel" : "nofollow"
					}
				},
				"filter_show_limit" : "0",
				"filter_type" : "0"
			},
			{
				"type_lite" : "manufacturer",
				"type" : "manufacturer",
				"id_key" : 0,
				"name" : "Manufacturer",
				"values" : {
					"2" : {
						"name" : "Fashion Manufacturer 1",
						"nbr" : "1",
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#manufacturer-fashion_manufacturer_1",
						"rel" : "nofollow"
					},
					"3" : {
						"name" : "Fashion Manufacturer 2",
						"nbr" : "2",
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#manufacturer-fashion_manufacturer_2",
						"rel" : "nofollow"
					},
					"4" : {
						"name" : "Fashion Manufacturer 3",
						"nbr" : "1",
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#manufacturer-fashion_manufacturer_3",
						"rel" : "nofollow"
					},
					"5" : {
						"name" : "Fashion Manufacturer 4",
						"nbr" : "1",
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#manufacturer-fashion_manufacturer_4",
						"rel" : "nofollow"
					},
					"8" : {
						"name" : "Fashion Manufacturer 7",
						"nbr" : "1",
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#manufacturer-fashion_manufacturer_7",
						"rel" : "nofollow"
					}
				},
				"filter_show_limit" : "0",
				"filter_type" : "0"
			},
			{
				"type_lite" : "price",
				"type" : "price",
				"id_key" : 0,
				"name" : "Price",
				"slider" : true,
				"max" : "104",
				"min" : "0",
				"values" : {
					"1" : "104",
					"0" : "0"
				},
				"unit" : "$",
				"format" : "1",
				"filter_show_limit" : "0",
				"filter_type" : "0"
			},
			{
				"type_lite" : "id_attribute_group",
				"type" : "id_attribute_group",
				"id_key" : 1,
				"name" : "Size",
				"is_color_group" : false,
				"values" : {
					"1" : {
						"color" : null,
						"name" : "S",
						"nbr" : 3,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#size-s",
						"rel" : ""
					},
					"2" : {
						"color" : null,
						"name" : "M",
						"nbr" : 6,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#size-m",
						"rel" : ""
					},
					"3" : {
						"color" : null,
						"name" : "L",
						"nbr" : 5,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#size-l",
						"rel" : ""
					},
					"4" : {
						"color" : null,
						"name" : "One size",
						"nbr" : 2,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#size-one_size",
						"rel" : ""
					}
				},
				"url_name" : null,
				"meta_title" : null,
				"filter_show_limit" : "0",
				"filter_type" : "0"
			},
			{
				"type_lite" : "id_attribute_group",
				"type" : "id_attribute_group",
				"id_key" : 3,
				"name" : "Color",
				"is_color_group" : true,
				"values" : {
					"5" : {
						"color" : "#AAB2BD",
						"name" : "Grey",
						"nbr" : 2,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-grey",
						"rel" : ""
					},
					"6" : {
						"color" : "#CFC4A6",
						"name" : "Taupe",
						"nbr" : 1,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-taupe",
						"rel" : ""
					},
					"7" : {
						"color" : "#f5f5dc",
						"name" : "Beige",
						"nbr" : 1,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-beige",
						"rel" : ""
					},
					"8" : {
						"color" : "#ffffff",
						"name" : "White",
						"nbr" : 1,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-white",
						"rel" : ""
					},
					"10" : {
						"color" : "#E84C3D",
						"name" : "Red",
						"nbr" : 1,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-red",
						"rel" : ""
					},
					"11" : {
						"color" : "#434A54",
						"name" : "Black",
						"nbr" : 1,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-black",
						"rel" : ""
					},
					"12" : {
						"color" : "#C19A6B",
						"name" : "Camel",
						"nbr" : 3,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-camel",
						"rel" : ""
					},
					"13" : {
						"color" : "#F39C11",
						"name" : "Orange",
						"nbr" : 2,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-orange",
						"rel" : ""
					},
					"14" : {
						"color" : "#5D9CEC",
						"name" : "Blue",
						"nbr" : 1,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-blue",
						"rel" : ""
					},
					"15" : {
						"color" : "#A0D468",
						"name" : "Green",
						"nbr" : 1,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-green",
						"rel" : ""
					},
					"16" : {
						"color" : "#F1C40F",
						"name" : "Yellow",
						"nbr" : 2,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-yellow",
						"rel" : ""
					},
					"17" : {
						"color" : "#964B00",
						"name" : "Brown",
						"nbr" : 2,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-brown",
						"rel" : ""
					},
					"24" : {
						"color" : "#FCCACD",
						"name" : "Pink",
						"nbr" : 3,
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#color-pink",
						"rel" : ""
					}
				},
				"url_name" : null,
				"meta_title" : null,
				"filter_show_limit" : "0",
				"filter_type" : "0"
			},
			{
				"type_lite" : "id_feature",
				"type" : "id_feature",
				"id_key" : 5,
				"values" : {
					"5" : {
						"nbr" : 2,
						"name" : "Cotton",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#compositions-cotton",
						"rel" : ""
					},
					"4" : {
						"nbr" : 1,
						"name" : "Elastane",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#compositions-elastane",
						"rel" : ""
					},
					"1" : {
						"nbr" : 2,
						"name" : "Polyester",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#compositions-polyester",
						"rel" : ""
					},
					"6" : {
						"nbr" : 1,
						"name" : "Silk",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#compositions-silk",
						"rel" : ""
					},
					"3" : {
						"nbr" : 1,
						"name" : "Viscose",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#compositions-viscose",
						"rel" : ""
					}
				},
				"name" : "Compositions",
				"url_name" : null,
				"meta_title" : null,
				"filter_show_limit" : "0",
				"filter_type" : "0"
			},
			{
				"type_lite" : "id_feature",
				"type" : "id_feature",
				"id_key" : 6,
				"values" : {
					"10" : {
						"nbr" : 2,
						"name" : "Classic",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#styles-classic",
						"rel" : ""
					},
					"16" : {
						"nbr" : 3,
						"name" : "Dressy",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#styles-dressy",
						"rel" : ""
					},
					"12" : {
						"nbr" : 1,
						"name" : "Military",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#styles-military",
						"rel" : ""
					},
					"14" : {
						"nbr" : 1,
						"name" : "Rock",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#styles-rock",
						"rel" : ""
					}
				},
				"name" : "Styles",
				"url_name" : null,
				"meta_title" : null,
				"filter_show_limit" : "0",
				"filter_type" : "0"
			},
			{
				"type_lite" : "id_feature",
				"type" : "id_feature",
				"id_key" : 7,
				"values" : {
					"18" : {
						"nbr" : 3,
						"name" : "Colorful Dress",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#properties-colorful_dress",
						"rel" : ""
					},
					"21" : {
						"nbr" : 1,
						"name" : "Maxi Dress",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#properties-maxi_dress",
						"rel" : ""
					},
					"19" : {
						"nbr" : 2,
						"name" : "Short Dress",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#properties-short_dress",
						"rel" : ""
					},
					"17" : {
						"nbr" : 1,
						"name" : "Short Sleeve",
						"url_name" : null,
						"meta_title" : null,
						"link" : "http:\/\/pavodemo.com\/prestabrain\/bella\/cyan\/index.php?id_category=24&controller=category&id_lang=1#properties-short_sleeve",
						"rel" : ""
					}
				},
				"name" : "Properties",
				"url_name" : null,
				"meta_title" : null,
				"filter_show_limit" : "0",
				"filter_type" : "0"
			} ];
	var freeProductTranslation = 'Free!';
	var freeShippingTranslation = 'Free shipping!';
	var generated_date = 1418897601;
	var id_lang = 1;
	var img_dir = 'http://pavodemo.com/prestabrain/bella/cyan/themes/pf_bella/img/';
	var instantsearch = false;
	var isGuest = 0;
	var isLogged = 0;
	var loggin_required = 'You must be logged in to manage your wishlist.';
	var max_item = 'You cannot add more than 3 product(s) to the product comparison';
	var min_item = 'Please select at least one product';
	var mywishlist_url = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?fc=module&module=blockwishlist&controller=mywishlist&id_lang=1';
	var page_name = 'category';
	var param_product_url = '#';
	var placeholder_blocknewsletter = 'Your e-mail';
	var priceDisplayMethod = 1;
	var priceDisplayPrecision = 2;
	var ptsblocksearch_type = 'top';
	var quickView = true;
	var removingLinkText = 'remove this product from my cart';
	var request = 'http://pavodemo.com/prestabrain/bella/cyan/index.php?id_category=24&controller=category&id_lang=1&id_lang=1';
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
<script type="text/javascript" src="js/category.js"></script>
<script type="text/javascript" src="js/ajax-cart.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo.js"></script>
<script type="text/javascript" src="js/jquery.serialScroll.js"></script>
<script type="text/javascript" src="js/jquery.bxslider.js"></script>
<script type="text/javascript" src="js/treeManagement.js"></script>
<script type="text/javascript" src="js/blocklayered.js"></script>
<script type="text/javascript" src="js/jquery.ui.core.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.widget.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.mouse.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.slider.min.js"></script>
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
<body id="category"
	class="keep-header category category-24 category-aliquam-cursus hide-right-column lang_en layout-fullwidth"
	itemscope="" itemtype="http://schema.org/WebPage">
	<section class="banner hidden-xs hidden-sm">
	<div class="container"></div>
	</section>

	<div id="page">

		<div class="clearfix"></div>

		<section id="columns" class="offcanvas-siderbars"> <!-- Breadcrumb -->
		<!-- /Breadcrumb -->
		<div class=" breadcrumb">
			
		</div>
		<div class="container main-content">
			<div class="row">
				<jsp:include page="sorting.jsp"></jsp:include>

				<!-- MODULE Block best sellers -->
				<!-- /MODULE Block best sellers -->


				<div id="center_column"
					class="center_column col-xs-12 col-sm-12 col-md-9 col-lg-9">
					<div id="content">
						<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


						<h1 class="page-heading product-listing">

							<c:out value="${sessionScope.subcat_name}"></c:out>
							&nbsp; <span class="heading-counter">There are <c:out
									value="${sessionScope.size}"></c:out> products.
							</span>
						</h1>

						<div class="categories clearfix"></div>
						<div class="category-info">
							<div class="cat_desc">
								<div id="category_description_short">
									<p>
										<c:out value="${sessionScope.subcat_desc}"></c:out>
									</p>
								</div>
							</div>
						</div>

						<div class="content_sortPagiBar product-filter clearfix">
							<div class="row">
								<div class="sortPagiBar col-lg-9 col-md-8 col-sm-8 col-xs-7">
									<ul class="display hidden-xs">
										<span class="pull-left">View:</span>
										<li id="grid"><a class="btn-tooltip" rel="nofollow"
											href="#" title="Grid"><i class="icon-th-large"></i><span>Grid</span></a></li>
										<li id="list"><a class="btn-tooltip" rel="nofollow"
											href="#" title="List"><i class="icon-th-list"></i><span>List</span></a></li>
									</ul>
								</div>
							</div>
						</div>












						<!-- Products list -->
						<script type="text/javascript">
							var colLap = 4;
							var colTablet = 4;
							var colMobile = 4;
						</script>
						<ul class="product_list products-block grid row">

							<c:forEach items="${sessionScope.search_product}" var="i1">

								<li
									class="ajax_block_product col-xs-12 col-sm-4 col-md-4 col-lg-4 first-in-line first-item-of-tablet-line first-item-of-mobile-line"
									data-col-lg="4" data-col-md="4" data-col-sm="4">

									<div class="product-block " itemscope=""
										itemtype="http://schema.org/Product">
										<div class="product-container">

											<c:set var="p" value="${i1[0] }"></c:set>
											<c:set var="q" value="${i1[1] }"></c:set>

											<div class="product-image-container image  swap ">
												<span class="product-label product-label-special new-box">
													<span class="new-label">New</span>
												</span> <a class="img product_img_link"
													href="<%=request.getContextPath() %>/UProductSelectionServlet?flag=particular_search&id=${q.cloth_id}"
													title="Aliquam ac lectus" itemprop="url"> <img
													class="replace-2x img-responsive"
													src="<%=request.getContextPath() %>/doc/${p.path }"
													alt="Aliquam ac lectus" title="${q.product_name }"
													width="290" height="366" itemprop="image" />
												</a>
											</div>

											<div class="product-meta">
												<div class="left">
													<div class="wrap-hover">
														<h3 class="name" itemprop="name">
															<a
																href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=15&amp;controller=product&amp;id_lang=1"
																title="Aliquam ac lectus" itemprop="url">
																${q.product_name } </a>
														</h3>

														<div class="comments_note product-rating"
															itemprop="aggregateRating" itemscope
															itemtype="http://schema.org/AggregateRating">
															<div class="star_content clearfix">
																<div class="star star_on"></div>

																<div class="star star_on"></div>

																<div class="star star_on"></div>

																<div class="star star_on"></div>

																<div class="star star_on"></div>

																<meta itemprop="worstRating" content="0" />
																<meta itemprop="ratingValue" content="4.5" />
																<meta itemprop="bestRating" content="5" />
															</div>
																													</div>

														<div class="product-desc description"
															itemprop="description">${q.product_description }</div>

														<div class="color-list-container product-colors">
															<ul class="color_to_pick_list clearfix">
																<li><a
																	href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=15&amp;controller=product&amp;id_lang=1#/size-one_size/color-grey"
																	id="color_71" class="color_pick"
																	style="background: #AAB2BD;"> </a></li>
																<li><a
																	href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=15&amp;controller=product&amp;id_lang=1#/size-one_size/color-green"
																	id="color_70" class="color_pick"
																	style="background: #A0D468;"> </a></li>
																<li><a
																	href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=15&amp;controller=product&amp;id_lang=1#/size-one_size/color-yellow"
																	id="color_72" class="color_pick"
																	style="background: #F1C40F;"> </a></li>
															</ul>
														</div>


														

																											</div>
												</div>
											</div>
										</div>

										<div class="clearfix"></div>

										<div class="bottom">
											<div class="wrap-fixed">
												<div itemprop="offers" itemscope=""
													itemtype="http://schema.org/Offer"
													class="content_price price">
													<span itemprop="price" class="product-price">
														$${q.price} </span>
													<meta itemprop="priceCurrency" content="Rupees" />
												</div>
											</div>
										</div>
										<!-- .product-container> -->
									</div> <script type="text/javascript">
										$("a.pts-fancybox").fancybox();
									</script>
								</li>
							</c:forEach>
						</ul>
						<div
							class="bottom-pagination-content col-xs-12 col-sm-12 content_sortPagiBar clearfix">
							<!-- Pagination -->
							<div id="pagination_bottom" class="pagination clearfix">
								<!-- /Pagination -->
							</div>
							<!-- /Pagination -->
						</div>
					</div>
				</div>
				<!-- #center_column -->
			</div>
		</div>
		<!-- #columns -->
	</div>

	</section>
	<!-- .columns-container -->

	<!-- Bottom-->
<jsp:include page="footer.jsp"></jsp:include>
	
	</body>
</html>