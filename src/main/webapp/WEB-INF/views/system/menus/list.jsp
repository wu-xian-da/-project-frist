<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="shiro" uri="http://java.sun.com/jsp/jstl/power"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 12px;
}

	a{
	text-decoration: none;
	color: #033d61;
	font-size: 12px;
}

A:hover {
	COLOR: #f60; TEXT-DECORATION: underline
}

-->
</style>
<script>
	var  highlightcolor='#c1ebff';
	var  clickcolor='#51b2f6';
	function  changeto(){
		source=event.srcElement;
		if  (source.tagName=="TR"||source.tagName=="TABLE")
			return;
		while(source.tagName!="TD")
		source=source.parentElement;
		source=source.parentElement;
		cs  =  source.children;
	//alert(cs.length);
		if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
		for(i=0;i<cs.length;i++){
			cs[i].style.backgroundColor=highlightcolor;
		}
	}
	
	function  changeback(){
		if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
			return
		if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
		//source.style.backgroundColor=originalcolor
		for(i=0;i<cs.length;i++){
			cs[i].style.backgroundColor="";
		}
	}
	
	function  clickto(){
		source=event.srcElement;
		if  (source.tagName=="TR"||source.tagName=="TABLE")
			return;
		while(source.tagName!="TD")
		source=source.parentElement;
		source=source.parentElement;
		cs  =  source.children;
		//alert(cs.length);
		if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
		for(i=0;i<cs.length;i++){
			cs[i].style.backgroundColor=clickcolor;
		}
		else
		for(i=0;i<cs.length;i++){
			cs[i].style.backgroundColor="";
		}
	}
</script>
<script type="text/javascript">
	function add(){  
			window.location="<%=basePath%>system/menus/insert";
		}

</script>
</head>
  
<body>
  
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="<%=basePath%>static/resource/images/tab_05.gif">
    	<form method="post">
	    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td width="12" height="30"><img src="<%=basePath%>static/resource/images/tab_03.gif" width="12" height="30" /></td>
	        <td>
	       
		        <table width="100%" border="0" cellspacing="0" cellpadding="0">
		          <tr>
		          	<td class="STYLE4" align="left" width="100px">条件检索</td>
		            <td class="STYLE4" align="left" width="250px">名称：<input type="text" name="name" style="width: 150px"/></td>
		            <td class="STYLE4" align="left" width="250px">权限标识：<input type="text" name="permission" style="width: 150px"/></td>
		            <td class="STYLE4" align="left" width="300px">类型：
		            	<select name="type" >
		            		<option value="">全部(单选)</option>
							<c:forEach items="${type}" var="t">
								<option value="${t}" <c:if test="${page.entity.type eq t }">selected="selected"</c:if>>${t.name}</option>
							</c:forEach>
						</select>
					</td>
		            <td class="STYLE4" align="right">&nbsp;&nbsp;
		            <shiro:hasPermission name="menus:select">
		            <input  type="submit" value="查询" style="width:50px"/>
		            </shiro:hasPermission>
		            </td>
		            <td class="STYLE4" align="right">&nbsp;&nbsp;
		            <shiro:hasPermission name="menus:insert">
		            <input  type="button" value="添加"  onclick="add()"  style="width:50px"/>
		            </shiro:hasPermission>
		            </td>
		          </tr>
		        </table>
		    
	        </td>
	        <td width="16"><img src="<%=basePath%>static/resource/images/tab_07.gif" width="16" height="30" />
	        	 <input   type="hidden"   name="id"   value=""  />
	        </td>
	      </tr>
	    </table>
	    </form>
    </td>
  </tr>


    <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="<%=basePath%>static/resource/images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            <td width="50px" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">序号</span></div></td>
            <td width="200px" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">名称</span></div></td>
            <td width="200px" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">链接</span></div></td>
            <td width="200px" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">权限标识</span></div></td>		
            <td width="150px" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">类型</span></div></td>		
			<td width="150px" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">排序号</span></div></td>
			<td width="100px" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
		</tr>
		<c:forEach items="${page.data}" var="p">
 		<tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${p.id}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${p.name}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${p.href}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${p.permission}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${p.type.name}</span></div></td>
			<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${p.sort}</span></div></td>
            <td height="20" bgcolor="#FFFFFF">
            <div align="center">
            	<span class="STYLE4">
		            <shiro:hasPermission name="menus:update">
		            	<img src="<%=basePath%>static/resource/images/edt.gif" width="16" height="16" />
		            	<a href="${pageContext.request.contextPath}/system/menus/update/${p.id}">编辑</a>&nbsp; 
		           </shiro:hasPermission>
		           <shiro:hasPermission name="menus:delete">
		            	<img src="<%=basePath%>static/resource/images/del.gif" width="16" height="16" />
		            	<a href="${pageContext.request.contextPath}/system/menus/delete/${p.id}" class="deleteuser">删除</a>
		           </shiro:hasPermission>
	            	<input type="hidden" name="username" value="${p.name }" />
	            </span>
            </div>
            </td>
         </tr>
         
         </c:forEach>
         </table></td>
        <td width="8" background="<%=basePath%>static/resource/images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
   <tr>
    <td height="35" background="<%=basePath%>static/resource/images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="<%=basePath%>static/resource/images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;&nbsp;<span>共${page.totalRecord }条数据</span> <span><i>|</i>每页显示
			<select id="_page_ps_select">
				<c:forEach items="${page.defaultPageSizeSelect}" var="s">
					<option value="${s }" <c:if test="${page.pageSize == s}">selected="selected"</c:if>>${s}</option>
				</c:forEach>
			</select>条</span></td>
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
			       
					<td width="40">
					<a href="<%=basePath%>system/menus?pn=1&ps=${page.pageSize}${page.urlParams}">
					<img src="<%=basePath%>static/resource/images/first.gif" width="37" height="15"  />
					</a>
					</td>
					<td width="45">
					<a href="<%=basePath%>system/menus?pn=${page.pageNo-1}&ps=${page.pageSize}${page.urlParams}">
					<input id="pagePnShang" type="hidden" name="pn" value="${page.pageNo-1}"/>
					<img src="<%=basePath%>static/resource/images/back.gif" width="43" height="15" id="shangyiye"/>
					</a>
					</td>
				
					<td>
					<c:forEach begin="${page.viewStartPage}" end="${page.viewEndPage}" step="1" var="pageIndex">
						<a <c:if test="${page.pageNo == pageIndex}">class="active"</c:if>
						href="<%=basePath%>system/menus?pn=${pageIndex}&ps=${page.pageSize}${page.urlParams}">${pageIndex}</a>
					</c:forEach>
					</td>
					
					<td width="45">
					<a href="<%=basePath%>system/menus?pn=${page.pageNo+1}&ps=${page.pageSize}${page.urlParams}">
					<input id="pagePnXia" type="hidden" name="pn" value="${page.pageNo+1}"/>
					<input id="totalPage" type="hidden" name="pn" value="${page.totalPage+1}"/>
					<img id="xiayiye" src="<%=basePath%>static/resource/images/next.gif" width="43" height="15"  />
					</a>
					</td>
					<td width="40">
					<a href="<%=basePath%>system/menus?pn=${page.totalPage}&ps=${page.pageSize}${page.urlParams}">
					<img src="<%=basePath%>static/resource/images/last.gif" width="37" height="15" />
					</a>
					</td>
					
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="<%=basePath%>static/resource/images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
<script type="text/javascript" src="<%=basePath%>static/resource/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>static/resource/js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="<%=basePath%>static/resource/js/validate-1708.js"></script>
<script type="text/javascript">
	//页面跳转
	$(function(){
		$("#_page_ps_select").change(function(){
			window.location.href = '<%=basePath%>system/menus?pn=${page.pageNo}${page.urlParams}&ps='+$(this).val();
		});
	});
</script>
</html>