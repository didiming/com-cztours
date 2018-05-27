<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>景区列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-------------jquery库-------------->
  	<script type="text/javascript" src="resources/qiantai/js/jquery-1.8.3.min.js"></script>
    <!-------------Amazeui--------------->
    <script type="text/javascript" src="resources/qiantai/js/amazeui.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/qiantai/css/amazeui.css">
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="resources/qiantai/css/style.css">    
</head>
<body>
<!-------------------工具栏------------------->
<div id="toolbar">
    <div class="cw1200">
        <ul class="fl">
            <li class="tb"><p>您好，欢迎访问常州文化旅游网！</p></li>
            <c:if test="${sessionScope.loginUser.uName == null }">
            	<li class="tb"><a href="login">登录</a><span>|</span></li>
            	<li class="tb"><a href="register">注册</a></li>
            </c:if>
        </ul>
        <ul class="fr">
            <li class="tb">
				<a href="#">我的常州</a>
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
							<c:if test="${sessionScope.loginUser.uName != null }" var="flag">
								<li><a href="myInfo?uId=${sessionScope.loginUser.uId }"><i class="i7"></i>设置</a></li>
								<li><a href="javascript: if (confirm('您确定要退出吗？')) {location.href='zhuxiaozhanghao'}"><i class="i8"></i>退出</a></li>
							</c:if>
						</ul>
					</div>
				</div>
				<span>|</span>
			</li>
			<c:if test="${sessionScope.loginUser.uName != null }" var="flag">
           		<li class="tb"><a href="shopCar"><i class="cart_ico"></i>购物车</a><span>|</span></li>
            	<li class="tb"><a href="javascript:;">用户帮助中心</a><span>|</span></li>
            </c:if>
            <li class="tb"><img src="resources/qiantai/images/tel_ico.gif"/><font>40000-40000</font></li>
        </ul>
        <div class="clear"></div>
    </div>
</div>
<!-------------------版头------------------->
<div id="header">
    <div class="cw1200">
        <!-------------------logo------------------->
        <div class="logo fl"><a href="index.html"><img src="resources/qiantai/images/t_logo.jpg"></a></div>
        <div class="search_nav fl">
            <!-------------------搜索------------------->
            <div class="search radius6">
				<form name="searchform" method="post" action="/e/search/index.php">
					<input name='ecmsfrom' type='hidden' value='9'>
					<input type="hidden" name="show" value="title,newstext">
					<select name="classid" id="choose">
						<option value="0">景区</option>
						<option value="1">特产</option>
						<option value="22">文章</option>
					</select> 
					<input class="inp_srh" name="keyboard"  placeholder="请输入您要搜索的关键词" >
					<input class="btn_srh" type="submit" name="submit" value="搜索">
				</form>
			</div>
			<script type="text/javascript" src="resources/qiantai/js/jquery.select.js"></script>
            <!-------------------导航------------------->
            <div class="nav">
                <ul>
                    <li><a href="index?uId=${sessionScope.loginUser.uId }">首页</a></li>
                    <li><a class="cur" href="scenicList?uId=${sessionScope.loginUser.uId }">常州旅游</a></li>
                    <li><a href="mallList?uId=${sessionScope.loginUser.uId }">特产商城</a></li>
                    <li><a href="javascript:;">新闻资讯</a></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!------------------子页框架-------------------->
<div id="sub_from">
    <div class="cw1200">
		<div class="w810 mg2">
			<!------------------公共盒子-------------------->
			<div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="resources/qiantai/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="resources/qiantai/images/lamp_ico.png"/></div>
						<div class="name"><img src="resources/qiantai/images/f_t_news_list.png"/></div>
					</div>
					<div class="fr"><img src="resources/qiantai/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------列表分类-------------------->
				<div id="list_sort">
					<ul>
						<li><span style="font-size: 18px;">景点展示：</span><div class="clear"></div></li>
					</ul>
				</div>
				<!------------------景区列表scenics-------------------->
				<div id="scenic_list">
					<ul>
						<c:forEach items="${requestScope.scenics }" var="scenic">
							<li>
								<a href="getscenicQTById?sId=${scenic.sId }&uId=${sessionScope.loginUser.uId }">
									<div class="pic"> 
										<img class="scale-effect" src="fileUpload/${scenic.sPhoto }"/>
									</div>
									<div class="con">
										<h3>${scenic.sName }</h3>
										<p>${fn:substring(scenic.sContent, 0, 100)}......</p>
									</div>
									<div class="tip">
										<img src="resources/qiantai/images/scenic_ico.png"/>景区
									</div>
									<div class="clear"></div>
								</a>
							</li>
						</c:forEach>
					</ul>
				</div>
				
				
				<!-- <div id="scenic_list">
					<ul>
						<li><a href="scenic.html">
							<div class="pic"> <img class="scale-effect" src="resources/qiantai/images/j1.jpg"/></div>
							<div class="con">
								<h3>常州恐龙园</h3>
								<p>首先要去迪诺水镇，因为那里非常好玩首先要去迪诺水镇，因为那里非常好玩首先要去迪诺水镇，因为那里非常好玩</p>
							</div>
							<div class="tip">
								<img src="resources/qiantai/images/scenic_ico.png"/>景区
							</div>
							<div class="clear"></div>
						</a>
						</li>
						<li><a href="scenic.html">
							<div class="pic"> <img class="scale-effect" src="resources/qiantai/images/j1.jpg"/></div>
							<div class="con">
								<h3>常州恐龙园</h3>
								<p>首先要去迪诺水镇，因为那里非常好玩首先要去迪诺水镇，因为那里非常好玩首先要去迪诺水镇，因为那里非常好玩</p>
							</div>
							<div class="tip">
								<img src="resources/qiantai/images/scenic_ico.png"/>景区
							</div>
							<div class="clear"></div>
						</a>
						</li>
						<li><a href="scenic.html">
							<div class="pic"> <img class="scale-effect" src="resources/qiantai/images/j1.jpg"/></div>
							<div class="con">
								<h3>常州恐龙园</h3>
								<p>首先要去迪诺水镇，因为那里非常好玩首先要去迪诺水镇，因为那里非常好玩首先要去迪诺水镇，因为那里非常好玩</p>
							</div>
							<div class="tip">
								<img src="resources/qiantai/images/scenic_ico.png"/>景区
							</div>
							<div class="clear"></div>
						</a>
						</li>
					
					</ul>
				</div> -->
				
			</div>
	
		</div>

</div>
</div>

<!-----------------版底---------------->
<div id="footer">
    <div class="cw1200">
        <div class="line"><img src="resources/qiantai/images/b_line.png"/></div>
        <div class="b_logo"><img src="resources/qiantai/images/b_logo.png"/></div>
        <div class="con">
            <p>常州旅游网站毕业设计</p>
        </div>
        <div class="clear"></div>
    </div>
</div>
</body>
</html>