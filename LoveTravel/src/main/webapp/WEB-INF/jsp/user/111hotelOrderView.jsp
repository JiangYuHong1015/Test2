<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/top.jsp"%>
<div class="clearfix"></div>
<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="yui3-u-1 center-ask fix">
			<div class="yui3-u-1 center-ask fix">
				<span class="cen-note-t left"> <a href="/my/jobOE"
					class="yui3-u uc-ask-tab-on">酒店订单</a> <a
					href="${pageContext.request.contextPath }/user/uploadPhoto"
					class="yui3-u ">旅游订单</a> <a
					href="${pageContext.request.contextPath }/user/uploadPhoto"
					class="yui3-u ">机票订单</a>
				</span>
			</div>
		</div>

		<div class="yui3-g">
			<div class="yui3-u-1">
				<div id="purchase-jobOE-grid" class="list-view">
					<ul class="fix list-ul">
						<li class="courseDetail fix"><a href="http://www.kgc.cn/job/oe/31257.shtml" class="courseImg left" target="_blank">
							<img src="http://assets.kgc.cn/upload/open/20180122/1516592531947475.jpg" width="220" height="124" onerror="this.src='/img/video_default20160105.jpg'" /></a>
								<div class="courseInfo left">
									<input type="hidden" id="api" value="http://api.kgc.cn">
										<a class="courseTitle f16 black" href="http://www.kgc.cn/job/oe/31257.shtml" target="_blank">大数据开发工程师3.0标准版</a>
											<span>课程有效期：2019-05-08 11:27:35</span>
											<div class="coursePro f14" id="per_31257" data-code="31257"></div>
								
											<ul class="courseNote f14">
												<li><a href="http://www.kgc.cn/my/note.shtml?id=31257">笔记0</a></li>
												<li><a href="http://www.kgc.cn/my/note/ask.shtml?id=31257">问答0</a></li>
												<li><a href="http://www.kgc.cn/my/note/comment.shtml?id=31257">评论0</a></li>
														
											</ul>
							 </div>
							 <div class="continue">
								<a href="javascript:void(0);" class="catalog-btn btn_study f14"
									data-id="31853" data-job="31257" data-course="100"
									data-name="Spring MVC扩展和SSM框架整合">再次预定</a>
							</div>
					</ul>
					<div class="keys" style="display: none" title="/my">
						<span>31257</span>
					</div>
				</div>
			</div>
		</div>
		
		
		








		<div class="clearfix"></div>
		<br />
		<br />
	</div>
</div>

<%@include file="../common/down.jsp"%>
<
<script type="text/javascript">
	$("#send").on("click", function() {
		window.location.href = "userModify";
	});
	$("#back").on("click", function() {
		window.location.href = "../";
	});
</script>
