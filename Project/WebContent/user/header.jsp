<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="VO.SubCategoryVO"%>
<%@page import="VO.CategoryVO"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="DAO.*,control.*,java.util.List"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Book Store</title>
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--[if lt IE 9]>
	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<meta name="viewport" content="width=device-width">
<!-- Css Files Start -->
<link href="css/style.css" rel="stylesheet" type="text/css" /><!-- All css -->
<link href="css/bs.css" rel="stylesheet" type="text/css" /><!-- Bootstrap Css -->
<link rel="stylesheet" type="text/css" href="css/main-slider.css" /><!-- Main Slider Css -->
<!--[if lte IE 10]><link rel="stylesheet" type="text/css" href="css/customIE.css" /><![endif]-->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" /><!-- Font Awesome Css -->
<link href="css/font-awesome-ie7.css" rel="stylesheet" type="text/css" /><!-- Font Awesome iE7 Css -->
<!-- Booklet Css -->
<link href="css/jquery.booklet.latest.css" type="text/css" rel="stylesheet" media="screen, projection, tv" />
<noscript>
<link rel="stylesheet" type="text/css" href="css/noJS.css" />
</noscript>
<!-- Css Files End -->

	<!-- Color Switcher -->
		<link href="css/switcher.css" rel="stylesheet" type="text/css" />
			<!--Skin -->
			<link rel="stylesheet" name="skins" href="css/default.css" type="text/css" media="all">
			<!-- skins -->
	<!-- end of Color Switcher -->

</head>
<body>

                <%
				CategoryDAO D=new CategoryDAO();
				List L=D.category();

				SubCategoryDAO S=new SubCategoryDAO();
				List L1=S.subcategory();

				BranchDAO B=new BranchDAO();
				List Li=B.branch();

				Iterator iterator=L.iterator();

				Map mp = new HashMap();
				while(iterator.hasNext())
				{
					CategoryVO categoryVO=(CategoryVO)iterator.next();
					int catId=categoryVO.getId();

					Iterator iterator2=L1.iterator();
					List lsans = new ArrayList();
					while(iterator2.hasNext())
					{
						SubCategoryVO subCategoryVO=(SubCategoryVO)iterator2.next();
						int scatId=subCategoryVO.getCategory().getId();

						if(catId == scatId)
						{
							lsans.add(subCategoryVO);
						}
					}
					mp.put(categoryVO.getCategory(),lsans);
				}

				session.setAttribute("menu",mp);
				session.setAttribute("category",L);
				session.setAttribute("subcategory",L1);
				session.setAttribute("branch",Li);

				%>
                <%@taglib prefix="v" uri="http://java.sun.com/jstl/core_rt"%>




<!-- Start Main Wrapper -->
<div class="wrapper">
  <!-- Start Main Header -->
  <!-- Start Top Nav Bar -->
  <section class="top-nav-bar">
    <section class="container-fluid container">
      <section class="row-fluid"style="margin-left: 80px">
        <section class="span6">
          <ul class="top-nav"style="margin-left: -160px">
            <li><a href="librariaa.jsp" class="active">Home page</a></li>
				<v:forEach items="${sessionScope.menu}" var="i">
					<v:choose>
						<v:when test="${ not empty i.value }">
							<li class="dropdown">
								<a class="dropdown-toggle" href="#" data-toggle="dropdown">${i.key }<b class="caret"></b> </a>
								<ul class="dropdown-menu">
									<v:forEach items="${i.value }" var="j">
										<li><a href="#">${j.subcategory}</a></li>
									</v:forEach>
								</ul>
							</li>
						</v:when>
						<v:otherwise>
							<li><a href="#">${i.key }</a></li>
						</v:otherwise>
					</v:choose>
				</v:forEach>
           </ul>
        </section>
        <section class="span6 e-commerce-list"style="margin-left:50px;width: 550px;">
          <ul style="margin-left:200px;">
            <li>Welcome! <a href="checkout.jsp">Login</a> or <a href="checkout.jsp">Create an account</a></li>
            </ul>
          <div class="c-btn"style="height:64px;"> <a href="cart.jsp" class="cart-btn">Cart</a>
          <button data-toggle="dropdown" class="btn btn-mini dropdown-toggle">0 item(s) - $0.00</button>
          </div>
        </section>
      </section>
    </section>
  </section>
  <!-- End Top Nav Bar -->
  <header id="main-header">
    <section class="container-fluid container">
      <section class="row-fluid"style="height:100px;margin-left:72px">
        <section class="span4"style="margin-left:-105px;margin-top:-26px;">
        	<div class="media-body hidden-tablet"style="float:left;margin-left:-52px">
                        <div class="batch-icon"style="height:67px;margin-top:-19px;margin-left:-20px"><img src="images/logo.jpg" alt="img"></div>

                    </div>
         	<div class="search-bar"style="width:160px;margin-left:6px;padding:20px;margin-left:18px;margin-right:-100px">
            <input name="" type="text" style="width:520px ;float:left;" value="search entire store here..." />
            <input name="" type="button" value="Serach" style="float:left;margin-left:-86px"/>
          </div>
         </section>
        <section class="span8">
          <ul class="top-nav2"style="margin: -25px 0 7px 25px!important;width:870px">
            <li><a href="checkout.jsp">My Account</a></li>
            <li><a href="order-recieved.jsp">Track Your Order</a></li>
          </ul>
        </section>
      </section>
    </section>
   </header>
  <!-- End Main Header -->
 </div>
<!-- End Main Wrapper -->
<!-- JS Files Start -->
<script type="text/javascript" src="js/lib.js"></script><!-- lib Js -->
<script type="text/javascript" src="js/modernizr.js"></script><!-- Modernizr -->
<script type="text/javascript" src="js/easing.js"></script><!-- Easing js -->
<script type="text/javascript" src="js/bs.js"></script><!-- Bootstrap -->
<script type="text/javascript" src="js/bxslider.js"></script><!-- BX Slider -->
<script type="text/javascript" src="js/input-clear.js"></script><!-- Input Clear -->
<script src="js/range-slider.js"></script><!-- Range Slider -->
<script src="js/jquery.zoom.js"></script><!-- Zoom Effect -->
<script type="text/javascript" src="js/bookblock.js"></script><!-- Flip Slider -->
<script type="text/javascript" src="js/social.js"></script><!-- Social Icons -->
<script src="js/jquery.booklet.latest.js" type="text/javascript"></script><!-- Booklet Js -->
<script type="text/javascript">
	    $(function () {
	        $("#mybook").booklet({
				width:'100%',
				height:430,
				auto: true,
				//speed: 250,
			});
	    });
    </script>
<!-- JS Files End -->
<noscript>
<style>
	#socialicons>a span { top: 0px; left: -100%; -webkit-transition: all 0.3s ease; -moz-transition: all 0.3s ease-in-out; -o-transition: all 0.3s ease-in-out; -ms-transition: all 0.3s ease-in-out; transition: all 0.3s 	ease-in-out;}
	#socialicons>ahover div{left: 0px;}
	</style>
</noscript>
<script type="text/javascript">
  /* <![CDATA[ */
  $(document).ready(function() {
  $('.social_active').hoverdir( {} );
})
/* ]]> */
</script>

<!--switcher contianer--> <div class="switcher"></div> <!--switcher container -->

<!-- switcher files -->
	<script type="text/javascript" src="js/cookie.js"></script>
	<script type="text/javascript" src="js/colorswitcher.js"></script>
<!-- switcher files -->

<script type="text/javascript" src="js/custom.js"></script><!-- Custom js -->


</body>
</html>