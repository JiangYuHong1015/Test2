<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="language" content="zh_cn" />
<link rel="dns-prefetch" href="http://assets.kgc.cn">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/common.css">
<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link
	href="${pageContext.request.contextPath }/statics/css/nprogress.css"
	rel="stylesheet">
<!-- iCheck -->
<link href="${pageContext.request.contextPath }/statics/css/green.css"
	rel="stylesheet">
<!-- bootstrap-progressbar -->
<link
	href="${pageContext.request.contextPath }/statics/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">
<!-- JQVMap -->
<link
	href="${pageContext.request.contextPath }/statics/css/jqvmap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/statics/css/dropzone.min.css"
	rel="stylesheet">
<!-- Custom Theme Style -->
<link
	href="${pageContext.request.contextPath }/statics/css/custom.min.css"
	rel="stylesheet">

<!-- add localcss 2016-8-18 -->
<link
	href='${pageContext.request.contextPath }/statics/localcss/contactsadd.css'
	rel='stylesheet'>
<link
	href='${pageContext.request.contextPath }/statics/localcss/orderInfoList.css'
	rel='stylesheet'>
<link rel="stylesheet" type="text/css"
	href="http://assets.kgc.cn/ff7f069b/css/common-min.www.kgc.css?v=9edd4fc" />
<link rel="stylesheet" type="text/css"
	href="http://assets.kgc.cn/ff7f069b/css/themes.www.kgc.css?v=02252f1" />
<link rel="stylesheet" type="text/css"
	href="http://assets.kgc.cn/ff7f069b/css/style.www.kgc.css?v=fe03d25" />
<link rel="stylesheet" type="text/css"
	href="http://assets.kgc.cn/d2f2e027/listview/styles.css" />
<link rel="stylesheet" type="text/css"
	href="http://assets.kgc.cn/11e14e9b/pager.css" />
<script type="text/javascript"
	src="http://assets.kgc.cn/d6d8b127/jquery.min.js"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/ff7f069b/js/common.www.kgc.js?v=2b938df"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/bad34431/js/new_sliding20150403.js?v=b43f460"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/ff7f069b/flvplayer/swfobject.js?v=a543f3a"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/ff7f069b/flvplayer/swfplayer.js?v=2af84d6"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/ff7f069b/js/play.www.kgc.js?v=e5361f5"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/ff7f069b/scrollBar/scrollBar.js?v=d7584f5"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/ff7f069b/js/comment.www.kgc.js?v=a4a1575"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/4cb0784/jquery.metadata.js"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/4cb0784/jquery.rating.js"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/ff7f069b/js/same.www.kgc.js?v=32a1987"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/bad34431/js/check/calendar.js?v=e0301f3"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/bad34431/js/check/jquery.easing.1.3.js?v=6449ed5"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/bad34431/js/check/qiandao.js?v=8a778f1"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/bad34431/js/center.js?v=2558820"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/bad34431/js/recommon.js?v=9fffd22"></script>
<script type="text/javascript"
	src="http://assets.kgc.cn/4cb0784/jquery.ba-bbq.min.js"></script>
<script type="text/javascript">
	/*<![CDATA[*/
	if (navigator.appName == 'Microsoft Internet Explorer'
			&& navigator.appVersion.split(';')[1].replace(/[ ]/g, '') == 'MSIE6.0'
			|| navigator.appName == 'Microsoft Internet Explorer'
			&& navigator.appVersion.split(';')[1].replace(/[ ]/g, '') == 'MSIE7.0'
			|| navigator.appName == 'Microsoft Internet Explorer'
			&& navigator.appVersion.split(';')[1].replace(/[ ]/g, '') == 'MSIE8.0') {
		window.location.href = 'http://www.kgc.cn/system/forbidden';
	}
	var ifcountopen = true;
	var privateUrl = "http://www.kgc.cn";
	/*]]>*/
</script>
<title>我的个人中心</title>
<meta property="qc:admins" content="10704774276373636" />
<meta name="alexaVerifyID" content="IFh-ueSxp2_9zOgvI3ieGG9mv0I" />
<meta property="wb:webmaster" content="77793812b9f0d5d4" />
<meta name="baidu-site-verification" content="spSfapQ1a6" />
<style type="text/css">
.qd-nav li span {
	display: none;
}

.tea-sild-ul li .teacher-a a {
	z-index: 2;
}

.list-uc-w {
	vertical-align: top;
}

.hm-t-container {
	display: none !important;
}

.f_copy {
	letter-spacing: normal;
	word-spacing: normal;
}

.view-price i {
	display: none;
}

#playDialog {
	z-index: 9000;
}

.header {
	z-index: 1000;
}

.fix-box, #qq {
	z-index: 1005;
}

.qq-box {
	z-index: 1010;
}

.detail-info-box .card-con p {
	word-break: break-all;
}

.ej-second .top-nav-ej-box {
	text-indent: 0px;
}

.detail-info-box {
	word-break: break-all;
}

.circle {
	display: inline-block;
	width: 23px;
	height: 20px;
	margin-right: 4px;
	vertical-align: -4px;
}

.topic {
	background:
		url("http://assets.kgc.cn/upload/image/20160602/1464842105646013.png")
		no-repeat;
}

.living {
	background:
		url("http://assets.kgc.cn/upload/image/20160602/1464842281858383.png")
		no-repeat;
}

.undergraduate {
	background:
		url("http://assets.kgc.cn/upload/file/20161115/1479208869559449.png")
		no-repeat;
}

.contents .gray {
	filter: grayscale(0%);
}

.hdgg li {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.hdgg li p {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.ct-sec12 .view-teach-handle {
	position: static;
}

.top-nav-ej .top-nav-ej-box a {
	margin-right: 10px;
}

.bbsAsk-card {
	background: url(img/bbs-ask.png) #006599 no-repeat 70px center;
	color: #fff;
	display: none;
}

.index-yx li img {
	height: 130px;
}

.gw-content h2.gw-title {
	height: auto;
}

.gw-content h2.gw-title span {
	display: inline-block;
}

a.advisory {
	background: #0099cc;
	display: none;
}
</style>
</head>
<body>


	<!-- 头部开始 -->
	<div class="i-top clearfix">
		<div class="i-top-wrap">
			<div class="i-logo fl">
				<a href="#" title="i旅行">i旅行</a>
			</div>
			<div class="i-hotline fr">
				<ul>
					<li><a href="#">客服中心</a></li>
					<li>|</li>
					<li><a href="#">24小时热线：400-855-6666</a></li>
					<li class="i-top-phone"><a href="#"><i
							class="icon-mobile-phone"></i></a>
						<div class="i-top-app i-top-appL">
							<img
								src="${pageContext.request.contextPath }/statics/images/img/erweima_1126.jpg"
								height="102" width="102" alt="">
							<p>手机扫码快速下载</p>
							<p>App享受最多50% 优惠力度</p>
						</div></li>
					<li class="i-top-phone i-top-wei"><a href="#"><i
							class="icon-comments"></i></a>
						<div class="i-top-app i-top-app-wei">
							<img
								src="${pageContext.request.contextPath }/statics/images/img/erweima_1126.jpg"
								height="102" width="102" alt="">
							<p>
								i旅行微信公众号: <a href="#">ilvxing</a>
							</p>
							<p>手机扫一扫，享受专属福利</p>
						</div></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 头部结束 -->


	<!-- content -->
	<!--content开始-->
	<!--我的主页头部-->
	<div class="myHome">

		<div class="cental qiandao-top fix pos-rel">
			<div class="gradient pos-abs"></div>
			<div class="left qiandao-top-left rela">
				<img
					src="http://img1.kgc.cn/018/15/37/52_avatar_big.jpg?p=1537426511"
					class="left qd-radius-img" title="" /> <span class="qd-name left">
					<strong class="ell">${userSession.username }</strong> <i>
						${userSession.rolename } </i>
				</span>

				<div class="left qd-top-left f14">
					<div class="center-jf fix">
						<p class="center-jf-tb left">
							<a href="/point"> <i>LV1</i> <span class="v-m"><span
									class="track"><span class="passed left"
										style="width: 23.4%"></span></span></span>
							</a>
						</p>
					</div>
					<div class="autographBox">
						<p class="f16" id="dou">
							<span id="autographVal" class="autographVal"
								data-default="没有什么能够阻挡，我对旅行的向往！">没有什么能够阻挡，我对旅行的向往！</span><span
								class="autographEdit" id="autographEdit"></span>
						</p>
						<input type="text" maxlength="20" class="autographText"
							id="autographText"> <span class="autographSave"
							id="autographSave">保存</span>
					</div>
					<p class="qd-top-qnd jf-box">
						<span><a href="/my/social/care.shtml"><small>收藏
									1</small></a></span> <span><a href="/my/social/fans.shtml"><small>点评
									1</small></a></span> <span><a href="/my/social.shtml"><small>攻略
									1</small></a></span>
					</p>
				</div>
			</div>
		</div>
	</div>


	<div class="yui3-g cental font-yahei pad-t20 pos-rel">
		<!--content左侧导航开始-->
		<div class="yui3-u-1-4 qd-nav">

			<ul class="yui3-u-1" id="qd-nav">

				<li class="qd-usercare "><a href="http://www.kgc.cn/my/social"><i></i>联系人</a>
				</li>
				<li class="qd-news "><a href="http://www.kgc.cn/my/care"><i></i>我的订单</a>
				</li>
				<li class="qd-square "><a href="http://www.kgc.cn/my/question"><i></i>我的点评</a>
				</li>

				<li class="qd-task "><a href="http://www.kgc.cn/my/task"><i></i>我的攻略</a>
				</li>
				<li class="qd-qnd "><a href="http://www.kgc.cn/my/wallet"><i></i>我的收藏</a>
				</li>
				<li class="qd-set "><a
					href="http://www.kgc.cn/my/member/profile"><i></i>账户管理</a></li>


			</ul>
		</div>
		<!--content左侧导航结束-->
		<!--content右侧内容开始-->
		<div class="yui3-u-3-4 main-course">

			<div class="yui3-g">
				<div class="yui3-u-1">
					<div id="purchase-jobOE-grid" class="list-view">

						<div class="keys" style="display: none" title="/my">
							<span>31257</span>
						</div>

						<div class="clearfix"></div>
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_title">
										<h2>新增联系人基础信息</h2>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">

										<div class="clearfix"></div>
										<form id="contactForm" class="form-horizontal form-label-left"
											action="contactAddSave" method="post">
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="name">联系姓名 <span class="required">*</span>
												</label>
												<div
													class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
													<input type="text" class="form-control has-feedback-left"
														data-validate-length-range="20" data-validate-words="1"
														name="contactName" id="contactName" required="required"
														placeholder="与证件名一致" value=""> <font color="red"></font>
													<span class="fa fa-user form-control-feedback left"
														aria-hidden="true"></span>
												</div>
											</div>

											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="name">证件类型 <span class="required">*</span>
												</label>
												<div
													class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
													<select name="cardType" id="cardType"
														class="form-control has-feedback-left" required="required">
														<option value="1">身份证</option>
														<option value="2">护照</option>
													</select> <span class="fa fa-envelope form-control-feedback left"
														aria-hidden="true"></span>
												</div>
											</div>

											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="name">证件号码 <span class="required">*</span>
												</label>
												<div
													class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
													<input type="text" class="form-control has-feedback-left"
														name="cardNo" id="cardNo" required="required"
														placeholder="请输入证件号" value=""> <font color="red"></font>
													<span class="fa fa-envelope form-control-feedback left"
														aria-hidden="true"></span>
												</div>
											</div>

											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="select">联系电话 <span class="required">*</span></label>
												<div
													class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
													<input type="text" class="form-control has-feedback-left"
														name="phone" id="phone" required="required"
														placeholder="用于接收预定信息" value=""> <font color="red"></font>
													<span class="fa fa-phone form-control-feedback left"
														aria-hidden="true"></span>
												</div>
											</div>

											<div class="ln_solid"></div>
											<div class="form-group">
												<div class="col-md-6 col-md-offset-3">
													<button id="add" type="submit" class="btn btn-success">保存</button>
													<button type="button" class="btn btn-primary" id="back">返回</button>
													<br />
													<br />
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 贴心的服务开始 -->
	<div class="i_download">
		<div class="i_area clearfix">
			<div class="i_downleft">
				<h2>
					下载<i></i>手机客户端
				</h2>
				<p>
					特价机票、一折酒店、出行安全保障、预约担保<br /> 最佳旅行路线、吃喝玩乐享在手

				</p>
				<a href="#">立刻下载</a>
			</div>
			<div class="i_downright">
				<div class='i_wechat'>
					<img
						src="${pageContext.request.contextPath }/statics/images/icon/i_wechat_11.jpg"
						alt=""> <span>微信公众平台</span>
				</div>
				<div class="i_APP">
					<img
						src="${pageContext.request.contextPath }/statics/images/icon/i_APP_11.jpg"
						alt=""> <span>APP下载</span>
				</div>
			</div>
		</div>
	</div>
	<div class="i_service clearfix">
		<div class="i_area">
			<ul>
				<li>
					<h3>贴心的服务</h3>
					<p>业内领先服务标准 用户保障服务</p>
				</li>
				<li>
					<h3>优质的价格</h3>
					<p>极具竞争力的价格 无任何隐形消费</p>
				</li>
				<li>
					<h3>4008-xxx-6666</h3>
					<p>24小时客服热线 无时不刻在您身边</p>
				</li>

			</ul>

			<dl>
				<dt>旅游资讯</dt>
				<dd>
					<a href="#">宾馆索引</a> <a href="#">攻略索引</a>
				</dd>
				<dd>
					<a href="#">机票索引</a> <a href="#">网站导航</a>
				</dd>
				<dd>
					<a href="#">机票索引</a> <a href="#">网站导航</a>
				</dd>
				<dd>
					<a href="#">机票索引</a> <a href="#">网站导航</a>
				</dd>
				<dd>
					<a href="#">企业差旅索引</a>

				</dd>
			</dl>

			<dl>
				<dt>加盟合作</dt>
				<dd>
					<a href="#">宾馆索引</a> <a href="#">攻略索引</a>
				</dd>
				<dd>
					<a href="#">机票索引</a> <a href="#">网站导航</a>
				</dd>
				<dd>
					<a href="#">机票索引</a> <a href="#">网站导航</a>
				</dd>
				<dd>
					<a href="#">机票索引</a> <a href="#">网站导航</a>
				</dd>
				<dd>
					<a href="#">企业差旅索引</a>

				</dd>
			</dl>

			<dl>
				<dt>关于我们</dt>
				<dd>
					<a href="#">宾馆索引</a> <a href="#">攻略索引</a>
				</dd>
				<dd>
					<a href="#">机票索引</a> <a href="#">网站导航</a>
				</dd>
				<dd>
					<a href="#">机票索引</a> <a href="#">网站导航</a>
				</dd>
				<dd>
					<a href="#">机票索引</a> <a href="#">网站导航</a>
				</dd>
				<dd>
					<a href="#">企业差旅索引</a>

				</dd>
			</dl>
		</div>
	</div>
	<!-- 贴心的服务结束 -->

	<!-- footer开始 -->
	<div class="i-footer clearfix">
		<div class="i-footer-wrap">
			<p>
				Copyright©1999-2016, ctrip.com. All rights reserved. | <a href="#">ICP证：沪B2</a>
			</p>
			<p>
				<span class="i-footer-hui"></span>沪公网备310105020000xx号
			</p>
			<p>
				旅游违法行为举报电话12318 丨服务质量投诉电话 962020 丨<a href="#">北京市旅游网站落实诚信建设主体责任承诺书</a>
			</p>
			<ul>
				<li><a href="#"><img
						src="${pageContext.request.contextPath }/statics/images/icon/icon1126_11.jpg"
						height="32" width="88" alt=""></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath }/statics/images/icon/icon1126_13.jpg"
						height="32" width="88" alt=""></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath }/statics/images/icon/icon1126_15.jpg"
						height="32" width="88" alt=""></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath }/statics/images/icon/icon1126_17.jpg"
						height="32" width="88" alt=""></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath }/statics/images/icon/icon1126_19.jpg"
						height="32" width="88" alt=""></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath }/statics/images/icon/icon1126_21.jpg"
						height="32" width="88" alt=""></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath }/statics/images/icon/icon1126_23.jpg"
						height="32" width="88" alt=""></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath }/statics/images/icon/icon1126_25.jpg"
						height="32" width="128" alt=""></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath }/statics/images/icon/icon1126_27.jpg"
						height="32" width="102" alt=""></a></li>
			</ul>
		</div>
	</div>
	<!-- footer结束 -->




<script src="${pageContext.request.contextPath }/statics/localjs/contactAdd.js"></script>

</body>
</html>