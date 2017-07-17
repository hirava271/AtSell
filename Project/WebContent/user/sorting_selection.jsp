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
			<div class="container">
				<a class="home" href="http://pavodemo.com/prestabrain/bella/cyan/"
					title="Return to Home"><i class="icon-home"></i> Home</a> <span
					class="navigation-pipe"></span> <a
					href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_category=14&amp;controller=category&amp;id_lang=1"
					title="Handbag">Handbag</a><span class="navigation-pipe">></span>Aliquam
				cursus
			</div>
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

							<c:out value="${sessionScope.sorting_type}"></c:out>
							&nbsp; <span class="heading-counter">There are <c:out
									value="${sessionScope.size}"></c:out> products.
							</span>
						</h1>

						<div class="categories clearfix"></div>
						<div class="category-info">
							<div class="cat_desc">
								<div id="category_description_short">
									<p>
							<%-- 			<c:out value="${sessionScope.subcat_desc}"></c:out> --%>
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

									<form id="productsSortForm"
										action="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_category=24&amp;controller=category&amp;id_lang=1&amp;id_lang=1"
										class="productsSortForm">
										<div class="select selector1">
											<span class="pull-left label-order" for="selectProductSort">Sort
												by</span> <select id="selectProductSort"
												class="selectProductSort form-control">
												<option value="position:asc" selected="selected">Default</option>
												<option value="price:asc">Price: Lowest first</option>
												<option value="price:desc">Price: Highest first</option>
												<option value="name:asc">Product Name: A to Z</option>
												<option value="name:desc">Product Name: Z to A</option>
												<option value="reference:asc">Reference: Lowest
													first</option>
												<option value="reference:desc">Reference: Highest
													first</option>
											</select>
										</div>
									</form>
									<!-- /Sort products -->


								</div>
								<div
									class="top-pagination-content col-lg-3 col-md-4 col-sm-4 col-xs-5">
									<form method="post"
										action="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=products-comparison"
										class="compare-form">
										<button type="submit" class="btn btn-outline bt_compare">
											<span>Compare (<strong class="total-compare-val">0</strong>)
											</span>
										</button>
										<input type="hidden" name="compare_product_count"
											class="compare_product_count" value="0" /> <input
											type="hidden" name="compare_product_list"
											class="compare_product_list" value="" />
									</form>





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

							<c:forEach items="${sessionScope.sorted_product}" var="i1">

								<li
									class="ajax_block_product col-xs-12 col-sm-4 col-md-4 col-lg-4 first-in-line first-item-of-tablet-line first-item-of-mobile-line"
									data-col-lg="4" data-col-md="4" data-col-sm="4">

									<div class="product-block " itemscope=""
										itemtype="http://schema.org/Product">
										<div class="product-container">

											<c:set var="q" value="${i1[0] }"></c:set>
											<c:set var="p" value="${i1[1] }"></c:set>

											<div class="product-image-container image  swap ">
												<span class="product-label product-label-special new-box">
													<span class="new-label">New</span>
												</span> <a class="img product_img_link"
													href="<%=request.getContextPath() %>/UProductSelectionServlet?flag=particular_search&id=${q.cloth_id}" title="Aliquam ac lectus"
													itemprop="url"> <img class="replace-2x img-responsive"
													src="<%=request.getContextPath() %>/doc/${p.path }"
													alt="Aliquam ac lectus" title="Aliquam ac lectus"
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
															<div>5/5</div>
															<div class="nb-comments">
																<span itemprop="reviewCount">(2 reviews)</span>
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


														<div class="product-flags">
															<span class="discount">Reduced price!</span>
														</div>

														<div class="action">
															<div>
																<div class="quick-view col-lg-6 col-md-3 col-xs-3">
																	<a class="quick-view  pts-colorbox cboxElement"
																		href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=15&amp;controller=product&amp;id_lang=1"
																		rel="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=15&amp;controller=product&amp;id_lang=1">
																		<span class="hidden-md hidden-sm hidden-xs">Quick
																			view</span>
																	</a>
																</div>

																<div class="col-lg-6 col-md-9 col-xs-9 btn-action">
																	<div class="zoom">
																		<a
																			class="info-view colorbox product-zoom btn-tooltip pts-fancybox cboxElement"
																			href="img/353-large_default.jpg" rel="nofollow"
																			data-toggle="tooltip" title="zoom"> </a>
																	</div>
																	<div class="compare">
																		<a class="btn-tooltip add_to_compare"
																			href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=15&amp;controller=product&amp;id_lang=1"
																			data-id-product="15" data-toggle="tooltip"
																			title="Compare"> </a>
																	</div>

																	<div class="wishlist">
																		<a class="addToWishlist wishlistProd_15" href="#"
																			onclick="WishlistCart('wishlist_block_list', 'add', '15', false, 1); return false;">
																			<span>Add to Wishlist</span>
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class="clearfix"></div>

										<div class="bottom">
											<div class="wrap-fixed">
												<div class="addtocart cart">
													<a data-toggle="tooltip"
														class="btn-shopping-cart ajax_add_to_cart_button"
														href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=cart&amp;add=1&amp;id_product=15&amp;token=fc8f4b82bcc66cb7501c4b081e23c92b"
														rel="nofollow" title="Add to cart" data-id-product="15">
														<span class="hidden-md hidden-sm hidden-xs">Add to
															cart</span> <span class="hidden-lg"><i
															class="icon-shopping-cart"></i></span>
													</a>
												</div>


												<div itemprop="offers" itemscope=""
													itemtype="http://schema.org/Offer"
													class="content_price price">

													<span itemprop="price" class="product-price">
														${q.price} </span> <span class="old-price"> $46.50 </span>


													<meta itemprop="priceCurrency" content="USD" />



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
							<div class="product-count">Showing 1 - 7 of 7 items</div>
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

	<!-- Footer -->
	<footer id="footer"> <section id="pts-footercenter"
		class="footer-center">
	<div class="container">
		<div class="inner">
			<div class="row">

				<!-- Block myaccount module -->
				<div class="footer-block block col-xs-12 col-sm-4 col-md-2 col-lg-2">
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