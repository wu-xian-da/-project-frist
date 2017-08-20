<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="functions" uri="/WEB-INF/tlds/functions.tld" %>

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
	<script type="text/javascript" src="<%=basePath%>static/resource/js/jquery.validate.min.js"></script>
</head>
  
<body>
<form name="form1" onsubmit="return validator(this)" method="post" id="role_form">
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
    <tr>
	  	<td bgcolor="#FFFDF0" width="160px" valign="top"><div align="center">角色权限：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
			<c:set var="menuIndex" value="0" />
			<c:forEach items="${menus }" var="p"><!--一级  -->
				<div class="row">
					<div class="col-md-12">
						<label>
							<input type="checkbox" name="menus[${menuIndex }].id" value="${p.id }"
							<c:if test="${functions:in(role.menus, p)}">checked</c:if>>${p.name }
						</label>
						<c:set var="menuIndex" value="${menuIndex + 1 }" />
					</div>
				</div>
				<c:if test="${fn:length(p.childs) > 0 }"><!-- 二级   -->
					<div class="row sysmanage-role-child">
						<div class="col-md-12">
							<c:forEach items="${p.childs }" var="c">
								<label>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="checkbox" data-p="${p.id }" name="menus[${menuIndex }].id" value="${c.id }"
									<c:if test="${functions:in(role.menus, c)}">checked</c:if>>${c.name }
								</label>
								<c:set var="menuIndex" value="${menuIndex + 1 }" />
								
								<c:if test="${fn:length(c.childs) > 0 }"><!-- 三级 -->
									<div>
										<c:forEach items="${c.childs }" var="d">
											<label>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="checkbox" data-p="${c.id }" name="menus[${menuIndex }].id" value="${d.id }"
												<c:if test="${functions:in(role.menus, d)}">checked</c:if>>${d.name }
											</label>
											<c:set var="menuIndex" value="${menuIndex + 1 }" />
										</c:forEach>
									</div>
								</c:if>	
							</c:forEach>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</td>
    </tr>
</table>

<table class=editTable cellSpacing=1 cellPadding=0 width="100%" align=center border=0>
	<tr bgcolor="#ECF3FD">
		<td width="25%"></td>
		<td width="17%"><button id="rolesumbit" type="button" onclick="roleSubmit();">${empty roles.id ? "新增" : "编辑" }</button>
		<td width="17%"><c:if test="${empty roles.id}"><input type="reset" name="reset"  value="重置"></c:if></td>
		<td width="3%"><input type="button" name="button"  onClick="history.back() "  value="返回"></td>
		<td width="46%"></td>
	</tr>
</table>
</form>
</body>
<script type="text/javascript">
	$("#role_form").validate({
		errorPlacement: function(error,element){
			error.appendTo(element.parent());
		}
	});
	function roleSubmit(){
		var checksLen = $('input[type="checkbox"]:checked').length;
		if(checksLen == 0){
			alert("请选择授权信息");
			return;
	 	}
		$("#role_form").submit();
	}
	$(function(){
		$("#role_form").validate({
			errorPlacement: function(error,element){
				error.appendTo(element.parent());
			}
		});
		
		$('input[type="checkbox"]').on('click',function(){
			var _statusP = $(this).prop("checked");
			
			//父节点
			var parent_v = $(this).data("p");
			if(parent_v != null && parent_v != '' && _statusP){
				$('input[value='+parent_v+']').prop("checked", true);
			}
			
			//子节点
			$('input[data-p='+$(this).val()+']').each(function(){
				var _statusC = $(this).prop("checked");
				if(_statusP){
					if(!_statusC){
						$(this).click();
					}
				}
				else{
					if(_statusC){
						$(this).click();
					}
				}
				
			});
	 	});
	});
</script>
</html>

