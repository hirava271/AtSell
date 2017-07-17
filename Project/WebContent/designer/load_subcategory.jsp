<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="list" value="${sessionScope.subcategory }"></c:set>
<c:set var="len" value="${function:length(list) }"></c:set>
[<c:forEach items="${sessionScope.subcategory }" var="i" varStatus="j">
		{"subcategory_id":"${i.subcategory_id }","subcategory_name":"${i.subcategory_name }"}<c:if test="${len ne j.count }">,</c:if>
	</c:forEach>]