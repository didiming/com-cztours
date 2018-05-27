<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>景区</title>
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
				<a href="#">我的河洛</a>
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
            <li class="tb"><a href="shop_car.html"><i class="cart_ico"></i>购物车</a><span>|</span></li>
            <li class="tb"><a href="javascript:;">用户帮助中心</a><span>|</span></li>
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
					<input class="inp_srh" name="keyboard"  placeholder="请输入您要搜索的关键词" />
					<input class="btn_srh" type="submit" name="submit" value="搜索" />
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
<!------------------景区版头-------------------->
<div id="scenic_head" style="background:url(fileUpload/${requestScope.scenic.sPhoto }) no-repeat center;background-size:100%;">
	<div class="cw1200">
		<div class="title"><p>${requestScope.scenic.sName }</p></div>
		<a href="#" class="view_gallery" id="botn">查看图库<i class="am-icon-chevron-circle-right"></i></a>
		
		<ul style="display:none;" data-am-widget="gallery" class="am-gallery am-avg-sm-2 am-avg-md-3 am-avg-lg-4 am-gallery-default" data-am-gallery="{ pureview: true }" >
				<li>
					<div class="am-gallery-item">
						<a href="fileUpload/${requestScope.scenic.sPhoto }" class="">
						  <img src="fileUpload/${requestScope.scenic.sPhoto }"  alt="${requestScope.scenic.sDescribe }"/>
						  <div style="display:none;">
							<h3 class="am-gallery-title">${requestScope.scenic.sDescribe }</h3>
							<div class="am-gallery-desc">${requestScope.scenic.sCreateTime }</div>
							</div>
						</a>
					</div>
				  </li>
		</ul>
		
		<!-- <ul style="display:none;" data-am-widget="gallery" class="am-gallery am-avg-sm-2 am-avg-md-3 am-avg-lg-4 am-gallery-default" data-am-gallery="{ pureview: true }" >
		  <li>
			<div class="am-gallery-item">
				<a href="resources/qiantai/images/10F118AC-FE28-4986-A6D0-B9E739F8CFDC.jpg" class="">
				  <img src="resources/qiantai/images/10F118AC-FE28-4986-A6D0-B9E739F8CFDC.jpg"  alt="远方 有一个地方 那里种有我们的梦想"/>
				  <div style="display:none;">
					<h3 class="am-gallery-title">远方 有一个地方 那里种有我们的梦想</h3>
					<div class="am-gallery-desc">2375-09-26</div>
					</div>
				</a>
			</div>
		  </li>
		  <li>
			<div class="am-gallery-item">
				<a href="resources/qiantai/images/1458530382234p1aebir9i21s4q2hiiso1ip6msf29.jpg" class="">
				  <img src="resources/qiantai/images/1458530382234p1aebir9i21s4q2hiiso1ip6msf29.jpg"  alt="某天 也许会相遇 相遇在这个好地方"/>
					<h3 class="resources/qiantai/am-gallery-title">某天 也许会相遇 相遇在这个好地方</h3>
					<div class="resources/qiantai/am-gallery-desc">2375-09-26</div>
				</a>
			</div>
		  </li>
		  <li>
			<div class="am-gallery-item">
				<a href="resources/qiantai/images/1470142217075p1ap5krur5imd15qq1ims12ojghn2.jpg" class="">
				  <img src="resources/qiantai/images/1470142217075p1ap5krur5imd15qq1ims12ojghn2.jpg"  alt="不要太担心 只因为我相信"/>
					<h3 class="am-gallery-title">不要太担心 只因为我相信</h3>
					<div class="am-gallery-desc">2375-09-26</div>
				</a>
			</div>
		  </li>
		  <li>
			<div class="am-gallery-item">
				<a href="resources/qiantai/images/DD0E49BD-47F5-4B10-85DB-FE2390B91541.jpg" class="">
				  <img src="resources/qiantai/images/DD0E49BD-47F5-4B10-85DB-FE2390B91541.jpg"  alt="终会走过这条遥远的道路"/>
					<h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
					<div class="am-gallery-desc">2375-09-26</div>
				</a>
			</div>
		  </li>
		  <li>
			<div class="am-gallery-item">
				<a href="resources/qiantai/images/banner3.jpg" class="">
				  <img src="resources/qiantai/images/banner3.jpg"  alt="终会走过这条遥远的道路"/>
					<h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
					<div class="am-gallery-desc">2375-09-26</div>
				</a>
			</div>
		  </li>
		</ul> -->
		<script>
			$("#botn").live("click",function(){
				$(".am-gallery-item img").click();
			});
		
			$(document).ready(function(){
				$(".am-icon-chevron-left").attr("class", "am-icon-close");
			});
		</script>
	</div>
</div>
<!------------------子页框架-------------------->
<div id="sub_from">
    <div class="cw1200">
		<div class="w810 fl">
			<!------------------公共盒子-------------------->
			<div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="resources/qiantai/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="resources/qiantai/images/lamp_ico.png"/></div>
						<div class="name"><img src="resources/qiantai/images/f_t_article.png"/></div>
					</div>
					<div class="fr"><img src="resources/qiantai/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------景区介绍-------------------->
				<div id="article">
					<div class="con">
						<p>${requestScope.scenic.sContent }</p>
					</div>
					<div class="map">
						<img style="max-width:100%;" src="fileUpload/${requestScope.scenic.sPhoto }"/>
					</div>					
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<!--<div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="images/lamp_ico.png"/></div>
						<div class="name"><img src="images/f_t_comment.png"/></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				&lt;!&ndash;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;评论&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&ndash;&gt;
				<div id="comment">
			
					<div class="list">
						<div class="tag">
							<a class="cur" href="#">最新评论</a><span>|</span><a href="#">正序排列</a>
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
						<div class="name"><img src="resources/qiantai/images/f_t_online_book.png"/></div>
					</div>
					<div class="fr"><img src="resources/qiantai/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------在线预订-------------------->
				<div id="online_book">
					<ul>
						<li>景区名称：<span>千唐志斋</span></li>
						<li>电话咨询：<span>0379-65517799</span></li>
						<li>开放时间：<span>全年</span></li>
						<li>详细地址：<span>常州</span></li>
						<li>费用：<label>￥495</label></li>
					</ul>
					<a class="buy" href="submit_orders.html">立即预订</a>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="resources/qiantai/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="resources/qiantai/images/lamp_ico.png"/></div>
						<div class="name"><img src="resources/qiantai/images/f_t_surrounding_specialty.png"/></div>
					</div>
					<div class="fr"><img src="resources/qiantai/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------周边推荐-------------------->
				<div class="peripheral_recom">
					<ul>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="resources/qiantai/images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">春艳牡丹</a>
								<p>志斋是研究唐代三百年文治武功和书法艺术的史料宝库</p>
								<span>距离35公里</span>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="resources/qiantai/images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">春艳牡丹</a>
								<p>志斋是研究唐代三百年文治武功和书法艺术的史料宝库</p>
								<span>距离35公里</span>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="resources/qiantai/images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">春艳牡丹</a>
								<p>志斋是研究唐代三百年文治武功和书法艺术的史料宝库</p>
								<span>距离35公里</span>
							</div>
							<div class="clear"></div>
						</li>
					</ul>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="resources/qiantai/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="resources/qiantai/images/lamp_ico.png"/></div>
						<div class="name"><img src="resources/qiantai/images/f_t_surrounding_hotel.png"/></div>
					</div>
					<div class="fr"><img src="resources/qiantai/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------周边推荐-------------------->
				<div class="peripheral_recom">
					<ul>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="resources/qiantai/images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">春艳牡丹</a>
								<p>志斋是研究唐代三百年文治武功和书法艺术的史料宝库</p>
								<span>距离35公里</span>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="resources/qiantai/images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">春艳牡丹</a>
								<p>志斋是研究唐代三百年文治武功和书法艺术的史料宝库</p>
								<span>距离35公里</span>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="resources/qiantai/images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">春艳牡丹</a>
								<p>志斋是研究唐代三百年文治武功和书法艺术的史料宝库</p>
								<span>距离35公里</span>
							</div>
							<div class="clear"></div>
						</li>
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
</body>
</html>
