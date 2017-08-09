<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<title>Insert title here</title>
</head>
<body>
	<div id="app-main-container" class="white-bg">
	<div class="col-md-12">
		<div class="box information-management-edit">
		<h2>${empty users.id ? "新增" : "编辑" }用户</h2>
		<form method="post">
		<input type="hidden" name="id" value="${users.id }">
		
		<div class="row">
			<div class="col-md-12">
				<hr>
				<div class="row row-list">
					<div class="col-md-1">
						<label>姓名：</label>
					</div>
					<div class="col-md-8">
						<input type="text" name="username" value="${users.username}" placeholder="姓名">
					</div>
				</div>
	
				<div class="row row-list">
					<div class="col-md-1">
						<label>密码：</label>
					</div>
					<div class="col-md-8">
						<input type="password" name="password" value="${users.password}" placeholder="密码">
					</div>
				</div>
	
				<div class="row row-list">
					<div class="col-md-1">
						<label>昵称：</label>
					</div>
					<div class="col-md-8">
						<input type="text" name="nickname" value="${users.nickname}" placeholder="昵称">
					</div>
				</div>
				
				<div class="row row-list">
					<div class="col-md-1">
						<label>性别：</label>
					</div>
					<div class="col-md-8">
						<!-- String gender -->
						<select name="gender">
							<option value="man" <c:if test="${'man' eq users.gender }">selected</c:if>>男</option>
							<option value="woman" <c:if test="${'woman' eq users.gender }">selected</c:if>>女</option>
						</select>
						
						<!-- emnu gender -->
						<select name="gender">
							<c:forEach items="${gender}" var="sex">
								<option value="${sex}" <c:if test="${Users.gender eq sex }">selected="selected"</c:if>>${sex.name}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				
				<div class="row row-list">
					<div class="col-md-1">
						<label>年龄：</label>
					</div>
					<div class="col-md-8">
						<input type="text" name="age" value="${users.age}" placeholder="年龄">
					</div>
				</div>
	
			  	<div class="row row-list">
			  		<div class="col-md-1"></div>
			  		<div class="col-md-8">
			  			<div class="operation-box">
							<button type="submit" class="btn btn-gy btn-query">
								<span class="glyphicon glyphicon-ok-sign"></span>提交
							</button>
							<button type="button" onclick="javascript:history.back();" class="btn btn-gy btn-sort">
								<span class="glyphicon glyphicon-arrow-left"></span>返回
							</button>
						</div>
					</div>
				  </div>
				</div>
			</div>
		</form>
		</div>
	</div>
	</div>
</body>
</html>