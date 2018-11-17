<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
				<li><a href="http://www.kgc.cn/my/course.shtml">首页</a></li>
				
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

				 <li class="i-top-phone i-top-wei">
				 	<img alt="" src="${pageContext.request.contextPath }/statics/images/img.jpg" width="30" height="30">
                  			<span class="tx-top"></span>
						<div class="i-top-app i-top-app-wei">
							<div id="topClass">
								<a href="${pageContext.request.contextPath }/user/userView">酒店预定</a><br/>
								<a href="${pageContext.request.contextPath }/user/userView">机票优惠</a><br/>
								<a href="${pageContext.request.contextPath }/user/userView">最新攻略</a><br/>
								<a href="${pageContext.request.contextPath }/doLogut">退出登陆</a>
							</div>
						</div>
				</li> 
				
			</ul>
		</div>
	</div>
</div>
<!-- 头部结束 -->


<!--content开始-->
<!--我的主页头部-->
<div class="myHome">
	<div class="cental qiandao-top fix pos-rel">
		<div class="gradient pos-abs"></div>
		<div class="left qiandao-top-left rela">
			<img src="${userSession.photoPath }" class="left qd-radius-img" title="" />
				<span class="qd-name left"> <strong class="ell">${userSession.username }</strong>
				<i> ${userSession.rolename } </i></span>
			
			<div class="left qd-top-left f14">
				<div class="center-jf fix">
					<p class="center-jf-tb left">
						<a href="/point"> <i>LV1</i> 
						<span class="v-m"><span class="track"><span class="passed left"style="width: 23.4%"></span></span></span>
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
					<span><a href="/my/social/care.shtml"><small>收藏1</small></a></span>
					<span><a href="/my/social/fans.shtml"><small>点评1</small></a></span>
					<span><a href="/my/social.shtml"><small>攻略1</small></a></span>
				</p>
			</div>
		</div>
	</div>
</div>


<div class="yui3-g cental font-yahei pad-t20 pos-rel">
	<!--content左侧导航开始-->
	<div class="yui3-u-1-4 qd-nav">

		<ul class="yui3-u-1" id="qd-nav">
			<li class="qd-usercare "><a href="${pageContext.request.contextPath }/user/contactList"><i></i>联系人</a></li>
			<li class="qd-news "><a href="${pageContext.request.contextPath }/user/hotelOrderView"><i></i>我的订单</a></li>
			<li class="qd-square "><a href="http://www.kgc.cn/my/question"><i></i>我的点评</a></li>
			<li class="qd-task "><a href="http://www.kgc.cn/my/task"><i></i>我的攻略</a></li>
			<li class="qd-qnd "><a href="http://www.kgc.cn/my/wallet"><i></i>我的收藏</a></li>
			<li class="qd-set "><a href="${pageContext.request.contextPath }/user/userView"><i></i>账户管理</a></li>

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
</body>
</html>