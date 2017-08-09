//年龄验证
$(function(){
	$("#usersubmit").click(function(){
		var age = $("#userage").val();
		if (age < 0) {
			$("#err3").html("年龄必须大于0");
		}else {
			return true;
		}
		return false;
	});
});
//密码长度及密码组成成分的验证
$(function(){
	$("#usersubmit").click(function(){
		var pwdstr = /^[a-zA-Z]\w{5,17}$/;
		var pwd = $("#userpassword").val();
		var flag = pwdstr.test(pwd);//true or false
		if (flag) {
			if (pwd!="") {
				if (pwd.length<6) {
					$("#err2").html("")
					$("#err1").html("密码长度小于6")
					return false;
				} else{
					$("#err2").html("密码长度大于6")
					$("#err1").html("")
				}
			}else{
				$("#err1").html("")
			}
			
		} else {
			$("#err1").html("密码有数字字母组合")
			return false;
		}
	})
});