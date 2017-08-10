<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>top</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow: hidden;
}

.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}

a {
	text-decoration: none;
	color: #033d61;
	font-size: 12px;
}

.STYLE2 {
	font-size: 9px
}

.STYLE3 {
	color: #033d61;
	font-size: 12px;
}
-->
</style>

</head>


<body onload=startclock()>
	<form name=clock>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="70" background="http://localhost:8080/static/resource/images/main_05.gif">
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
											background="http://localhost:8080/static/resource/images/main_09.png">
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
																<td width="50">
																	<div align="center">
																		<img src="http://localhost:8080/static/resource/images/main_21.gif"
																			width="26" height="19">
																	</div>
																</td>
																<td width="200">
																	<div align="left">
																		<a href="http://localhost:8080/system" target="_parent"><img
																				src="http://localhost:8080/static/resource/images/main_20.gif"
																				width="48" height="19">
																		</a>
																	</div>
																</td>
																<td>
																	&nbsp;
																</td>
															</tr>
														</table>
													</td>
													<td width="230" valign="bottom" nowrap="nowrap">
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
							<td width="177" height="28"background="http://localhost:8080/static/resource/images/main_32.gif">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="20%" height="22">
											&nbsp;
										</td>
										<td width="59%" valign="bottom">
											<div align="center" class="STYLE1">
											<!-- 当前用户: -->
											</div>
										</td>
										<td width="21%">
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
							<td width="505px" height="28" >
							<img src="http://localhost:8080/static/resource/images/main_36.gif" width="505px" height="28">
							</td>
							<!-- <td width="3">
								<img src="http://localhost:8080/static/resource/images/main_36.gif"
									width="3" height="28">
							</td> -->
							<td width="63">
								<table width="58" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										
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
					<img src="http://localhost:8080/static/resource/images/main_37.gif" width="21px"
						height="28">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
