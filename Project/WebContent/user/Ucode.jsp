<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="Umenu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body id="index"
	class="keep-header index hide-left-column hide-right-column lang_en layout-fullwidth"
	itemscope="" itemtype="http://schema.org/WebPage">
	<section class="banner hidden-xs hidden-sm">
	<div class="container"></div>
	</section>

	<div id="page">

		<section id="pts-slideshow" class="slideshow hidden-xs">
		<div class="bannercontainer banner-fullwidth"
			style="padding: 0; margin: 0 0 0 0; background-color: #fff">
			<div id="sliderlayer512121402" class="rev_slider fullwidthbanner"
				style="width: 100%; height: 600px;">
				<ul>

					<li data-masterspeed="300" data-transition="random"
						data-slotamount="7"
						data-thumb="<%=request.getContextPath()%>/user/img/slide3-1.jpg">
						<img src="<%=request.getContextPath()%>/user/img/slide3-1.jpg" />
						<div
							class="caption medium_white fade easeOutExpo                        "
							data-x="495" data-y="210" data-speed="300" data-start="712"
							data-easing="easeOutExpo">buy online</div>
						<div
							class="caption big_white fade easeOutExpo                        "
							data-x="405" data-y="275" data-speed="300" data-start="1564"
							data-easing="easeOutExpo">pick up in store</div>
						<div
							class="caption btn btn-outline fade easeOutExpo                        "
							data-x="633" data-y="345" data-speed="300" data-start="2509"
							data-easing="easeOutExpo">VIEW DETAIL</div>
					</li>

					<li data-masterspeed="300" data-transition="random"
						data-slotamount="7"
						data-thumb="<%=request.getContextPath()%>/user/img/02.jpg"><img
						src="<%=request.getContextPath()%>/user/img/02.jpg" />
						<div
							class="caption medium_white fade easeOutExpo                        "
							data-x="495" data-y="210" data-speed="300" data-start="400"
							data-easing="easeOutExpo">buy online</div>
						<div
							class="caption big_white fade easeOutExpo                        "
							data-x="405" data-y="275" data-speed="300" data-start="1303"
							data-easing="easeOutExpo">pick up in store</div>
						<div
							class="caption btn btn-outline fade easeOutExpo                        "
							data-x="633" data-y="345" data-speed="300" data-start="2065"
							data-easing="easeOutExpo">VIEW DETAIL</div></li>

					<li data-masterspeed="300" data-transition="random"
						data-slotamount="7"
						data-thumb="<%=request.getContextPath()%>/user/img/B.jpg"><img
						src="<%=request.getContextPath()%>/user/img/B.jpg" />
						<div
							class="caption medium_white fade easeOutExpo                        "
							data-x="495" data-y="210" data-speed="300" data-start="400"
							data-easing="easeOutExpo">buy online</div>
						<div
							class="caption big_white fade easeOutExpo                        "
							data-x="405" data-y="275" data-speed="300" data-start="1162"
							data-easing="easeOutExpo">pick up in store</div>
						<div
							class="caption btn btn-outline fade easeOutExpo                        "
							data-x="633" data-y="345" data-speed="300" data-start="1849"
							data-easing="easeOutExpo">VIEW DETAIL</div></li>
				</ul>

				<div class="tp-bannertimer tp-top"></div>
			</div>
		</div>

		<script type="text/javascript">
			var tpj = jQuery;

			if (tpj.fn.cssOriginal != undefined)
				tpj.fn.css = tpj.fn.cssOriginal;

			tpj("#sliderlayer512121402").revolution({
				delay : 9000,
				startheight : 600,
				startwidth : 1370,

				hideThumbs : 200,

				thumbWidth : 100,
				thumbHeight : 50,
				thumbAmount : 5,
				navigationType : "none",
				navigationArrows : "verticalcentered",
				navigationStyle : "round",

				navOffsetHorizontal : 0,
				navOffsetVertical : 20,

				touchenabled : "on",
				onHoverStop : "on",
				shuffle : "on",
				stopAtSlide : -1,
				stopAfterLoops : -1,

				hideCaptionAtLimit : 0,
				hideAllCaptionAtLilmit : 0,
				hideSliderAtLimit : 0,
				fullWidth : "on",
				shadow : 0
			});
			$(document).ready(
					function() {
						$('.caption', $('#sliderlayer512121402')).click(
								function() {
									if ($(this).data('link') != undefined
											&& $(this).data('link') != '')
										location.href = $(this).data('link');
								});
					});
		</script>
		<div class="clearfix"></div>
		</section>
		<div class="clearfix"></div>
		<section id="top_column" class="top_column">
		<div>


			<div
				class="ptsstaticontent_topcolumn staticontent-item-1 staticontent-item col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
				<div class="box block pts-custom effect" data-href="#">
					<div class="mask"></div>
					<a href="#" class="item-link"> <img src="img/adv-1.jpg"
						class="item-img img-responsive" alt="" />
					</a>

				</div>
			</div>

			<div
				class="ptsstaticontent_topcolumn staticontent-item-2 staticontent-item col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
				<div class="box block pts-custom effect" data-href="#">
					<div class="mask"></div>
					<a href="#" class="item-link"> <img
						src="/prestabrain/bella/cyan/modules/ptsstaticcontent/images/adv-2.jpg"
						class="item-img img-responsive" alt="" />
					</a>

				</div>
			</div>


		</div>
		</section>
		<section id="pts-promotion" class="promote_top">
		<div class="wrap">
			<div class="container">
				<div class="row"></div>
			</div>
		</div>
		</section>

		<section id="columns" class="offcanvas-siderbars">
		<div class="container main-content">
			<div class="row">
				<div id="center_column"
					class="center_column col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div id="content">

						<div class="clearfix">

							<!-- MODULE Block specials -->
							<div id="ptsinfiniteproducts"
								class="block products_block exclusive ptsinfiniteproducts">
								<!-- <div class="block_content">
									<div class="tab-nav">
										<ul class="nav nav-theme">
											<li class="active"><a href="javascript:void(0)"
												data-option="all" class="filter-option">All</a></li>
											<li><a href="javascript:void(0)" data-option="new"
												class="filter-option">New</a></li>
											<li><a href="javascript:void(0)" data-option="featured"
												class="filter-option">Featured</a></li>
											<li><a href="javascript:void(0)" data-option="special"
												class="filter-option">Special</a></li>
										</ul>
									</div>
								</div> -->
								<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

								<c:forEach items="${sessionScope.file_upload1 }" var="i1">

									<div
										class="col-xs-12 col-sm-6 col-md-3 col-lg-3 product_block ajax_block_product ptsinfiniteproducts_item"
										data-featured="1" data-new="1">
										<div class="product-block " itemscope=""
											itemtype="http://schema.org/Product">

											<div class="product-container">

												<c:set var="p" value="${i1[0] }"></c:set>
												<c:set var="q" value="${i1[1] }"></c:set>
												<%-- <c:out value="${i1.path }"></c:out> --%>
												<%
													System.out.println("Hello");
												%>

												<div class="product-image-container image  swap ">
													<span class="product-label product-label-special new-box">
														<span class="new-label">New</span>
													</span> <a class="img product_img_link"
														href="<%=request.getContextPath() %>/UProductSelectionServlet?flag=particular_search&id=${q.cloth_id}"
														title="Faded Short Blouse" itemprop="url"> <img
														class="replace-2x img-responsive"
														src="<%=request.getContextPath() %>/doc/${p.path }"
														alt="Blouse" title="Blouse" width="290px" height="290px"
														itemprop="image" />
													</a>

												</div>
												<div class="product-meta">
													<div class="left">
														<div class="wrap-hover">
															<h3 class="name" itemprop="name">
																<a
																	href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=2&amp;controller=product&amp;id_lang=1"
																	title="Faded Short Blouse" itemprop="url">
																	${q.product_name} </a>
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
																	<meta itemprop="ratingValue" content="5" />
																	<meta itemprop="bestRating" content="5" />
																</div>
																<div>5/5</div>
																<div class="nb-comments">
																	<span itemprop="reviewCount">(1 reviews)</span>
																</div>

															</div>

															<div class="product-desc description"
																itemprop="description">${q.product_description }</div>



															<div class="product-flags"></div>

															<div class="action">
																<div>
																	<div class="quick-view col-lg-6 col-md-3 col-xs-3">
																		<a class="quick-view  pts-colorbox cboxElement"
																			href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=2&amp;controller=product&amp;id_lang=1"
																			rel="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=2&amp;controller=product&amp;id_lang=1">
																			<span class="hidden-md hidden-sm hidden-xs">Quick
																				view</span>
																		</a>
																	</div>

																	<div class="col-lg-6 col-md-9 col-xs-9 btn-action">
																		<div class="zoom">
																			<a
																				class="info-view colorbox product-zoom btn-tooltip pts-fancybox cboxElement"
																				href="img/283-large_default.jpg" rel="nofollow"
																				data-toggle="tooltip" title="zoom"> </a>
																		</div>
																		<div class="compare">
																			<a class="btn-tooltip add_to_compare"
																				href="http://pavodemo.com/prestabrain/bella/cyan/index.php?id_product=2&amp;controller=product&amp;id_lang=1"
																				data-id-product="2" data-toggle="tooltip"
																				title="Compare"> </a>
																		</div>

																		<div class="wishlist">
																			<a class="addToWishlist wishlistProd_2" href="#"
																				onclick="WishlistCart('wishlist_block_list', 'add', '2', false, 1); return false;">
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
															href="http://pavodemo.com/prestabrain/bella/cyan/index.php?controller=cart&amp;add=1&amp;id_product=2&amp;token=fc8f4b82bcc66cb7501c4b081e23c92b"
															rel="nofollow" title="Add to cart" data-id-product="2">
															<span class="hidden-md hidden-sm hidden-xs">Add to
																cart</span> <span class="hidden-lg"><i
																class="icon-shopping-cart"></i></span>
														</a>
													</div>


													<div itemprop="offers" itemscope=""
														itemtype="http://schema.org/Offer"
														class="content_price price">

														<span itemprop="price" class="product-price">
															${q.price } </span>

														<meta itemprop="priceCurrency" content="USD" />



													</div>


												</div>
											</div>



											<!-- .product-container> -->
										</div>

										<script type="text/javascript">
											$("a.pts-fancybox").fancybox();
										</script>
									</div>
								</c:forEach>
							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- #center_column -->
	</div>
	<!-- #columns -->
	</div>

	<div id="content-bottom" class="parallax">
		<div class="container"></div>
	</div>
	</section>
	<!-- .columns-container -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>