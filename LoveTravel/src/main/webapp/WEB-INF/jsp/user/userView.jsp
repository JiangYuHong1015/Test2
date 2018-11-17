<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/top.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
  <div class="yui3-u-1 center-ask fix">
		<div class="yui3-u-1 center-ask fix">
			<span class="cen-note-t left"> <a href="/my/jobOE"
				class="yui3-u uc-ask-tab-on">账号信息</a> 
				 <a href="${pageContext.request.contextPath }/user/uploadPhoto" class="yui3-u ">上传头像</a>
			</span>
		</div>
	</div>
    <div class="x_panel">
      <div class="x_content1">
        <form class="form-horizontal form-label-left" >
          <input type="hidden" name="id" value="${user.id}">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">昵称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12" value="${userSession.username }" 
              type="text" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">密码 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="password" class="form-control col-md-7 col-xs-12" 
              value="${userSession.userpassword }" readonly="readonly" >
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">邮箱<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12" 
              	value="${userSession.email }" type="text" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">手机 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12"
              	value="${userSession.phone }" type="text" readonly="readonly">
            </div>
          </div>
          
        </form>
       </div>
      </div>  

     <div class="form-group">
        <div class="col-md-6 col-md-offset-3">
       	  <button id="send" type="button" class="btn btn-success">修改</button>
          <button id ="back" type="button" class="btn btn-primary" id="back">返回</button>
        </div>
      </div>
    <div class="clearfix"></div>
    <br/><br/>
  </div>
</div>

<%@include file="../common/down.jsp"%>
<<script type="text/javascript">
$("#send").on("click",function(){
	window.location.href="userModify";
});
$("#back").on("click",function(){
	window.location.href="../";
});
</script>
