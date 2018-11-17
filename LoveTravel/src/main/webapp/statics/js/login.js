function validateTip(element,css,tipString,status){
	element.css(css);
	element.html(tipString);
	element.prev().attr("validateStatus",status);
}


var path = $("#path").val();

var username =null;
var password = null;
var login =null;

$(function(){
	username = $("#username");
	password = $("#password");
	login = $("#login");
	
	
	username.bind("blur",function(){
		//ajax后台验证--username是否存在
		$.ajax({
			type:"GET",//请求类型
			url:path+"/userNameExist",//请求的url
			data:{username:username.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）
				if(data.result == "exist"){//账号已存在，错误提示
					validateTip(username.next(),{"color":"green"}, " 该账号可以使用", true);
				}else if(data.result == "empty"){
					validateTip(username.next(),{"color":"red"}," 用户名不能为空",false);
				}else{//账号可用，正确提示
					validateTip(username.next(),{"color":"red"}," 该账号不存在",false);
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				validateTip(username.next(),{"color":"red"}," 您访问的页面不存在",false);
			}
		});
		
	}).bind("focus",function(){
		//显示友情提示
		validateTip(username.next(),{"color":"red"},"* 用户名不能为空",false);
	}).focus();

	
	password.bind("focus",function(){
		validateTip(password.next(),{"color":"red"},"*密码不能为空",false);
	}).bind("blur",function(){
		if(password.val().search(/^[a-zA-Z]\w{5,17}$/)==-1){
			validateTip(password.next(),{"color":"red"}," 密码输入不符合规范",false);
		}else{
			validateTip(password.next(),{"color":"green"},"",true);
		}
	});
	
	
	login.bind("click",function(){
		if(username.attr("validateStatus") != "true"){
			username.blur();
		}else if(password.attr("validateStatus") != "true"){
			password.blur();
		}else{
			$("#loginForm").submit();
		}
	});
	
})



