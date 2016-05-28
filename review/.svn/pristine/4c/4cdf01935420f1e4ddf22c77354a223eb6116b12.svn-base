
var validate={name:1,uid:1}
$(function(){
	$("#check").submit(function(){
		if(validate.name==0 && validate.uid==0){
			return true;
		}
		//验证用户名
		$("input[name='name']").trigger("blur");
		//验证密码
		$("input[name='uid']").trigger("blur");
		//验证验证码
		
		return false;
	})
})
$(function(){
	//验证用户名
	$("input[name='name']").blur(function(){
		var username = $("input[name='name']");
		if(username.val().trim()==''){
			username.parent().find("span").remove().end().append("<span class='error'>不能为空</span>");
			return ;
		}
		validate.name=0;
				
	})
//验证身份证号
	$("input[name='uid']").blur(function(){
		var password = $("input[name='uid']");
		var username=$("input[name='name']");
		if(username.val().trim()==''){
			return;
		}
		if(password.val().trim()==''){
			password.parent().find("span").remove().end().append("<span class='error'>身份证不能为空</span>");
			return ;
		}
				validate.uid=0;
	})
})