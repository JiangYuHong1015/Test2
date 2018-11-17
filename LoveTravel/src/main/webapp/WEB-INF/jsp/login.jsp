<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>i 旅行-登陆</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/statics/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/index.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/lib/bootstrap/css/bootstrap-theme.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/lib/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/login.css"/>
    <script src="${pageContext.request.contextPath }/statics/lib/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/statics/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/statics/js/common.js"></script>
    <script src="${pageContext.request.contextPath }/statics/js/util.js"></script>


</head>



<body>
<div class="travel-login">
    <header>
        <img src="${pageContext.request.contextPath }/statics/images/img/i-LOGO-02-01.png">
    </header>
    <section>
        <div class="left-phone">
            <img src="${pageContext.request.contextPath }/statics/images/img/left-phone.png">
        </div>
        <div class="right-message">
        
            使用<img src="${pageContext.request.contextPath }/statics/images/img/i-LOGO-02-01.png">客户端<br>
            手机扫描安全登陆
        </div>
        <div class="right-message gray">
            1. 打开手机i旅行客户端并登陆i旅行账号<br>
            2. 在i旅行登陆页点击右上角扫码安全登陆<br>
            3. 使用i旅行客户端左上角扫描功能完成登陆<br>
        </div>
    </section>
    <aside>
        <div class="login-header">
            <div>
                <span>会员登陆</span>&nbsp;&nbsp;&nbsp;<a href="register.html"> 立即注册</a>，享积分换礼、返现等专属优惠！
            </div>
            <span class="right-erweima "></span>
        </div>
        <div class="login-body">
            <div id="staticOption">
                <form id="loginForm" name="loginForm" class="form-horizontal" action="${pageContext.request.contextPath }/doLogin" method="post">
                    <fieldset>
                        <div class="form-group col-sm-12 margin-bt-30 margin-left-89">
                            <div class="controls" id="selectShowType">
                                <!-- Inline Radios -->
                                <label class="radio inline col-sm-4 ">
                                    <input type="radio" class="ie-input-button margin-left-79 " value="1" name="group"
                                           checked="checked">
                                           <font color="red"></font>
                                    普通登陆
                                </label>
                                <label class="radio inline col-sm-4">
                                    <input type="radio" class="ie-input-button" value="2" name="group">
                                    <font color="red"></font>
                                    手机动态密码登陆
                                </label>
                            </div>
                        </div>
                        <div class="form-group margin-left-100">
                            <div class="input-group input-group-lg col-sm-9">
                                <span class="input-group-addon"><i class="icon-user"></i></span>
                                <input type="text" id="username" class="form-control ie-input" name="param"
                                       placeholder="请输入注册手机/注册邮箱">
                                       <font color="red"></font>
                            </div>
                        </div>

                        <div class="form-group margin-left-100">
                            <div class="input-group input-group-lg col-sm-9">
                                <span class="input-group-addon"><i class="icon-lock"></i></span>
                                <input type="password" id="password" class="form-control ie-input" name="password" placeholder="请输入密码">
                            	<font color="red">${error }</font>
                            </div>
                        </div>
                        <div id="actionPass" class="form-group  margin-left-100 " style="display: none;">
                            <div class="controls col-sm-9">
                                <button class="btn btn-warning form-control">获取验证码</button>
                            </div>
                        </div>
                        
                        
                       <%--  <div id="staticPass" class="form-group margin-left-89">
                            <div class="controls input-group-lg col-sm-4 ">
                                <input type="text" id="loginCode" class="form-control ie-input" placeholder="验证码"
                                       class="input-xlarge search-query">
                                <p class="help-block"></p>
                            </div>
                            <div class="controls  input-group-lg col-sm-5">
                                <img src="${pageContext.request.contextPath }/statics/images/img/yanzhengma.png" width="165px">
                            </div>
                            <div class="controls  col-sm-3 margin-bt-b30">
                                <label>换一张</label>
                            </div>
                        </div> --%>
                        
                        
                        <div class="form-group margin-left-100 ">
                            <div class="controls  col-sm-5">
                                <label class="checkbox inline">
                                    <input type="checkbox" class="ie-input-button" value="30天内自动登陆">
                                    30天内自动登陆
                                </label>
                            </div>
                            <div class="controls  col-sm-4">
                                <label class="checkbox inline">
                                    忘记密码?
                                </label>
                            </div>
                        </div>
                        <div class="form-group margin-left-100 " id="showErrorMessage" style="display: none;">
                            <div class="controls  col-sm-9">
                                <label class="checkbox inline show-message">
                                    <i class="icon-exclamation-sign"></i>&nbsp;&nbsp;
                                    <div id="promptMessage" style="display: inline-block;">请输入注册手机或邮箱</div>
                                </label>
                            </div>
                        </div>


                    </fieldset>
                    <input type="button" class="btn btn-danger" name="login" id="login" value="登陆" >
                </form>
             <!--  <button class="btn btn-danger " id="login">登陆</button> -->
               
            </div>
            <div id="actionOption"  style="display: none;">
                <!--<div class="phone-erweima"></div>-->
                <img src="${pageContext.request.contextPath }/statics/images/img/phone-erwema.png" class="phone-erweima">
                <img src="${pageContext.request.contextPath }/statics/images/img/richScan.png" class="phone-richScan" >
                <img src="${pageContext.request.contextPath }/statics/images/img/erweima_1126.jpg" style="width: 350px;">
            </div>
        </div>
        <div class="login-footer">
            <div class="footer-message">
                您也可以用合作网站的帐号登陆去i旅行网
            </div>
            <div class="footer-label">
                <a><img src="${pageContext.request.contextPath }/statics/images/img/icon-sina.png"> 新浪微博</a>
                <a><img src="${pageContext.request.contextPath }/statics//images/img/icon-QQ.png">QQ</a>
                <a><img src="${pageContext.request.contextPath }/statics//images/img/icon-Wechat.png">微信</a>
                <a><img src="${pageContext.request.contextPath }/statics//images/img/icon-Baidu.png">百度</a>
            </div>
        </div>

    </aside>
    <footer><!-- footer开始 -->
        <div class="i-footer clearfix">
            <div class="i-footer-wrap">
                <p>Copyright©1999-2016, ctrip.com. All rights reserved. | <a href="#">ICP证：沪B2</a></p>
                <p><span class="i-footer-hui"></span>沪公网备310105020000xx号</p>
                <p>旅游违法行为举报电话12318 丨服务质量投诉电话 962020 丨<a href="#">北京市旅游网站落实诚信建设主体责任承诺书</a></p>
                <ul>
                    <li><a href="#"><img src="${pageContext.request.contextPath }/statics/images/icon/icon1126_11.jpg" height="32" width="88" alt=""></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath }/statics/images/icon/icon1126_13.jpg" height="32" width="88" alt=""></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath }/statics/images/icon/icon1126_15.jpg" height="32" width="88" alt=""></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath }/statics/images/icon/icon1126_17.jpg" height="32" width="88" alt=""></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath }/statics/images/icon/icon1126_19.jpg" height="32" width="88" alt=""></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath }/statics/images/icon/icon1126_21.jpg" height="32" width="88" alt=""></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath }/statics/images/icon/icon1126_23.jpg" height="32" width="88" alt=""></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath }/statics/images/icon/icon1126_25.jpg" height="32" width="128" alt=""></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath }/statics/images/icon/icon1126_27.jpg" height="32" width="102" alt=""></a></li>
                </ul>
            </div>
        </div>
        <!-- footer结束 -->
    </footer>
    <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
</div>

<script>
    var isIE = !!window.ActiveXObject;
    var isIE6 = isIE && !window.XMLHttpRequest;
    var isIE8 = isIE && !!document.documentMode;
    var isIE7 = isIE && !isIE6 && !isIE8;
    var style = "  <style> .ie-input{ height: 45px !important;  } " +
            ".ie-input-button{height: 23px !important;}</style>";
    if (isIE) {
        document.write(style);
    }
</script>

<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath }/statics/js/login.js"></script>
</body>
</html>