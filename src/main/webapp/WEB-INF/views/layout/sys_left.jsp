<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'left.jsp' starting page</title>

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

.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}

.STYLE3 {
	font-size: 12px;
	color: #033d61;
}
-->
</style>
		<style type="text/css">
.menu_title SPAN {
	FONT-WEIGHT: bold;
	LEFT: 3px;
	COLOR: #ffffff;
	POSITION: relative;
	TOP: 2px
}

.menu_title2 SPAN {
	FONT-WEIGHT: bold;
	LEFT: 3px;
	COLOR: #FFCC00;
	POSITION: relative;
	TOP: 2px
}

.style1 {
	font-size: 12px;
}

a {
	text-decoration: none;
	color: #033d61;
}
}
</style>
<script>
var he=document.body.clientHeight-105
document.write("<div id=tt style=height:"+he+";overflow:hidden>")
</script>

</head>

<body>
	<table width="165" height="100%" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td height="28"
				background="http://localhost:8080/static/resource/images/main_40.gif">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="19%">
							&nbsp;
						</td>
						<td width="81%" height="20">
							<span class="STYLE1">管理菜单</span>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td valign="top">
				<table width="151" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td height="23"
										background="http://localhost:8080/static/resource/images/main_47.gif"
										id="imgmenu1" class="menu_title"
										onMouseOver="this.className='menu_title2';"
										onClick="showsubmenu(1)"
										onMouseOut="this.className='menu_title';"
										style="cursor: hand">
										<table width="100%" border="0" cellspacing="0"
											cellpadding="0">
											<tr>
												<td width="18%">
													&nbsp;
												</td>
												<td width="82%" class="STYLE1">
													系统管理
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td background="http://localhost:8080/static/resource/images/main_51.gif"
										id="submenu1">
										<div class="sec_menu">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td>
														<table width="90%" border="0" align="center"
															cellpadding="0" cellspacing="0">
															<tr>
																<td width="16%" height="25">
																	<div align="center">
																		<img src="http://localhost:8080/static/resource/images/left.gif"
																			width="10" height="10" />
																	</div>
																</td>
																<td width="84%" height="23">
																	<table width="95%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr>
																			<td height="20" style="cursor: hand"
																				onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																				onmouseout="this.style.borderStyle='none'">
																				<span class="STYLE3"><a 
																					href="http://localhost:8080/system/users"
																					target="mainFrame">用户管理</a> </span>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="23">
																	<div align="center">
																		<img src="http://localhost:8080/static/resource/images/left.gif"
																			width="10" height="10" />
																	</div>
																</td>
																<td height="23"   >
																	<table width="95%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr  >
																			<td height="20" style="cursor: hand"
																				onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																				onmouseout="this.style.borderStyle='none'">
																				<span class="STYLE3"> <a
																					href="http://localhost:8080/system/roles"
																					target="mainFrame">角色管理</a> </span>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td height="5">
														<img src="http://localhost:8080/static/resource/images/main_52.gif"
															width="151" height="5" />
													</td>
												</tr>
											</table>
										</div>
									</td>
								</tr>

							</table>
						</td>
					</tr>

				</table>
			</td>
			
		</tr>
		<tr>
			<td height="18"
				background="http://localhost:8080/static/resource/images/main_58.gif">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td height="18" valign="bottom">
							<div align="center" class="STYLE3">
								版本：2017-08
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
<script>

function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
imgmenu.background="http://localhost:8080/static/resource/images/main_47.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
imgmenu.background="http://localhost:8080/static/resource/images/main_48.gif";
}
}

</script>
</html>
