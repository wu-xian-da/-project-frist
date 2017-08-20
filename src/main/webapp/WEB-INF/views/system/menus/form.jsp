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
	<script type="text/javascript" src="<%=basePath%>static/resource/js/jquery-2.0.0.js"></script>
	<script type="text/javascript" src="<%=basePath%>static/resource/js/validate-1708.js"></script>
</head>
  
<body>
<form name="form1" onsubmit="return validator(this)" method="post" >
<table class=editTable cellSpacing=1 cellPadding=0 width="100%" align=center border=0>
	<tr class=editHeaderTr>
		<td class=editHeaderTd colSpan=2>${empty menus.id ? "新增" : "编辑" }权限</td>
	</tr>  
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px"><div align="center">名称：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
		<input type="hidden" name="id" value="${menus.id}">
		<input type="text" style="width: 145px" valid="required|isChinese"  errmsg="姓名不能为空!|请输入中文姓名!" name="name" value="${menus.name }">
		</td>
    </tr>
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px"><div align="center">链接：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
		<input id="userpassword" type="text" style="width: 145px" valid="required"  errmsg="密码不能为空!" name="href" value="${menus.href }">
		<span id="err1"></span><span id="err2"></span><span id="err3"></span>
		</td>
    </tr>
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px"><div align="center">权限标识：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
		<input id="usernickname" type="text" style="width: 145px" valid="required"  errmsg="昵称不能为空!" name="permission" value="${menus.permission }">
		<span id="err5"></span>
		</td>
    </tr>
    
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px"><div align="center">类型：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
			<c:forEach items="${type}" var="t">
				<c:choose>
				<c:when test="${empty menus.id}">
				<input type="radio" name="type" value="${t}" />${t.name}	
				</c:when>
				<c:otherwise>
				<input type="radio" name="type" value="${t}" <c:if test="${menus.type eq t}">checked="checked"</c:if>/>${t.name}
				</c:otherwise>
				</c:choose>
			</c:forEach>
		</td>
    </tr>
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px"><div align="center">排序号：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
		<input id="userage" type="text"  style="width: 145px" valid="required|isNumber" errmsg="年龄不能为空!|请输入正确的年龄!" name="sort" value="${menus.sort }">
		<span id="err4"></span>
		</td>
    </tr>
</table>

<table class=editTable cellSpacing=1 cellPadding=0 width="100%" align=center border=0>
	<tr bgcolor="#ECF3FD">
		<td width="25%"></td>
		<td width="17%"><input id="menusubmit" type="submit" name="submit"  value="${empty menus.id ? "新增" : "编辑" }"></td>
		<td width="17%"><c:if test="${empty menus.id}"><input type="reset" name="reset"  value="重置"></c:if></td>
		<td width="3%"><input type="button" name="button"  onClick="history.back() "  value="返回"></td>
		<td width="46%"></td>
	</tr>
</table>
</form>
</body>
</html>

