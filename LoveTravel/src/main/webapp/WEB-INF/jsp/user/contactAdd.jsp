<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/top.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>新增联系人基础信息 </h2>
             <div class="clearfix"></div>
      </div>
      <div class="x_content">
	 
       <div class="clearfix"></div>
        <form id="contactForm" class="form-horizontal form-label-left" action="contactAddSave" method="post">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">联系姓名 <span class="required">*</span>
            </label>
           	<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
	            <input type="text" class="form-control has-feedback-left" data-validate-length-range="20" data-validate-words="1"
	            name="contactName" id="contactName" required="required" placeholder="与证件名一致" value="">
	            <font color="red"></font>
	            <span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">证件类型 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
              <select name="cardType" id="cardType" class="form-control has-feedback-left" required="required">
              	<option value="1">身份证</option>
              	<option value="2">护照</option>
              </select>
              <span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">证件号码 <span class="required">*</span>
            </label>
           	<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
	            <input type="text" class="form-control has-feedback-left" name="cardNo" id="cardNo" required="required" placeholder="请输入证件号" value="">
	            <font color="red"></font>
	            <span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
            </div>
          </div>
          
           <div class="item form-group">
           		<label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">联系电话 <span class="required">*</span></label>
            	<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
	               <input type="text" class="form-control has-feedback-left" name="phone" id="phone" required="required" placeholder="用于接收预定信息" value="">
	               <font color="red"></font>
	               <span class="fa fa-phone form-control-feedback left" aria-hidden="true"></span>
                </div>
          </div>
         
          <div class="ln_solid"></div>
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
              <button id="add" type="submit" class="btn btn-success">保存</button>
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
<script src="${pageContext.request.contextPath }/statics/localjs/contactAdd.js"></script>