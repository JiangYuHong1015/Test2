<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/top.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>修改联系人信息 <i class="fa fa-user"></i><small>${userSession.username}</small></h2>
             <div class="clearfix"></div>
      </div>
      <div class="x_content">
        <form id="contactForm" class="form-horizontal form-label-left" action="contactmodifysave" method="post">
          <input type="hidden" name="id" id="id" value="${contact.id}">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">联系姓名 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="contactName" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" 
               name="contactName" value="${contact.contactName}" required="required"
               placeholder="请输入联系人名称" type="text">
               <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">联系电话 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="phone" type="text" class="form-control col-md-7 col-xs-12" 
                data-validate-length-range="20" data-validate-words="1" 
              name="phone" value="${contact.phone}" placeholder="请输入联系电话 ">
              <font color="red"></font>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">身份证号码 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="idCard" class="form-control col-md-7 col-xs-12" 
              	name="idCard" value="${contact.idCard}"
              	data-validate-length-range="20" data-validate-words="1" 
              	placeholder="请输入身份证号码" type="text">
              	<font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">护照号码 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="passport" class="form-control col-md-7 col-xs-12" 
              data-validate-length-range="20" data-validate-words="1" 
              name="passport" value="${contact.passport}"
              placeholder="请输入护照号码" type="text">
              <font color="red"></font>
            </div>
          </div>
          
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
              <button id="send" type="submit" class="btn btn-success">保存</button>
              <button type="button" class="btn btn-primary" id="back">返回</button>
              <br/><br/>
            </div>
          </div>
          
        </form>
      </div>
    </div>
  </div>
</div>
<%@include file="../common/down.jsp"%>
<script src="${pageContext.request.contextPath }/statics/localjs/contactModify.js"></script>