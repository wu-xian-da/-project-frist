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
    
    <title>角色</title>
    
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
		<td class=editHeaderTd colSpan=2>${empty roles.id ? "新增" : "编辑" }角色</td>
	</tr>  
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px"><div align="center">角色名称：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
		<input type="hidden" name="id" value="${roles.id}">
		<input id="rolerolename" type="text" maxlength="10" style="width: 145px" valid="required"  errmsg="角色名称不能为空!" name="rolename" value="${roles.rolename }">
		<span id="err"></span>
		</td>
    </tr>
</table>

<table class=editTable cellSpacing=1 cellPadding=0 width="100%" align=center border=0>
	<tr bgcolor="#ECF3FD">
		<td width="25%"></td>
		<td width="17%"><input id="rolesumbit" type="submit" name="submit"  value="${empty roles.id ? "新增" : "编辑" }"></td>
		<td width="17%"><c:if test="${empty roles.id}"><input type="reset" name="reset"  value="重置"></c:if></td>
		<td width="3%"><input type="button" name="button"  onClick="history.back() "  value="返回"></td>
		<td width="46%"></td>
	</tr>
</table>
</form>
</body>
</html>

