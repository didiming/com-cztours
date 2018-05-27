<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>商品订单</title>
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
        <div class="logo"><a title="" href="index.html"><img alt="" src="resources/qiantai/images/logo.jpg" /></a></div>
		<!-------------------头部导航------------------->
		<div class="head_title">
			购物车
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
					<c:if test="${sessionScope.loginUser.uName != null }" var="flag">
						<li><a href="myInfo?uId=${sessionScope.loginUser.uId }"><i class="i7"></i>设置</a></li>
						<li><a href="javascript: if (confirm('您确定要退出吗？')) {location.href='zhuxiaozhanghao'}"><i class="i8"></i>退出</a></li>
					</c:if>
				</ul>
			</div>
		</div>
        <div class="clear"></div>
    </div>
</div>

<!-----------------框架---------------->
<div id="shop_car">
	<div class="cw1000">	

		<div class="main_title">
			<ul>
				<li style="width:35%;">
					商品信息
				</li>
				<li style="width:30%;">价格</li>
				<li style="width:30%;">操作</li>
			</ul>
		</div>
		<div class="list_box">
			<ul>
				<c:forEach items="${requestScope.shopCars }" var="shopCar">
					<li>
						<div class="con">
							<div class="info" style="width:35%;">
								<div class="pic"><a href="#"><img width=53 height=53 src="fileUpload/${shopCar.sPhoto }" /></a></div>
								<div class="name">
								
									<input type="hidden" name="cName" value="${requestScope.comms.cName }" />
									<input type="hidden" name="cDetails" value="${requestScope.comms.cDetails }" />
									<a href="confirmOrder?cName=${shopCar.sName }&cDetails=${shopCar.sPhoto }&cPrice=${shopCar.sPrice }&gouwuche=${shopCar.uId}">${shopCar.sName }</a>
									<p>下单日期：<fmt:formatDate value="${shopCar.sDate }" pattern="yyyy-MM-dd" /></p>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="price" style="width:30%;"><span>￥${shopCar.sPrice }</span></div>
							
							<div class="operation" style="width:30%;">
								<a class="evaluation" href="${shopCar.sId }/deleteShopCar">删除</a>
							</div>
							<div class="clear"></div>
						</div>
					</li>
				</c:forEach>
				
			</ul>
		</div>
		<div class="calculation">
			<a href="confirm_order.html">提交订单</a>
			<span>合计（含运费0.00元）： <b>${shopCar.sPrice }</b></span>
			
		</div>
	</div>
	<div class="clear"></div>
</div>
<!-----------------版底---------------->
<div id="footer">
	<p>常州旅游网站毕业设计</p>
</div>
</body>
</html>