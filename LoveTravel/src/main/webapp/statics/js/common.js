/*
 * @Author: xianghai.peng
 * @Date:   2016-11-22 16:20:37
 * @Last Modified by:   xianghai.peng
 * @Last Modified time: 2016-12-05 17:59:32
 */

'use strict';
/*鼠标经过父级，子级隐藏*/
function shower(clsParent, clsChild) {
    $(clsParent).hover(function () {
        $(this).children(clsChild).addClass('blo');
    }, function () {
        $(this).children(clsChild).removeClass('blo');
    });
}
shower(".i-top-phone", ".i-top-appL");
shower(".i-top-phone", ".i-top-app-wei");
/* nav 点击添加current类*/
$('.i-nav li').click(function () {
    $(this).addClass('current').siblings().removeClass('current');
});




function validateTip(element,css,tipString,status){
	element.css(css);
	element.html(tipString);
	
	element.prev().attr("validateStatus",status);
};


$(document).ready(function(){
	  
	//获取主机地址之后的目录，如： uimcardprj/share/meun.jsp    
	var pathName=window.document.location.pathname;    
	    
	//获取带"/"的项目名，如：/uimcardprj    
	var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);    
	
	 $("#personCenter").on("click", function (e) {
		  location.href= projectName+"/user/main";
	        });
 });

