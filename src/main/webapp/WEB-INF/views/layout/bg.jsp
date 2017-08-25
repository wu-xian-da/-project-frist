<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bg</title>
</head>
<body>
	<h1>欢迎使用用户管理系统</h1>
	<hr/>
	<c:forEach items="${userPerms}" var="mb">
		${mb}/
	</c:forEach>
	<hr/>
	<c:forEach items="${userMenus }" var="parent">
		<c:if test="${fn:startsWith(currentUrl, parent.href) }">
			<c:forEach items="${parent.childs }" var="child">
				<c:if test="${fn:startsWith(currentUrl, child.href)}">class="active"</c:if>
					<a href="${child.href }">${child.name}</a>
				
			</c:forEach>
		</c:if>
	</c:forEach>
	
</body>
</html>