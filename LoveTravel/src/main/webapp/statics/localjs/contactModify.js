
var path = $("#path").val();
var backBtn = null;
var saveBtn = null;
var contactName = null;
var idCard = null;
var phone = null
var passport = null


$(function(){	
	backBtn = $("#back");
	saveBtn = $("#send");
	contactName = $("#contactName");
	idCard = $("#idCard");
	passport = $("#passport");
	phone = $("#phone");
	
	alert("aaaa");
	
	contactName.bind("focus",function(){
		validateTip(contactName.next(),{"color":"red"},"联系人姓名不能为空",false);
	}).bind("blur",function(){
		var value = contactName.val().trim();
		if(null != value && value.length > 1){
			validateTip(contactName.next(),{"color":"green"},"",true);
		}else{
			validateTip(contactName.next(),{"color":"red"},"输入不合规范",false);
		}
	})
	
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
	
	
	idCard.bind("focus",function(){
		validateTip(idCard.next(),{"color":"red"},"证件号码不能为空",false);
	}).bind("blur",function(){
		var cardValue = idCard.val().trim();
		
		//验证15位身份证
		var REGcheckID1 = /^[1-9]\d{7}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))\d{3}$/
		//验证18位身份证
		var REGcheckID2 = /^[1-9]\d{5}[1-9]\d{3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))\d{3}/;
		
		
		if(cardValue == null || cardValue.length == 0){
			validateTip(idCard.next(),{"color":"green"},"",true);
		}else if(cardValue.length == 15){
			
			if(cardValue.match(REGcheckID1)){
				validateTip(idCard.next(),{"color":"green"},"",true);
			}else{
				validateTip(idCard.next(),{"color":"red"},"身份证号码不合规范",false);
			}
		//当输入证件为18位
		}else if(cardValue.length == 18){
			
			if(cardValue.match(REGcheckID2)){
				validateTip(idCard.next(),{"color":"green"},"",true);
			}else{
				validateTip(idCard.next(),{"color":"red"},"身份证号码不合规范",false);
			}
		//长度非15/18，即不和规范
		}else{
			validateTip(idCard.next(),{"color":"red"},"身份证号码不合规范",false);
		}
		
	});
	
	passport.bind("focus",function(){
		validateTip(passport.next(),{"color":"red"},"证件号码不能为空",false);
	}).bind("blur",function(){
		
		var cardValue = passport.val().trim();
		//验证护照
		var REGcheckPassword = /(P\d{7})|(G\d{8})/;
		if(cardValue == null || cardValue.length == 0){
			validateTip(passport.next(),{"color":"green"},"",true);
		}else if(cardValue.match(REGcheckPassword)){
			validateTip(passport.next(),{"color":"green"},"",true);
		}else{
			validateTip(passport.next(),{"color":"red"},"护照号码不合规范",false);
		}
		
	});
	

	
	saveBtn.on("click",function(){
		if(contactName.attr("validateStatus" != "true")){
			contactName.blur();
		}else if (phone.attr("validateStatus" != "true")){
			phone.blur();
		}else if(passport.attr("validateStatus" != "true")){
			passport.blur();
		}else if(idCard.attr("validateStatus" != "true")){
			idCard.blur();
		}else{
			$("#contactForm").submit();
			//location.herf="/user/test";
		}
	});
	
	
	/*backBtn.on("click",function(){
		
		location.href= path+"/user/contactList";
	})
	*/
	backBtn.on("click",function(){
		//获取主机地址之后的目录，如： uimcardprj/share/meun.jsp    
		var pathName=window.document.location.pathname;    
		    
		//获取带"/"的项目名，如：/uimcardprj    
		var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1); 
		
		location.href= projectName+"/user/main";
	})
	
})
