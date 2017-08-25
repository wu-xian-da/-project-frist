<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
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
			window.location="<%=basePath%>system/users/insert";
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
	        <td width="12" height="30">
	        <img src="<%=basePath%>static/resource/images/tab_03.gif" width="12" height="30" />
	        </td>
	        <td>
	       
		        <table width="100%" border="0" cellspacing="0" cellpadding="0">
		          <tr>
		          	<td class="STYLE4" align="left" width="100px">条件检索</td>
		            <td class="STYLE4" align="left" width="150px">姓名：
		            <input type="text" name="username" style="width: 50px"/>
		            </td>
		            <td class="STYLE4" align="left" width="150px">昵称：
		            <input type="text" name="nickname" style="width: 50px"/>
		            </td>
		            <td class="STYLE4" align="left" width="200px">性别：
		            	<select name="gender" >
		            		 <option value="">全部(单选)</option>
							<c:forEach items="${gender}" var="sex">
								<option value="${sex}" <c:if test="${page.entity.gender eq sex }">selected="selected"</c:if>>
								${sex.name}</option>
							</c:forEach>
						</select>
					</td>
		            <td class="STYLE4" align="right" width="200px">检索时间：
		            <input type="text" name="beginCreateTime" style="width: 100px" class="sang_Calender"/>
		            <script type="text/javascript" src="<%=basePath%>static/resource/js/datetime.js"></script>
		            </td>
		            <td class="STYLE4" align="left" width="2px">至</td>
		            <td class="STYLE4" align="left">
		            <input type="text" name="endCreateTime" style="width: 100px" class="sang_Calender"/>
		            <script type="text/javascript" src="<%=basePath%>static/resource/js/datetime.js"></script>
		            </td>
		            <td class="STYLE4" align="right">&nbsp;&nbsp;
		           	<c:forEach items="${userPerms}" var="up">
		           	<c:if test="${up eq 'users:select'}">
		            <input  type="submit" value="查询" style="width:50px"/>
		            </c:if>
		            </c:forEach>
		            </td>
		            <td class="STYLE4" align="right">&nbsp;&nbsp;
		            <c:forEach items="${userPerms}" var="up">
		           	<c:if test="${up eq 'users:insert'}">
		            <input  type="button" value="添加"  onclick="add()"  style="width:50px"/>
		            </c:if>
		            </c:forEach>
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
        <td>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            <td width="3%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF">
            <div align="center"><span class="STYLE1">序号</span></div>
            </td>
            <td width="8%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF">
            <div align="center"><span class="STYLE1">昵称</span></div>
            </td>
            <td width="8%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF">
            <div align="center"><span class="STYLE1">姓名</span></div>
            </td>
            <td width="8%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF">
            <div align="center"><span class="STYLE1">密码</span></div>
            </td>		
            <td width="7%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF">
            <div align="center"><span class="STYLE1">归属角色</span></div>
            </td>		
			<td width="2%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF">
			<div align="center"><span class="STYLE1">性别</span></div>
			</td>
			<td width="3%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF">
			<div align="center"><span class="STYLE1">年龄</span></div>
			</td>
			<td width="7.5%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF">
			<div align="center"><span class="STYLE1">创建时间</span></div>
			</td>	
			<td width="7.5%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF">
			<div align="center"><span class="STYLE1">登录时间</span></div>
			</td>	
			<td width="6%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF">
			<div align="center"><span class="STYLE1">IP</span></div>
			</td>
			<td width="15%" height="22" background="<%=basePath%>static/resource/images/bg2.gif" bgcolor="#FFFFFF" class="STYLE1">
			<div align="center">基本操作</div>
			</td>
		</tr>
		<c:forEach items="${page.data}" var="u">
 		<tr>
            <td height="20" bgcolor="#FFFFFF"style="width: 3%">
            <div align="center"><span class="STYLE1">${u.id}</span></div>
            </td>
            <td height="20" bgcolor="#FFFFFF"style="width: 6%">
            <div align="center"><span class="STYLE1">${u.nickname}</span></div>
            </td>
            <td height="20" bgcolor="#FFFFFF"style="width: 3%">
            <div align="center"><span class="STYLE1">${u.username}</span></div>
            </td>
            <td height="20" bgcolor="#FFFFFF"style="width: 3%">
            <div align="center"><span class="STYLE1">${u.password}</span></div>
            </td>
            <td height="20" bgcolor="#FFFFFF"style="width: 6%">
            <div align="center"><span class="STYLE1">${u.role.rolename}</span></div>
            </td>
			<td height="20" bgcolor="#FFFFFF"style="width: 3%">
			<div align="center"><span class="STYLE1">${u.gender.name}</span></div>
			</td>
            <td height="20" bgcolor="#FFFFFF"style="width: 3%">
            <div align="center"><span class="STYLE1">${u.age}</span></div>
            </td>
            <td height="20" bgcolor="#FFFFFF"style="width: 5%">
            <div align="center"><span class="STYLE1">
            <fmt:formatDate value="${u.createTime}" pattern="yyyy-MM-dd HH:mm" type="date" /></span>
            </div>
            </td>
			<td height="20" bgcolor="#FFFFFF"style="width: 3%">
			<div align="center"><span class="STYLE1">
			<fmt:formatDate value="${u.loginTime}" pattern="yyyy-MM-dd HH:mm" type="date" /></span>
			</div>
			</td>
            <td height="20" bgcolor="#FFFFFF"style="width: 5%">
            <div align="center"><span class="STYLE1">${u.ip}</span></div>
            </td>
            <td height="20" bgcolor="#FFFFFF"style="width: 15%">
            <div align="center">
	            <span class="STYLE4">
		            	<c:forEach items="${userPerms}" var="up">
		           		<c:if test="${up eq 'users:update'}">
		           		<img src="<%=basePath%>static/resource/images/edt.gif" width="16" height="16" />
		            	<a href="${pageContext.request.contextPath}/system/users/update/${u.id}">编辑</a>&nbsp; 
		            	</c:if>
		            	</c:forEach>
		            	<c:forEach items="${userPerms}" var="up">
		           		<c:if test="${up eq 'users:delete'}">
		            	<img src="<%=basePath%>static/resource/images/del.gif" width="16" height="16" />
		            	<a href="${pageContext.request.contextPath}/system/users/delete/${u.id}" class="deleteuser">删除</a>
		            	</c:if>
		            	</c:forEach>
		            <input type="hidden" name="username" value="${u.username }" />
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
    <td height="35" background="<%=basePath%>static/resource/images/tab_19.gif">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35">
        <img src="<%=basePath%>static/resource/images/tab_18.gif" width="12" height="35" />
        </td>
        <td>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;&nbsp;<span>共${page.totalRecord }条数据</span> <span><i>|</i>每页显示
			<select id="_page_ps_select">
				<c:forEach items="${page.defaultPageSizeSelect}" var="s">
					<option value="${s }" <c:if test="${page.pageSize == s}">selected="selected"</c:if>>${s}</option>
				</c:forEach>
			</select>条</span></td>
            <td>
            <table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
			       <td width="40">
					<a href="<%=basePath%>system/users?pn=1&ps=${page.pageSize}${page.urlParams}">
					<img src="<%=basePath%>static/resource/images/first.gif" width="37" height="15"  />
					</a>
					</td>
					<td width="45">
					<a href="<%=basePath%>system/users?pn=${page.pageNo-1}&ps=${page.pageSize}${page.urlParams}">
					<input id="pagePnShang" type="hidden" name="pn" value="${page.pageNo-1}"/>
					<img src="<%=basePath%>static/resource/images/back.gif" width="43" height="15" id="shangyiye"/>
					</a>
					</td>
				
					<td>
					<c:forEach begin="${page.viewStartPage}" end="${page.viewEndPage}" step="1" var="pageIndex">
						<a <c:if test="${page.pageNo == pageIndex}">class="active"</c:if>
						href="<%=basePath%>system/users?pn=${pageIndex}&ps=${page.pageSize}${page.urlParams}">${pageIndex}</a>
					</c:forEach>
					</td>
					
					<td width="45">
					<a href="<%=basePath%>system/users?pn=${page.pageNo+1}&ps=${page.pageSize}${page.urlParams}">
					<input id="pagePnXia" type="hidden" name="pn" value="${page.pageNo+1}"/>
					<input id="totalPage" type="hidden" name="pn" value="${page.totalPage+1}"/>
					<img id="xiayiye" src="<%=basePath%>static/resource/images/next.gif" width="43" height="15"  />
					</a>
					</td>
					<td width="40">
					<a href="<%=basePath%>system/users?pn=${page.totalPage}&ps=${page.pageSize}${page.urlParams}">
					<img src="<%=basePath%>static/resource/images/last.gif" width="37" height="15" />
					</a>
					</td>
                </tr>
            </table>
            </td>
          </tr>
        </table>
        </td>
        <td width="16"><img src="<%=basePath%>static/resource/images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table>
    </td>
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
			window.location.href = '<%=basePath%>system/users?pn=${page.pageNo}${page.urlParams}&ps='+$(this).val();
		});
	});
</script>
</html>