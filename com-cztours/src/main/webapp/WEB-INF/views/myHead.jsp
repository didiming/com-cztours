<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>我的头像</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-------------jquery库-------------->
  	<script type="text/javascript" src="resources/qiantai/js/jquery-1.8.3.min.js"></script>
	<!-------------Amazeui--------------->
    <script type="text/javascript" src="resources/qiantai/js/amazeui.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/qiantai/css/amazeui.css">
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="resources/qiantai/css/user.css">

</head>
<body>

<!-------------------版头------------------->
<div id="header">
    <div class="cw1000">
        <!-------------------logo------------------->
        <div class="logo"><a title="" href="index"><img alt="" src="resources/qiantai/images/logo.jpg" /></a></div>
		<!-------------------导航------------------->
		<div class="nav">
			<ul>
				<li><a title="" href="index?uId=${sessionScope.loginUser.uId }">首页</a><span>|</span></li>
				<li><a title="" href="scenicList?uId=${sessionScope.loginUser.uId }">常州旅游</a><span>|</span></li>
				<li><a title="" href="mallList?uId=${sessionScope.loginUser.uId }">特产商城</a><span>|</span></li>
				<li><a title="" href="javascript:;">新闻资讯</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		<!-------------------用户------------------->
		<div class="user">
			<a class="user-hd" href="#">
				<img src="fileUpload/${requestScope.myInfos.mPhoto }"/><b></b>
				<div class="clear"></div>
			</a>
			<div class="user-bd">
				<div class="integral"><img src="resources/qiantai/images/integral_ico.png"/>当前积分 609</div>
				<ul class="nav_sort">
					<li><a href="my_index.html"><i class="i1"></i>我的主页</a></li>
					<li><a href="collection_list.html"><i class="i3"></i>我的收藏</a></li>
					<li><a href="project_order.html"><i class="i4"></i>商品订单</a></li>
					<li><a href="scenic_order.html"><i class="i5"></i>旅游订单</a></li>
					<li><a href="scenic_comments.html"><i class="i6"></i>我的评论</a></li>
					<li><a href="myInfo?uId=${sessionScope.loginUser.uId }"><i class="i7"></i>设置</a></li>
					<li><a href="javascript: if (confirm('您确定要退出吗？')) {location.href='zhuxiaozhanghao'}"><i class="i8"></i>退出</a></li>
				</ul>
			</div>
		</div>
        <div class="clear"></div>
    </div>
</div>
<!-----------------用户banner---------------->
<div id="user_banner" style="margin-bottom: 20px">
	<div class="pic">
		<a href="myHead?uId=${sessionScope.loginUser.uId }">
			<img src="fileUpload/${requestScope.myInfos.mPhoto }"/>
			<div>更换头像</div>
		</a>
	</div>
	<div class="con">
		<h2>${requestScope.myInfos.mName }</h2>
		<p>${requestScope.myInfos.mSign }</p>
	</div>
</div>
<!-----------------快捷导航---------------->
<!--<div id="quick_nav">
	<a href="my_index.html"><span class="ico1"><img src="images/nav_ico1.png"/></span>个人主页</a>
	<a href="collection_list.html"><span class="ico3"><img src="images/nav_ico3.png"/></span>我的收藏</a>
	<a href="project_order.html"><span class="ico4"><img src="images/nav_ico4.png"/></span>商品订单</a>
	<a href="scenic_order.html"><span class="ico5"><img src="images/nav_ico5.png"/></span>旅游订单</a>
	<a href="note_comments.html"><span class="ico6"><img src="images/nav_ico6.png"/></span>我的评论</a>
</div>-->
<!-----------------框架---------------->
<div class="cw1000">
	<div class="w280 fl">
		<div class="public_box">
			<!-----------------设置导航---------------->
			<div id="set_nav">
				<ul>
					<li><a href="myInfo?uId=${sessionScope.loginUser.uId }"><i class="ico1"></i>我的信息</a></li>
					<li><a class="cur" href="myHead?uId=${sessionScope.loginUser.uId }"><i class="ico2"></i>我的头像</a></li>
					<li><a href="myContact?uId=${sessionScope.loginUser.uId }"><i class="ico3"></i>常用联系人</a></li>
					<li><a href="security?uId=${sessionScope.loginUser.uId }"><i class="ico4"></i>修改密码</a></li>
				</ul>
			</div>
		</div>	
	</div>
	<div class="w700 fr">
		<div class="public_box" id="sss">
			<!-----------------我的头像---------------->
			<div id="set_box">
				<form action="myHead" method="post" enctype="multipart/form-data">
					<input name="uId" type="hidden" value="${requestScope.myInfos.uId }" />
					<div class="title"><h2>我的头像</h2></div>
					<div id="my_head">
						<div class="pic"><img src="fileUpload/${requestScope.myInfos.mPhoto }" id="img0"></div>
						<a href="javascript:;" class="tc acc_scicon">选择图片</a>
						<input type="file" name="file" id="file0" multiple class="ph08" />
					</div>
				<div class="operation"><input type="submit" class="save" value="保存" /></div>
				</form>
			</div>
		</div>	
	</div>
	<div class="clear"></div>
</div>
<!-----------------版底---------------->
<div id="footer">
	<p>常州旅游网站毕业设计</p>
</div>
<script src="resources/qiantai/js/jquery1.8.3.min.js"></script>
<script src="resources/qiantai/js/script.js"></script>
<script type="text/javascript">

    $(function() {
        /*document.documentElement.style.fontSize=document.documentElement.clientWidth*12/320+'px';*/
        $(window).on("load", function() {
            $("#loading").fadeOut();
        })
        // ========================================浮层控制
        $("#tip .pack a").on("click", function() {
            $("#tip").fadeOut()
            $("#tip .pack p").html("")
            return false;
        })

        function alerths(str) {
            $("#tip").fadeIn()
            $("#tip .pack p").html(str)
            return false;
        }
        $(".acc_sure").on("click", function() {
            alerths("请等待审核！")
            return false;
        })
        $("#file0").change(function() {
            if (this.files && this.files[0]) {
                var objUrl = getObjectURL(this.files[0]);
                console.log("objUrl = " + objUrl);
                if (objUrl) {
                    $("#img0").attr("src", objUrl);
                    $("#file0").click(function(e) {
                        $("#img0").attr("src", objUrl);
                    });
                } else {
                    //IE下，使用滤镜
                    this.select();
                    var imgSrc = document.selection.createRange().text;
                    var localImagId = document.getElementById("sss");
                    //图片异常的捕捉，防止用户修改后缀来伪造图片
                    try {
                        preload.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = data;
                    } catch (e) {
                        this._error("filter error");
                        return;
                    }
                    this.img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale',src=\"" + data + "\")";
                }
            }
        });
        //建立一個可存取到該file的url
        function getObjectURL(file) {
            var url = null;
            if (window.createObjectURL != undefined) { // basic
                url = window.createObjectURL(file);
            } else if (window.URL != undefined) { // mozilla(firefox)
                url = window.URL.createObjectURL(file);
            } else if (window.webkitURL != undefined) { // webkit or chrome
                url = window.webkitURL.createObjectURL(file);
            }
            return url;
        }
    })
</script>
</body>
</html>