/******************************************************************
--------------------------USER-------------------------------------
*******************************************************************/

//user删除提示
$(function(){
	$(".deleteuser").click(function(){
		var name = $(this).next(":hidden").val();
		var flag = confirm("确定删除："+name);
		if (flag) {
			return true;
		}
		return false;
	});
});

//年龄验证
$(function(){
	$("#usersubmit").click(function(){
		var age = $("#userage").val();
		if (age < 0) {
			$("#err4").html("年龄必须大于0");
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
					return true;
				}
			}else{
				$("#err1").html("")
			}
			
		} else {
			$("#err3").html("密码由数字字母组合")
			return false;
		}
	})
});

$(function(){
	$("#usersubmit").click(function(){
		var nickname = $("#usernickname").val();
		var reg = /^[0-9a-zA-Z]+$/;
		if (reg.test(nickname)) { 
			return true; 
		}else{ 
			$("#err5").html("账号只能是字母或数字!"); 
			return false; 
		}
	});
});


/******************************************************************
--------------------------ROLE-------------------------------------
*******************************************************************/
$(function(){
	$("#rolesumbit").click(function(){
		var rolename = $("#rolerolename").val();
		var reg = /^[\u4e00-\u9fa5_a-zA-Z0-9]+$/;
		var flag = reg.test(rolename);
		if (flag) {
			return true;
		} else {
			$("#err").html("角色名称由汉字字母组合")
			return false;
		}
	});
});
//roel 删除
$(function(){
	$(".deleterole").click(function(){
		var name = $(this).next(":hidden").val();
		var user = $(this).next(":hidden").next(":hidden").val();
		if (user != '') {
			alert("角色已经关联用户,无法删除");
		}else {
			var flag = confirm("确定删除："+name);
			if (flag) {
				return true;
			}
		}
		return false;
	});
});


/*********************************************************************
						公共部分
 *********************************************************************/
//上一页按钮限制
$(function(){
	$("#shangyiye").click(function(){
		var pns = $("#pagePnShang").val();
		if (pns<=0) {
			return false;
		}
		return true;
	});
});
//下一页按钮限制
$(function(){
	$("#xiayiye").click(function(){
		var total = $("#totalPage").val();
		var pnx = $("#pagePnXia").val();
		if (pnx>=total) {
			return false;
		}
		return true;
	});
});