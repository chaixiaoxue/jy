<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp"%>
<!DOCTYPE html>
<div class="pagelist">
     		<div class="message">
  			共<i class="blue">${pageInfo.total}</i>条记录，当前显示第&nbsp;<i
     			class="blue">${pageInfo.pageNum}/${pageInfo.pages}</i>&nbsp;页
	</div>
	<br/>
	<div style="text-align:center;">
	    <ul class="pagination">
	    	<!-- 只显示5个页码 -->
	    	<c:set var="begin" value="0"/>
	    	<c:set var="end" value="0"/>
	    	<c:if test="${pageInfo.pages <=5}">
	    		<c:set var="begin" value="1"/>
	    		<c:set var="end" value="${pageInfo.pages }"/>
	    	</c:if>
	    	<c:if test="${pageInfo.pages>5}">
				<c:choose>
					<c:when test="${pageInfo.pageNum<=3 }">
						<c:set var="begin" value="1"/>
						<c:set var="end" value="5"/>
					</c:when>
					<c:when test="${pageInfo.pageNum>=pageInfo.pages-2 }">
						<c:set var="begin" value="${pageInfo.pages-4 }"/>
						<c:set var="end" value="${pageInfo.pages}"/>
					</c:when>
					<c:otherwise>
						<c:set var="begin" value="${pageInfo.pageNum-2 }"/>
						<c:set var="end" value="${pageInfo.pageNum+2 }"/>
					</c:otherwise>
				</c:choose>
			</c:if>
			
            <li><a href="javascript:page(${pageInfo.firstPage});">首页</a></li>
			<c:if test="${!pageInfo.isFirstPage}">
	        	<li><a href="javascript:page(${pageInfo.prePage});">上一页</a></li>
	        </c:if>
			<c:forEach begin="${begin }" end="${end }" step="1" var="i">
				<c:if test="${i==pageInfo.pageNum }">${i }</c:if>
				<c:if test="${i!=pageInfo.pageNum }">
				  <a href="javascript:page(${i})">${i }</a>
			    </c:if>
			</c:forEach>
			<c:if test="${!pageInfo.isLastPage}">
           	 	<li><a href="javascript:page(${pageInfo.nextPage});">下一页</a></li>
	        </c:if>
            <li><a href="javascript:page(${pageInfo.lastPage});">最后一页</a></li>
	    </ul>
	</div>
     		
</div>
</script>