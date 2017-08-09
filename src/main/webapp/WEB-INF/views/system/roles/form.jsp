<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="app-main-container" class="white-bg">
	<div class="col-md-12">
		<div class="box information-management-edit">
		<h2>${empty roles.id ? "新增" : "编辑" }角色</h2><br/>
		<form method="post">
			<input type="hidden" name="id" value="${roles.id}">
			<table>
				<tr><td>角色名称：</td><td><input type="text" name="rolename" value="${roles.rolename}" placeholder="角色名称"></td></tr>
				<tr>
					<td><input type="submit" name="submit" value="提交"/></td>
					<td><button type="button" onclick="javascript:history.back();">返回</button></td>
				</tr>
			</table>
		</form>
		</div>
	</div>
</div>
</body>
</body>
</html>