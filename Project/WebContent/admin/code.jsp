<%@page import="VO.UaddToCartMstVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.codeDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="menu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	codeDAO cDao = new codeDAO();
List ld_count=cDao.total_designers();
int cnt_designer=(Integer.parseInt(ld_count.get(0).toString()));

List lb_count=cDao.total_buyers();
int cnt_buyer=(Integer.parseInt(lb_count.get(0).toString()));

List earning=cDao.total_earning();
int tearning=(Integer.parseInt(earning.get(0).toString()));

List t_quantity=cDao.total_quantity();
int total_qty=(Integer.parseInt(t_quantity.get(0).toString()));

List t_cloths=cDao.total_cloths();
int total_cloths=(Integer.parseInt(t_cloths.get(0).toString()));

List t_accessories=cDao.total_accessories();
int total_accessories=(Integer.parseInt(t_accessories.get(0).toString()));

System.out.println("Total designers........."+cnt_designer);
System.out.println("Total BUYERrs........."+cnt_buyer);
System.out.println("Total earning........."+tearning);
System.out.println("Total total_qty........."+total_qty);
System.out.println("Total total_cloths........."+total_cloths);
System.out.println("Total total_accessories........."+total_accessories);

List ls = new ArrayList();
Object [] obj = new Object[2];
obj[0]="Cloths";
obj[1]=total_cloths;
ls.add(obj); 
 obj = new Object[2];
obj[0]="Accessories";
obj[1]=total_accessories;
ls.add(obj);
session.setAttribute("lschart",ls);


%>
	<section class="main-content">

	<div class="content-wrap">

		<div class="wrapper">
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<section class="dash-tile bg-warning">
					<div class="tile-title title-heading text-center bg-warning">
						<a href="javascript:;" class="widget-refresh"><i
							class="ti-reload pull-right"></i></a> <a href="javascript:;"><i
							class="ti-menu pull-left"></i></a> <span>Total Designers</span>
					</div>
					<div class="tile-stats">
						<b><%=cnt_designer %></b>
					</div>
					<div class="tile-bottom">
						<small>&nbsp; &nbsp; 
							<b>&nbsp; </b></small>
					</div>
					<div class="tile-footer">&nbsp; &nbsp; </div>
					</section>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<section class="dash-tile bg-warning" style="background-color:#da3e16">
					<div class="tile-title title-heading text-center bg-warning" style="background-color:#da3e16">
						<a href="javascript:;" class="widget-refresh"><i
							class="ti-reload pull-right"></i></a> <a href="javascript:;"><i
							class="ti-menu pull-left"></i></a> <span>Total Buyers</span>
					</div>
					<div class="tile-stats">
						<b><%=cnt_buyer %></b>
					</div>
					<div class="tile-bottom">
						<small>&nbsp; &nbsp; 
							<b>&nbsp; </b></small>
					</div>
					<div class="tile-footer">&nbsp; &nbsp; </div>
					</section>
				</div>
 			<div class="col-md-3 col-sm-6 col-xs-12">
					<section class="dash-tile bg-success">
					<div class="tile-title">ALL TIME EARNING</div>
					<div class="tile-stats">
						<b><%= tearning %></b>
					</div>
					<div class="tile-bottom">
						<small></i>&nbsp;<b>&nbsp;</b></small>
					</div>
					<div class="tile-footer">&nbsp;</div>
					<div class="tile-icon">
						<i class="ti-timer"></i>

					</div>
					</section>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<section class="dash-tile bg-warning">
					<div class="tile-title title-heading text-center bg-warning">
						<a href="javascript:;" class="widget-refresh"><i
							class="ti-reload pull-right"></i></a> <a href="javascript:;"><i
							class="ti-menu pull-left"></i></a> <span>Available  Products </span>
					</div>
					<div class="tile-stats">
						<b><%=total_qty %></b>
					</div>
					<div class="tile-bottom">
						<small>&nbsp;
							<b>&nbsp;</b></small>
					</div>
					<div class="tile-footer">&nbsp;</div>
					</section>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-lg-8" style="width: 600px; border: 3px">
					<jsp:include page="chart.jsp"></jsp:include>
					<section class="widget">
					</section>
					<div class="row">
					</div>
				</div>
				<div class="col-md-12 col-lg-4">
					<section class="widget">
					<iframe src="<%=request.getContextPath() %>/admin/pie.jsp" style="width: 600px; height: 300px;background: #f1f4f9;border: 0px"></iframe>
					 </section>
					
				</div>
			</div>
			<div class="row mb25">
			</div>
		</div>

	</div>

	<a class="exit-offscreen"></a> </section>

	</section>
	</div>

</body>
</html>