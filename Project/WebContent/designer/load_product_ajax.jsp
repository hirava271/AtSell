<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="list" value="${sessionScope.product }"></c:set>
<c:set var="len" value="${function:length(list) }"></c:set>
[<c:forEach items="${sessionScope.product}" var="i" varStatus="j">
		{"cloth_id":"${i.cloth_id }","product_name":"${i.product_name }"}<c:if test="${len ne j.count }">,</c:if>
	</c:forEach>]