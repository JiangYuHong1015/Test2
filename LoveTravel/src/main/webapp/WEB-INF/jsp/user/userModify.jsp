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
					 <a href="/my/jobOE/schemeList" class="yui3-u ">个人资料</a>
					 <a href="/my/jobOE/schemeList" class="yui3-u ">上传头像</a>
				</span>
			</div>
		</div>
    <div class="x_panel">
      <div class="x_content1">
        <form id="userForm" class="form-horizontal form-label-left" action="userModifySave" method="post" >
          <input type="hidden" name="id" value="${userSession.id}">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">账号昵称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12" id="username" name="username" value="${userSession.username }" 
              type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">原始密码 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="password" class="form-control col-md-7 col-xs-12" id="password" name="userpassword"
              value="${userSession.userpassword }"  >
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">确认密码 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="password" class="form-control col-md-7 col-xs-12" id="conPassword"
              value="${userSession.userpassword }"  >
              <font color="red"></font>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">注册邮箱<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12" id="email" name="email"
              	value="${userSession.email }" type="text">
              	<font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">注册手机 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12" id="phone" name="phone"
              	value="${userSession.phone }" type="text" >
              	<font color="red"></font>
            </div>
          </div>
          
        </form>
       </div>
      </div>  

     <div class="form-group">
        <div class="col-md-6 col-md-offset-3">
       	  <button id="send" type="submit" class="btn btn-success">保存</button>
          <button id="back" type="button" class="btn btn-primary" id="back">返回</button>
        </div>
      </div>
    <div class="clearfix"></div>
    <br/><br/>
  </div>
</div>
<%@include file="../common/down.jsp"%>
<script src="${pageContext.request.contextPath }/statics/localjs/usermodify.js"></script>