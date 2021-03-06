﻿<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>商品详情</title>
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
                    <li><a title="" href="index?uId=${sessionScope.loginUser.uId }">首页</a></li>
                    <li><a title="" href="scenicList?uId=${sessionScope.loginUser.uId }">常州旅游</a></li>
                    <li><a title="" class="cur" href="mallList?uId=${sessionScope.loginUser.uId }">特产商城</a></li>
                    <li><a title="" href="javascript:;">新闻资讯</a></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>

<!------------------子页框架-------------------->
<div id="sub_from" style="padding-top:10px;">
    <div class="cw1200">
		<!------------------公共盒子-------------------->
		<div class="public_box bg1">
			<div class="public_title">
				<div class="fl"><img src="resources/qiantai/images/from_title_left.png"/></div>
				<div class="con">
					<div class="lamp_ico"><img src="resources/qiantai/images/lamp_ico.png"/></div>
					<div class="name"><img src="resources/qiantai/images/f_t_item_info.png"/></div>
				</div>
				<div class="fr"><img src="resources/qiantai/images/from_title_right.png"/></div>
				<div class="clear"></div>
			</div>
			<!------------------特产信息-------------------->
			<div id="item_info">
				<!-----------------主图---------------->
				<div class="preview">
					<div id="vertical" class="bigImg">
						<img src="fileUpload/${requestScope.comms.cDetails }" style="width: 500px;height: 500px" id="midimg" />
						<div style="display:none;" id="winSelector"></div>
					</div>
					<!--<div id="imageMenu">
						<ul>
							<li id="onlickImg"><img src="images/zt1.jpg"/></li>
							<li><img src="images/zt2.jpg"/></li>
							<li><img src="images/zt3.jpg"/></li>
							<li><img src="images/zt4.jpg"/></li>
							<li><img src="images/zt5.jpg"/></li>
						</ul>
					</div>-->
					<div id="bigView" style="display:none;"><img width="800" height="800" /></div>
				</div>
				<!-----------------内容信息---------------->
				<div class="cont_info">
					<div class="name"><h2>${requestScope.comms.cName }</h2></div>
					<!-------------商品属性（价位数量）---------------->
					<div class="p_number">
						<input type="hidden" value="${requestScope.comms.cId }" id="hg" />
						<div class="unit_price">
							<ul>
								<li class="fl">商品单价：<strong id="price_item_1">￥${requestScope.comms.cPrice }</strong></li>
								<!--<li class="fr">已成交：3笔</li>-->
								<div class="clear"></div>
							</ul>
						</div>
						<!------------商品规格-------------->
						<script type="text/javascript">
							$(function(){
							$(".yListr ul li em").click(function(){
								$(this).addClass("yListrclickem").siblings().removeClass("yListrclickem");
							})
							})
						</script>
						<!--<div class="yListr">
							<ul>
								<li>
									<span>颜色</span>
									<em class="yListrclickem">深灰色<i></i></em>
									<em>金色<i></i></em>
									<em>银色<i></i></em>
								</li>
								<li>
									<span>尺寸</span>
									<em class="yListrclickem">港版（二网）<i></i></em>
									<em>类型<i></i></em>
								</li>
							</ul>
						</div>-->
						<!-------------数量增减变动价格（产品页）-------------->
						<script type="text/javascript" src="resources/qiantai/js/payfor.js"></script>
						<div class="add_chose">
							<label>数量：</label>
							<a class="reduce" onClick="setAmount.reduce('#qty_item_1')" href="javascript:void(0)">-</a>
							<input type="text" name="qty_item_1" value="1" id="qty_item_1" onKeyUp="setAmount.modify('#qty_item_1')" class="text" />
							<a class="add" onClick="setAmount.add('#qty_item_1')" href="javascript:void(0)">+</a>
							<!--<span>库存：1500件</span>-->
							<div class="clear"></div>
						</div>
						<div class="buy">
							<ul><input type="hidden" value="${sessionScope.loginUser.uId }" id="gouwuche" />
								<li>总价：<span class="total-font" id="total_item_1">￥<input type="text" name="cPrice" value="${requestScope.comms.cPrice }" /></span></li>
								<!--<li><span class="jifen">购买商品可获得：<b id="total_points">18</b>积分</span></li>-->
								<li>
									<input type="hidden" name="cName" value="${requestScope.comms.cName }" />
									<input type="hidden" name="cDetails" value="${requestScope.comms.cDetails }" />
									
									<a class="go_buy" href="javascript:;" id="confirmOrder" >立即购买</a>
									<a class="car_buy" href="javascript:;" id="shopCar">加入购物车</a></li>
								<li>运费：<span class="tp_bg">
									<c:if test="${requestScope.comms.cFreight eq 1 }">包邮</c:if>
									<c:if test="${requestScope.comms.cFreight eq 2 }">货到付款</c:if>
									<c:if test="${requestScope.comms.cFreight eq 3 }">其他方式</c:if>
								</span></li>
								<!--<li>提醒：<span class="tp_bg">此商品为鲜活易腐类，不支持7天无理由退货</span></li>-->
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>	
		</div>
		<div class="w810 fl">
			<!------------------公共盒子-------------------->
			<!-- <div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="resources/qiantai/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="resources/qiantai/images/lamp_ico.png"/></div>
						<div class="name"><img src="resources/qiantai/images/f_t_project_d.png"/></div>
					</div>
					<div class="fr"><img src="resources/qiantai/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				----------------特产详情------------------
				<div id="project_details">
					<img alt="" src="resources/qiantai/images/p1.jpg"/>
				</div>
			</div> -->
			<!------------------公共盒子-------------------->
			<!--<div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="images/lamp_ico.png"/></div>
						<div class="name"><img src="images/f_t_comment2.png"/></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				&lt;!&ndash;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;评论&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&ndash;&gt;
				<div id="comment">
					<div class="list">
						<div class="tag">
							<a class="cur" href="#">最新评价</a><span>|</span><a href="#">正序排列</a>
						</div>
						<ul>
							<li>
								<div class="pic"><img src="images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span>5#</span></div>
							</li>
							<li>
								<div class="pic"><img src="images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span>4#</span></div>
							</li>
							<li>
								<div class="pic"><img src="images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span class="t_c t_box">地板</span></div>
							</li>
							<li>
								<div class="pic"><img src="images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span class="t_b t_box">板凳</span></div>
							</li>
							<li>
								<div class="pic"><img src="images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span class="t_a t_box">沙发</span></div>
							</li>
						</ul>
					</div>
				</div>
				
			</div>-->
		</div>
		<div class="w380 fr">
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="resources/qiantai/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="resources/qiantai/images/lamp_ico.png"/></div>
						<div class="name"><img src="resources/qiantai/images/f_t_hot_project.png"/></div>
					</div>
					<div class="fr"><img src="resources/qiantai/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------商品推荐-------------------->
				<div id="project_recom">
					<ul>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t4.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t5.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t4.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t5.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t4.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t5.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t4.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t5.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t4.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t5.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t4.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t5.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t4.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t5.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="resources/qiantai/images/t3.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
		</div>
		<div class="clear"></div>
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

<!-----------------产品主图特效---------------->
<script type="text/javascript">
$(function() {
	$('#confirmOrder').click(function() {
		//var cName = $(this).parent().children(':first').val();
		//var cDetails = $(this).parent().parent().children(':first').val();
		var cName = $(this).prev().prev().val();
		var cDetails = $(this).prev().val();
		var cPrice = $('#total_item_1').text();
		var gouwuche = $('#gouwuche').val();
		//alert(gouwuche);
		location.href = '/confirmOrder?cName=' + cName + '&cDetails='
				+ cDetails + '&cPrice=' + cPrice + '&gouwuche=' + gouwuche;
	});
	
	$('#shopCar').click(function(){
		var cName = $(this).prev().prev().prev().val();
		var cDetails = $(this).prev().prev().val();
		var cPrice = $('#total_item_1').text();
		var gouwuche = $('#gouwuche').val();
		var hg = $('#hg').val();
		//alert(hg);
		location.href = '/addShopCar?cName=' + cName + '&cDetails='
				+ cDetails + '&cPrice=' + cPrice + '&gouwuche=' + gouwuche + "&hg=" + hg;
	});
});
confirmOrder

$(document).ready(function(){
	// 图片上下滚动
	var count = $("#imageMenu li").length - 5; /* 显示 6 个 li标签内容 */
	var interval = $("#imageMenu li:first").width();
	var curIndex = 0;
	
	$('.scrollbutton').click(function(){
		if( $(this).hasClass('disabled') ) return false;
		
		if ($(this).hasClass('smallImgUp')) --curIndex;
		else ++curIndex;
		
		$('.scrollbutton').removeClass('disabled');
		if (curIndex == 0) $('.smallImgUp').addClass('disabled');
		if (curIndex == count-1) $('.smallImgDown').addClass('disabled');
		
		$("#imageMenu ul").stop(false, true).animate({"marginLeft" : -curIndex*interval + "px"}, 600);
	});
	
	// 解决 ie6 select框 问题
	$.fn.decorateIframe = function(options) {
        if ($.browser.msie && $.browser.version < 7) {
            var opts = $.extend({}, $.fn.decorateIframe.defaults, options);
            $(this).each(function() {
                var $myThis = $(this);
                //创建一个IFRAME
                var divIframe = $("<iframe />");
                divIframe.attr("id", opts.iframeId);
                divIframe.css("position", "absolute");
                divIframe.css("display", "none");
                divIframe.css("display", "block");
                divIframe.css("z-index", opts.iframeZIndex);
                divIframe.css("border");
                divIframe.css("top", "0");
                divIframe.css("left", "0");
                if (opts.width == 0) {
                    divIframe.css("width", $myThis.width() + parseInt($myThis.css("padding")) * 2 + "px");
                }
                if (opts.height == 0) {
                    divIframe.css("height", $myThis.height() + parseInt($myThis.css("padding")) * 2 + "px");
                }
                divIframe.css("filter", "mask(color=#fff)");
                $myThis.append(divIframe);
            });
        }
    }
    $.fn.decorateIframe.defaults = {
        iframeId: "decorateIframe1",
        iframeZIndex: -1,
        width: 0,
        height: 0
    }
    //放大镜视窗
    $("#bigView").decorateIframe();

    //点击到中图
    var midChangeHandler = null;
	
    $("#imageMenu li img").bind("click", function(){
		if ($(this).attr("id") != "onlickImg") {
			midChange($(this).attr("src").replace("small", "mid"));
			$("#imageMenu li").removeAttr("id");
			$(this).parent().attr("id", "onlickImg");
		}
	}).bind("mouseover", function(){
		if ($(this).attr("id") != "onlickImg") {
			window.clearTimeout(midChangeHandler);
			midChange($(this).attr("src").replace("small", "mid"));
			$(this).css();
		}
	}).bind("mouseout", function(){
		if($(this).attr("id") != "onlickImg"){
			$(this).removeAttr("style");
			midChangeHandler = window.setTimeout(function(){
				midChange($("#onlickImg img").attr("src").replace("small", "mid"));
			}, 1000);
		}
	});

    function midChange(src) {
        $("#midimg").attr("src", src).load(function() {
            changeViewImg();
        });
    }

    //大视窗看图
    function mouseover(e) {
        if ($("#winSelector").css("display") == "none") {
            $("#winSelector,#bigView").show();
        }

        $("#winSelector").css(fixedPosition(e));
        e.stopPropagation();
    }


    function mouseOut(e) {
        if ($("#winSelector").css("display") != "none") {
            $("#winSelector,#bigView").hide();
        }
        e.stopPropagation();
    }


    $("#midimg").mouseover(mouseover); //中图事件
    $("#midimg,#winSelector").mousemove(mouseover).mouseout(mouseOut); //选择器事件

    var $divWidth = $("#winSelector").width(); //选择器宽度
    var $divHeight = $("#winSelector").height(); //选择器高度
    var $imgWidth = $("#midimg").width(); //中图宽度
    var $imgHeight = $("#midimg").height(); //中图高度
    var $viewImgWidth = $viewImgHeight = $height = null; //IE加载后才能得到 大图宽度 大图高度 大图视窗高度

    function changeViewImg() {
        $("#bigView img").attr("src", $("#midimg").attr("src").replace("mid", "big"));
    }

    changeViewImg();

    $("#bigView").scrollLeft(0).scrollTop(0);
    function fixedPosition(e) {
        if (e == null) {
            return;
        }
        var $imgLeft = $("#midimg").offset().left; //中图左边距
        var $imgTop = $("#midimg").offset().top; //中图上边距
        X = e.pageX - $imgLeft - $divWidth / 2; //selector顶点坐标 X
        Y = e.pageY - $imgTop - $divHeight / 2; //selector顶点坐标 Y
        X = X < 0 ? 0 : X;
        Y = Y < 0 ? 0 : Y;
        X = X + $divWidth > $imgWidth ? $imgWidth - $divWidth : X;
        Y = Y + $divHeight > $imgHeight ? $imgHeight - $divHeight : Y;

        if ($viewImgWidth == null) {
            $viewImgWidth = $("#bigView img").outerWidth();
            $viewImgHeight = $("#bigView img").height();
            if ($viewImgWidth < 200 || $viewImgHeight < 200) {
                $viewImgWidth = $viewImgHeight = 800;
            }
            $height = $divHeight * $viewImgHeight / $imgHeight;
            $("#bigView").width($divWidth * $viewImgWidth / $imgWidth);
            $("#bigView").height($height);
        }

        var scrollX = X * $viewImgWidth / $imgWidth;
        var scrollY = Y * $viewImgHeight / $imgHeight;
        $("#bigView img").css({ "left": scrollX * -1, "top": scrollY * -1 });
        $("#bigView").css({ "top": 75, "left": $(".preview").offset().left + $(".preview").width() + 15 });

        return { left: X, top: Y };
    }

});
</script>
</body>
</html>