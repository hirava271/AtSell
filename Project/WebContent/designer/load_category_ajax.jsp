<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="list" value="${sessionScope.category }"></c:set>
<c:set var="len" value="${function:length(list) }"></c:set>
[<c:forEach items="${sessionScope.category }" var="i" varStatus="j">
		{"category_id":"${i.category_id }","category_name":"${i.category_name }"}<c:if test="${len ne j.count }">,</c:if>
	</c:forEach>]