<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    
    <title>用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="<%=basePath%>static/resource/css/admin.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="<%=basePath%>static/resource/js/CheckForm.js"></script>
	<script type="text/javascript" src="<%=basePath%>static/resource/js/My97DatePicker/WdatePicker.js"></script>
	<script language="JavaScript" type="text/javascript" src="<%=basePath%>static/resource/js/FormValid.js"></script>
	<script type="text/javascript" src="<%=basePath%>static/resource/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>static/resource/js/jquery-2.0.0.js"></script>
	<script type="text/javascript" src="<%=basePath%>static/resource/js/validate-1708.js"></script>
</head>
  
<body>
<form name="form1" onsubmit="return validator(this)" method="post" >
<table class=editTable cellSpacing=1 cellPadding=0 width="100%" align=center border=0>
	<tr class=editHeaderTr>
		<td class=editHeaderTd colSpan=2>${empty users.id ? "新增" : "编辑" }用户</td>
	</tr>  
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px"><div align="center">姓名：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
		<input type="hidden" name="id" value="${users.id}">
		<input type="text" maxlength="10" style="width: 145px" valid="required|isChinese"  errmsg="姓名不能为空!|请输入中文姓名!" name="username" value="${users.username }">
		</td>
    </tr>
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px"><div align="center">密码：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
		<input id="userpassword" type="password" maxlength="10" style="width: 145px" valid="required"  errmsg="密码不能为空!" name="password" value="${users.password }">
		<span id="err1"></span><span id="err2"></span>
		</td>
    </tr>
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px"><div align="center">昵称：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
		<input type="text" maxlength="10" style="width: 145px" valid="required"  errmsg="昵称不能为空!" name="nickname" value="${users.nickname }">
		</td>
    </tr>
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px"><div align="center">角色：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
			<select name="role.id" style="width: 145px" >
				<c:forEach items="${roles}" var="r">
					<option value="${r.id}" <c:if test="${users.role.id eq r.id}">selected="selected"</c:if>>${r.rolename}</option>
				</c:forEach>
			</select>
		</td>
    </tr>
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px"><div align="center">性别：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
			<c:forEach items="${gender}" var="gender">
				<c:choose>
				<c:when test="${empty users.id}">
				<input type="radio" name="gender" value="${gender}" <c:if test="${'NAN' eq gender}">checked="checked"</c:if>/>${gender.name}	
				</c:when>
				<c:otherwise>
				<input type="radio" name="gender" value="${gender}" <c:if test="${users.gender eq gender}">checked="checked"</c:if>/>${gender.name}
				</c:otherwise>
				</c:choose>
			</c:forEach>
		</td>
    </tr>
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px"><div align="center">年龄：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
		<input id="userage" type="text" maxlength="2" style="width: 145px" valid="required|isNumber" errmsg="年龄不能为空!|请输入正确的年龄!" name="age" value="${users.age }">
		<span id="err3"></span>
		</td>
    </tr>
</table>

<table class=editTable cellSpacing=1 cellPadding=0 width="100%" align=center border=0>
	<tr bgcolor="#ECF3FD">
		<td width="25%"></td>
		<td width="17%"><input id="usersubmit" type="submit" name="submit"  value="${empty users.id ? "新增" : "编辑" }"></td>
		<td width="17%"><c:if test="${empty users.id}"><input type="reset" name="reset"  value="重置"></c:if></td>
		<td width="3%"><input type="button" name="button"  onClick="history.back() "  value="返回"></td>
		<td width="46%"></td>
	</tr>
</table>
</form>
</body>
</html>

