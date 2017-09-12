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
    
    <title>显示角色信息</title>
    
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
			window.location="<%=basePath%>system/roles/insert";
		}

</script>
</head>
  
<body>
  
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="<%=basePath%>static/resource/images/tab_05.gif">
    	<form method="post" action="<%=basePath%>system/roles">
	    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td width="12" height="30"><img src="<%=basePath%>static/resource/images/tab_03.gif" width="12" height="30" /></td>
	        <td>
	       
		        <table width="100%" border="0" cellspacing="0" cellpadding="0">
		          <tr>
		            <td class="STYLE4" align="left" width="10%">条件检索</td>
		            <td class="STYLE4" align="left" width="60%">&nbsp;&nbsp;角色名称：<input type="text" name="rolename" style="width: 100px"/></td>
		            
		            <td class="STYLE4" align="right" width="15%">&nbsp;&nbsp;
		           	<shiro:hasPermission name="roles:select">
		            <input  type="submit" value="查询" style="width:50px"/>
		           	</shiro:hasPermission>
		            </td>
		            <td class="STYLE4" align="right" width="10%">&nbsp;&nbsp;
		            <shiro:hasPermission name="roles:insert">
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
            <td width="3%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">序号</span></div></td>
            <td width="30%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">角色名称</span></div></td>
            <td width="30%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">用户昵称</span></div></td>
			<td width="15%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
		</tr>
		<c:forEach items="${page.data}" var="r">
 		<tr>
            <td height="20" bgcolor="#FFFFFF"style="width: 3%"><div align="center"><span class="STYLE1">${r.id}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"style="width: 3%"><div align="center"><span class="STYLE1">${r.rolename}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"style="width: 3%"><div align="center"><span class="STYLE1">${r.userList}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"style="width: 15%">
            <div align="center">
	            <span class="STYLE4">
		            <shiro:hasPermission name="roles:update">
			            <img src="<%=basePath%>static/resource/images/edt.gif" width="16" height="16" />
			            <a href="<%=basePath%>system/roles/update/${r.id}">编辑</a>&nbsp; 
		            </shiro:hasPermission>
		            <shiro:hasPermission name="roles:delete">
			            <img src="<%=basePath%>static/resource/images/del.gif" width="16" height="16" />
			            <a href="<%=basePath%>system/roles/delete|/${r.id}" class="deleterole">删除</a>
		           	</shiro:hasPermission>
		            <input type="hidden" name="rolename" value="${r.rolename}"/>
		            <input type="hidden" name="users" value="${r.userList}"/>
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
					<a href="<%=basePath%>system/roles?pn=1&ps=${page.pageSize}${page.urlParams}">
					<img src="<%=basePath%>static/resource/images/first.gif" width="37" height="15"  />
					</a>
					</td>
					<td width="45">
					<a href="<%=basePath%>system/roles?pn=${page.pageNo-1}&ps=${page.pageSize}${page.urlParams}">
					<input id="pagePnShang" type="hidden" name="pn" value="${page.pageNo-1}"/>
					<img id="shangyiye" src="<%=basePath%>static/resource/images/back.gif" width="43" height="15" />
					</a>
					</td>
					<td>
					<c:forEach begin="${page.viewStartPage}" end="${page.viewEndPage}" step="1" var="pageIndex">
						<a <c:if test="${page.pageNo == pageIndex}">class="active"</c:if>
						href="<%=basePath%>system/roles?pn=${pageIndex}&ps=${page.pageSize}${page.urlParams}">${pageIndex}</a>
					</c:forEach>
					</td>
					<td width="45">
					<a href="<%=basePath%>system/roles?pn=${page.pageNo+1}&ps=${page.pageSize}${page.urlParams}">
					<input id="pagePnXia" type="hidden" name="pn" value="${page.pageNo+1}"/>
					<input id="totalPage" type="hidden" name="pn" value="${page.totalPage+1}"/>
					<img id="xiayiye" src="<%=basePath%>static/resource/images/next.gif" width="43" height="15"  />
					</a>
					</td>
					<td width="40">
					<a href="<%=basePath%>system/roles?pn=${page.totalPage}&ps=${page.pageSize}${page.urlParams}">
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
$(function(){
	$("#_page_ps_select").change(function(){
		window.location.href = '<%=basePath%>system/roles?pn=${page.pageNo}${page.urlParams}&ps='+$(this).val();
	});
});
</script>
</html>