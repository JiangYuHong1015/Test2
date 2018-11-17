<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/top.jsp"%>
<link href="${pageContext.request.contextPath }/statics/css/commentAdd.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/statics/css/starrr.css" rel="stylesheet">




<form>
<table class="comment_table">
	<tbody>
		<tr>
			
			<th class="title_th">总体评价</th>
			<td class="content_td">
			<div class="td-inner">
				<div class="x_content">
		            <div>
		              <span class="stars-count"> 位置</span> 
		              <div class="starrr stars">
			              <a class="fa-star fa" href="#"></a>
			              <a class="fa-star fa" href="#"></a>
			              <a class="fa-star fa" href="#"></a>
			              <a class="fa-star fa" href="#"></a>
			              <a class="fa-star fa" href="#"></a>
		              </div>
		            </div>
		            
					<div>
						<span class="stars-count">设施</span> 
			            <div class="starrr stars-existing" data-rating="4">
				            <a class="fa-star fa" href="#"></a>
				            <a class="fa-star fa" href="#"></a>
				            <a class="fa-star fa" href="#"></a>
				            <a class="fa-star fa" href="#"></a>
				            <a class="fa-star fa" href="#"></a>
				        </div>
			        </div>
			        
			        <div>
						<span class="stars-count">卫生</span> 
			            <div class="starrr stars-existing" data-rating="4">
				            <a class="fa-star fa" href="#"></a>
				            <a class="fa-star fa" href="#"></a>
				            <a class="fa-star fa" href="#"></a>
				            <a class="fa-star fa" href="#"></a>
				            <a class="fa-star fa" href="#"></a>
				        </div>
			        </div>
			        
			         <div>
						<span class="stars-count">服务</span> 
			            <div class="starrr stars-existing" data-rating="4">
				            <a class="fa-star fa" href="#"></a>
				            <a class="fa-star fa" href="#"></a>
				            <a class="fa-star fa" href="#"></a>
				            <a class="fa-star fa" href="#"></a>
				            <a class="fa-star fa" href="#"></a>
				        </div>
			        </div>
            	</div>

			</div></td>
		</tr>

		<tr>
			<th class="title_th">点评内容</th>
			<td class="content_td">
				<div class="comment_input">
					<textarea id="noticeaa" name="noticeaa"></textarea>
					<div class="auto-save hidden">
						√&nbsp;已在<span id="time"></span>分自动保存当前草稿
					</div>
					<div class="box_tips">


						<div class="input_tips" id="DraftDesc">寥寥几字，积分唾手可得</div>

						<span class="msg-error" style="display: none;"
							id="notice_tip_txt_empty"><span class="icon-error"></span>请填写点评内容。</span>
						<span class="msg-error" style="display: none;"
							id="notice_tip_txt_less"><span class="icon-error"></span>点评内容须填写5字以上。</span>
						<span class="msg-error" style="display: none;"
							id="notice_tip_txt_invalid"><span class="icon-error"></span>点评内容不符合提交要求，请修改您的点评，保证内容的有效性，谢谢。</span>
					</div>
				</div>
			</td>
		</tr>

		<tr>
			<th class="title_th">上传图片
			</th>
			<td class="content_td">

				<div class="self-tx">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="file" class="form-control col-md-7 col-xs-12"
							name="photo" required="required" id="a_logoPicPath" />
						${uploadError }
					</div>
				</div>
			</td>
		</tr>
	</tbody>
</table>



<button id="send" type="submit" class="comment_btn">提交点评</button>
</form>








<%@include file="../common/down.jsp"%>
<script src="${pageContext.request.contextPath }/statics/js/starrr.js"></script>