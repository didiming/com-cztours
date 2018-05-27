<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>确认订单</title>
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
			确认订单
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
					<li><a href="my_info.html"><i class="i7"></i>设置</a></li>
					<li><a href="#"><i class="i8"></i>退出</a></li>
				</ul>
			</div>
		</div>
        <div class="clear"></div>
    </div>
</div>

<!-----------------确认订单---------------->
<div id="confirm_order">
	<div class="cw1000">	

		<!-----------------收货人信息---------------->
		<div class="addr_list">
			<h2>收货人信息</h2>
			<ul>
				<li class="cur">
					<h1>${requestScope.myInfos.iName }<span>${requestScope.myInfos.iPhone }</span></h1>
					<p>中国 ${requestScope.myInfos.iCity } ${requestScope.myInfos.iAddress }</p>
				</li>
				<div class="clear"></div>
			</ul>
			<div class="add"><a href="myContact?uId=${sessionScope.loginUser.uId }">收货人编辑与管理</a></div>
		</div>
		
		<!-----------------送货清单---------------->
		<div class="list_box">
			<h2>送货清单</h2>
			<table>
				<tr>
					<th>商品名称</th>
					<th>总价</th>
				</tr>
				<tr>
					<td>
						<div class="pic">
							<a href="javascript:;">
								<img style="width:53px;height:53px;" src="fileUpload/${requestScope.cDetails }" />
							</a>
						</div>
						<div class="name">
							<a href="#">${requestScope.cName }</a>
						</div>
						<div class="clear"></div>
					</td>

					<td style="text-align:center;">${requestScope.cPrice }</td>
				</tr>
				
			</table>
		
		</div>
		<div class="pay_method">
			<h2>支付方式</h2>
			<ul>
				<li><div class="cur" >支付宝支付</div><span>← 选择支付宝支付商品金额</span></li>
				<li><div >微信支付</div><span>← 选择微信钱包支付商品金额</span></li>
			</ul>
		</div>
		<div class="calculation">
		
			<input type="submit" href="#" value="结算" />
			<span>应付金额（含运费0.00元）： <b>${requestScope.cPrice }</b></span>
			
		</div>
	</div>
	<div class="clear"></div>
</div>
<!-----------------版底---------------->
<div id="footer">
	<p>常州旅游网站毕业设计</p>
</div>
<script>
    $('.pay_method li div').click(function(){
        $(this).addClass('cur').parent('li').siblings('li').children('div').removeClass('cur')

    })
    $('.addr_list li').click(function(){
        $(this).addClass('cur').siblings('li').removeClass('cur')

    })
</script>
</body>
</html>