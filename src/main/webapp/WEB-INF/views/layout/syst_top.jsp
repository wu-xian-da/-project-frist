<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>top</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script language=JavaScript>
		var timerID = null;
		var timerRunning = false;
		function stopclock (){
		if(timerRunning)
		clearTimeout(timerID);
		timerRunning = false;}
		function startclock () {
		stopclock();
		showtime();}
		function showtime () {
		var now = new Date();
		var months = now.getMonth()+1;
		var days = now.getDate();
		var hours = now.getHours();
		var minutes = now.getMinutes();
		var seconds = now.getSeconds()
		var timeValue =now.getFullYear()
		timeValue +="-"+months+"-"+days+" "
		timeValue += "" +((hours >= 12) ? "下午 " : "上午 " )
		timeValue += ((hours >12) ? hours -12 :hours)
		timeValue += ((minutes < 10) ? ":0" : ":") + minutes
		timeValue += ((seconds < 10) ? ":0" : ":") + seconds
		document.clock.thetime.value = timeValue;
		timerID = setTimeout("showtime()",1000);
		timerRunning = true;}


function exit(){

}
</SCRIPT>
<style type="text/css">
<!--
	body {margin-left: 0px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;overflow: hidden;}
	.STYLE1 {font-size: 8px;color: #FFFFFF;}
	a {text-decoration: none;color: #033d61;font-size: 12px;}
	.STYLE2 {font-size: 9px}
	.STYLE3 {color: #033d61;font-size: 12px;}-->
</style>
</head>
<body onload=startclock() >
	<form name=clock>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="70"
					background="http://localhost:8080/static/resource/images/main_05.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="24">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="270" height="24"
											background="http://localhost:8080/static/resource/images/main_03.gif">
											&nbsp;
										</td>
										<td width="505"
											background="http://localhost:8080/static/resource/images/main_04.gif">
											&nbsp;
										</td>
										<td>
											&nbsp;
										</td>
										<td width="21">
											<img src="http://localhost:8080/static/resource/images/main_07.gif"
												width="21" height="24">
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="38">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="270" height="38"
											background="http://localhost:8080/static/resource/images/1.png">
											&nbsp;
										</td>
										<td>
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="77%" height="25" valign="bottom">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																
																<td width="26">
																	<div align="center">
																		<img src="http://localhost:8080/static/resource/images/main_21.gif"
																			width="26" height="19">
																	</div>
																</td>
																<!-- <td width="50" height="19">
																	<div align="center">
																		<a
																			href="http://localhost:8080/system/main"
																			target="mainFrame"><img
																				src="http://localhost:8080/static/resource/images/main_12.gif"
																				width="49" height="19">
																		</a>
																	</div>
																</td> -->
																<td width="50">
																	<div align="center">
																		<a href="http://localhost:8080/" target="_parent"><img
																				src="http://localhost:8080/static/resource/images/main_20.gif"
																				width="48" height="19">
																		</a>
																	</div>
																</td>
																<td width="100">
																	<div align="center">
																		
																	</div>
																</td>
																<td>
																	&nbsp;
																</td>
															</tr>
														</table>
													</td>
													<td width="220" valign="bottom" nowrap="nowrap">
														<div align="right">
															<span class="STYLE1"><span class="STYLE2">■</span>
																<input disabled="disabled" name=thetime
																	style="font-size: 9pt; background-color: #333333; color: #FFFFFF; border: 0"
																	size=25> </span>
														</div>
													</td>
												</tr>
											</table>
										</td>
										<td width="21">
											<img src="http://localhost:8080/static/resource/images/main_11.gif"
												width="21" height="38">
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="8" style="line-height: 8px;">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="270"
											background="http://localhost:8080/static/resource/images/main_29.gif"
											style="line-height: 8px;">
											&nbsp;
										</td>
										<td width="505"
											background="http://localhost:8080/static/resource/images/main_30.gif"
											style="line-height: 8px;">
											&nbsp;
										</td>
										<td style="line-height: 8px;">
											&nbsp;
										</td>
										<td width="21" style="line-height: 8px;">
											<img src="http://localhost:8080/static/resource/images/main_31.gif"
												width="21" height="8">
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="28"
					background="http://localhost:8080/static/resource/images/main_36.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="180" height="28"
								background="http://localhost:8080/static/resource/images/main_32.gif">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="10%" height="22">
											&nbsp;
										</td>
										<td width="59%" valign="bottom" style="text-indent: 6px;">
											<div align="center" class="STYLE1" >
												用户名：<%=request.getSession().getAttribute("username") %>
											</div>
										</td>
										<td width="21%">
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="65" height="28">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td height="23" valign="bottom">
														<table width="58" border="0" align="center"
															cellpadding="0" cellspacing="0">
															<tr>
																<td height="20" style="cursor: hand">
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
										
										<td width="63">
											<table width="58" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr >
													<td height="20" style="cursor: hand">
														
													</td>
												</tr>
											</table>
										</td>
										
										<td width="63">
											<table width="58" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="20" style="cursor: hand">
													</td>
												</tr>
											</table>
										</td>
										
										<td width="63">
											<table width="58" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="20" style="cursor: hand">
													</td>
												</tr>
											</table>
										</td>
										
										<td width="63">
											<table width="58" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="20" style="cursor: hand">
													</td>
												</tr>
											</table>
										</td>
										
										<td width="63">
											<table width="58" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="20" style="cursor: hand">
													</td>
												</tr>
											</table>
										</td>
										
										<td width="63">
											<table width="58" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="20" style="cursor: hand">
													</td>
												</tr>
											</table>
										</td>
										<td width="63">
											<table width="58" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="20" style="cursor: hand">
													</td>
												</tr>
											</table>
										</td>
										
										
										<td>
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
							<td width="21">
								<img src="http://localhost:8080/static/resource/images/main_37.gif" width="21"
									height="28">
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
