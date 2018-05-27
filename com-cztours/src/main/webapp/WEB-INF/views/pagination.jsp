<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav>
	<ul class="pager">
		<c:if test="${pager.isFirst }" var="isFirst">
			<li class="disabled"><a href="javascript:;">首页</a></li>
			<li class="disabled"><a href="javascript:;">上一页</a></li>
		</c:if>
		<c:if test="${not isFirst }">
			<li><a pageIndex="1" pageSize="${pager.pageSize}" href="javascript:;">首页</a></li>
			<li><a pageIndex="${pager.previousIndex}" pageSize="${pager.pageSize}" href="javascript:;">上一页</a></li>
		</c:if>
			
			
		<c:if test="${pager.isLast}" var="isLast">
			<li class="disabled"><a href="javascript:;">下一页</a></li>
			<li class="disabled"><a href="javascript:;">尾页</a></li>
		</c:if>
		<c:if test="${not isLast}">
			<li><a pageIndex="${pager.nextIndex}" pageSize="${pager.pageSize}" href="javascript:;">下一页</a></li>
			<li><a pageIndex="${pager.totalPages}" pageSize="${pager.pageSize}" href="javascript:;">尾页</a></li>
		</c:if>
	</ul>
</nav>