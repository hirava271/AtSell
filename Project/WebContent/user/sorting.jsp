<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head></head>
	
	<div id="left_column" class="sidebar column col-xs-12 col-sm-12 col-md-3 col-lg-3 offcanvas-sidebar">
								<div class="sidebar-content">
	
	<div id="layered_block_left" class="block">
		<h4 class="title_block">Shop by</h4>
		<div class="block_content">
		<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
			<form action="<%=request.getContextPath() %>/USortingServlet?flag=shopBy" id="layered_form" method="post">
				<div>
					<div class="layered_filter">
						<div class="layered_subtitle_heading">
							<span class="layered_subtitle">Manufacturer</span>
							<!--<span class="layered_close">
                            	<a href="#" rel="ul_layered_manufacturer_0"></a>
                            </span>-->
						</div>
						<ul>
							<c:forEach items="${sessionScope.sorting_designer }" var="i">
							
							 		
							<li >
							<input type="checkbox" name="d_sort" value="${i.designer_user_id}" /> 
							 <a
									href="<%=request.getContextPath() %>/USortingServlet?flag=designer&id=${i.designer_user_id}&name=${i.display_name }"
									>${i.display_name }</a>
								</li></c:forEach>
						</ul>
					</div>
					
					<div class="layered_price" style="display: none;">
						<div class="layered_subtitle_heading">
							<span class="layered_subtitle">Price</span>
							<!-- <span class="layered_close">
                            	<a href="#" rel="ul_layered_price_0"></a>
                            </span> -->
						</div>
						<ul id="ul_layered_price_0" class="col-lg-12 layered_filter_ul">
							<li><label for="price"> Range: </label> 
								<span name="upper_range" id="layered_price_range"></span>
								<div class="layered_slider_container">
									<div class="layered_slider" id="layered_price_slider"
										data-type="price" data-format="1" data-unit="$"></div>
								</div></li>
						</ul>
					</div>
					<div class="layered_filter">
						<div class="layered_subtitle_heading">
							<span class="layered_subtitle">Color</span>
							
						</div>
						<ul>
							<c:forEach items="${sessionScope.sorting_color }" var="i">
							<li>
							<%-- <input type="checkbox" name="c_sort" value="${i.color_code}" style="height:2px;width:2px"/> --%>
							<%-- <input
								class="color-option  " type="button"
								name="layered_id_attribute_group_5" rel="5_3"
								id="layered_id_attribute_group_5" style="background: ${i.color_code} " /> --%>
								<div style="background:${i.color_code};height:27px;width:27px;float:left;padding:5px;margin:5px;border:1px">
								<input
								 type="checkbox" name="c_sort" value="${i.color_code}"
								/></div>
							
								</li></c:forEach>
						</ul>
					</div>
					<div class="layered_filter">
						<div class="layered_subtitle_heading">
							<span class="layered_subtitle">Compositions</span>
							<!--<span class="layered_close">
                            	<a href="#" rel="ul_layered_id_feature_5"></a>
                            </span>-->
						</div>
						<ul>
							<c:forEach items="${sessionScope.sorting_material}" var="i">
							<li>
							<input type="checkbox" name="m_sort" value="${i.material_id}">
							${i.material}
			
							</li></c:forEach>
						</ul>
					</div>
					<div class="layered_filter">
						<div class="layered_subtitle_heading">
							<span class="layered_subtitle">Neck</span>
							<!--<span class="layered_close">
                            	<a href="#" rel="ul_layered_id_feature_6"></a>
                            </span>-->
						</div>
						<ul>
							<c:forEach items="${sessionScope.sorting_neck }" var="i">
							<li>
							<input type="checkbox" name="n_sort" value="${i.neck_id}">
							${i.neck_type}
							</li></c:forEach>
						</ul>
					</div>
					<div class="layered_filter">
						<div class="layered_subtitle_heading">
							<span class="layered_subtitle">Sleeve</span>
							<!--<span class="layered_close">
                            	<a href="#" rel="ul_layered_id_feature_7"></a>
                            </span>-->
						</div>
						<ul>
							<c:forEach items="${sessionScope.sorting_sleeves }" var="i">
							<li>
							<input type="checkbox" name="s_sort" value="${i.sleeves_id }">
							${i.sleeves_type }
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<input type="hidden" name="id_category_layered" value="24" />
				<input type="hidden" name="price_range" id="id_layered_price_range"  />
				<script>
				function funrange(){
					var hdn=document.getElementById("id_layered_price_range");
					var spn =document.getElementById("layered_price_range");
					hdn.value=spn.innerHTML;
				}
				</script>
				<input type="submit" value="Sort By" style="margin-left: 20px" onclick="funrange()">
			</form>
		</div></div></div>
		
	</div>
	<!-- /Block layered navigation module -->

</html>