

$(".modifyContact").on("click",function(){
	var obj = $(this);
	window.location.href="contactmodify?id="+ obj.attr("contactinfoid");
});



var path = $("#path").val();
/*
$(".viewContact").on("click",function(){
	var obj = $(this);
	$.ajax({
		type : "GET",
		url : "contactView",
		data:{id:obj.attr("contactinfoid")},
		datatype : "json",
		success : function(data){
			if("faild" == data){
				alert("操作超时，请稍后再试");
			}else{
				$("#contactName").val(data.contactName);
				$("#phone").val(data.phone);
				$("#passport").val(data.passport);
				$("#idCard").val(data.idCard);
				$("#createDate").val(data.createDate);
			}
		}
	})
	
})*/


$(".deleteContact").on("click",function(){
	var obj = $(this);
	if(confirm("你确定要删除联系人【"+obj.attr("contactname")+"】的信息吗？")){
		$.ajax({
			type:"GET",
			url:"deleteConact",
			data:{id:obj.attr("contactinfoid")},
			dataType:"json",
			success:function(data){
				if(data.result == "true"){//删除成功：移除删除行
					alert("删除成功");
					obj.parents("tr").remove();
				}else if(data.result == "false"){//删除失败
					alert("对不起，删除联系人【"+obj.attr("contactname")+"】失败");
				}else if(data.result == "notexist"){
					alert("对不起，联系人【"+obj.attr("contactname")+"】不存在");
				}
			},
			error:function(data){
				alert("对不起，删除失败");
			}
		});
	}
});

	
