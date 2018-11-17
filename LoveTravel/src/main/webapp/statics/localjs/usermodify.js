

var username =null;
var password = null;
var conPassword = null;
var phone = null;
var email = null;
var save =null;
var back =null;

$(function(){
	username = $("#username");
	password = $("#password");
	conPassword = $("#conPassword");
	phone = $("#phone");
	email = $("#email");
	save = $("#send");
	back = $("#back");
	
	
	
	
	username.bind("focus",function(){
		validateTip(username.next(),{"color":"red"},"昵称不能为空",false);
	}).bind("blur",function(){
		var value = username.val().trim();
		if(null != value && value.length > 1){
			validateTip(username.next(),{"color":"green"},"",true);
		}else{
			validateTip(username.next(),{"color":"red"},"昵称输入不合规范",false);
		}
	})
	
	
	password.bind("focus",function(){
		validateTip(password.next(),{"color":"red"},"*密码不能为空",false);
	}).bind("blur",function(){
		if(password.val().search(/^[a-zA-Z]\w{5,17}$/)==-1){
			validateTip(password.next(),{"color":"red"}," 密码输入不符合规范",false);
		}else{
			validateTip(password.next(),{"color":"green"},"",true);
		}
	});
	
	
	conPassword.bind("focus",function(){
		validateTip(conPassword.next(),{"color":"red"},"*再次确认密码",false);
	}).bind("blur",function(){
		if(conPassword.val() != password.val() ){
			validateTip(conPassword.next(),{"color":"red"}," 两次密码输入不一致",false);
		}else if(conPassword.val().search(/^[a-zA-Z]\w{5,17}$/)==-1){
			validateTip(conPassword.next(),{"color":"red"}," 密码输入不符合规范",false);
		}else{
			validateTip(conPassword.next(),{"color":"green"},"",true);
		}
	});
	
	
	
	phone.bind("focus",function(){
		validateTip(phone.next(),{"color":"red"},"* 请输入手机号",false);
	}).bind("blur",function(){
		var REGpatrn=/^(13[0-9]|15[0-9]|18[0-9])\d{8}$/;
		if(phone.val().match(REGpatrn)){
			validateTip(phone.next(),{"color":"green"},"",true);
		}else{
			validateTip(phone.next(),{"color":"red"}, " 您输入的手机号格式不正确",false);
		}
	});
	
	
	email.bind("focus",function(){
		validateTip(email.next(),{"color":"red"},"* 请输入邮箱号码",false);
	}).bind("blur",function(){
		var REGpatrn=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+/;
		if(email.val() == null || email.val().length == 0){
			validateTip(idCard.next(),{"color":"green"},"",true);
		}else if(email.val().match(REGpatrn)){
			validateTip(email.next(),{"color":"green"},"",true);
		}else{
			validateTip(email.next(),{"color":"red"}, " 您输入的邮箱格式不正确",false);
		}
	});
	
	
	save.bind("click",function(){
		if(username.attr("validateStatus") != "true"){
			username.blur();
		}else if(password.attr("validateStatus") != "true"){
			password.blur();
		}else if(conPassword.attr("validateStatus") != "true"){
			conPassword.blur();
		}else if(email.attr("validateStatus") != "true"){
			email.blur();
		}else if(phone.attr("validateStatus") != "true"){
			phone.blur();
		}else{
			$("#userForm").submit();
		}
	});
	
	
	/*back.bind("click",function(){
		window.location.herf="userView";
		
	})*/
	back.on("click",function(){
		window.location.href="userView";
	});
	
	
})



