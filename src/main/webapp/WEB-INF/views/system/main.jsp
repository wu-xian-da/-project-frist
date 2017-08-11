<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	--><!-- 
	<style>
		.bg-welcome{width: 500px;height: 300px;}
		
	</style> -->
  </head>
  
 <frameset id="app-main" rows="98,*,8"  border="7" bordercolor="#1873aa"     scrolling="No" noresize="noresize"  framespacing="0">
	<frame src="<%=basePath%>static/layout/syst_top.jsp" name="topFrame" scrolling="No"  noresize="noresize" id="topFrame" />
	<frameset cols="166,*">
		<frame src="<%=basePath%>static/layout/sys_left.jsp"   noresize="noresize" />
		<frame src="<%=basePath%>static/layout/bg.jsp"  name="mainFrame" class="bg-welcome" />
	</frameset>
</frameset>
</html>
