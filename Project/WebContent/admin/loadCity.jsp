<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="list" value="${sessionScope.city }"></c:set>
<c:set var="len" value="${function:length(list) }"></c:set>
[<c:forEach items="${sessionScope.city }" var="i" varStatus="j">
		{"city_id":"${i.city_id}","city_name":"${i.city_name}"}<c:if test="${len ne j.count }">,</c:if>
	</c:forEach>]