$(document).ready(function(){
	  
	//获取主机地址之后的目录，如： uimcardprj/share/meun.jsp    
	var pathName=window.document.location.pathname;    
	    
	//获取带"/"的项目名，如：/uimcardprj    
	var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);    
	
	 $("#personCenter").on("click", function (e) {
		  location.href= projectName+"/user/main";
	        });
 });




 
     