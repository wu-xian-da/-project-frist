<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户</title>
</head>
<body>
<div id="app-main-container" class="white-bg">
	<div class="col-md-12">
		<div class="box information-management-edit">
		<h2>${empty users.id ? "新增" : "编辑" }用户</h2>
		<form method="post">
			<input type="hidden" name="id" value="${users.id}">
			<table>
				<tr><td>姓名：</td><td><input type="text" name="username" value="${users.username}" placeholder="姓名"></td></tr>
				<tr><td>密码：</td><td><input type="password" name="password" value="${users.password}" placeholder="密码"></td></tr>
				<tr><td>昵称：</td><td><input type="text" name="nickname" value="${users.nickname}" placeholder="昵称"></td></tr> 
				<tr><td>角色：</td>
					<td>
						<select name="role.id">
							<c:forEach items="${roles}" var="r">
								<option value="${r.id}" <c:if test="${users.role.id eq r.id}">selected="selected"</c:if>>${r.rolename}</option>
							</c:forEach>
						</select>
					</td>
				</tr> 
				<tr>
					<td>性别：</td>
					<td>
						<c:forEach items="${gender}" var="gender">
							<input type="radio" name="gender" value="${gender}" <c:if test="${users.gender eq gender}">checked="checked"</c:if>/>${gender.name}
						</c:forEach>
					</td>
				</tr>
				<tr><td>年龄：</td><td><input type="text" name="age" value="${users.age}" placeholder="年龄"></td></tr>
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