<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>首页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-------------jquery库-------------->
  	<script type="text/javascript" src="resources/qiantai/js/jquery-1.8.3.min.js"></script>
    <!-------------Amazeui--------------->
    <script type="text/javascript" src="resources/qiantai/js/amazeui.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/qiantai/css/amazeui.css">
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="resources/qiantai/css/style.css">    
    <link href="resources/qiantai/css/animate.min.css" rel="stylesheet" type="text/css" />

</head>
<body>
<!-------------------二维码看手机------------------->

<!-------------------工具栏------------------->
<div id="toolbar">
    <div class="cw1200">
        <ul class="fl">
            <li class="tb"><p>您好，欢迎访问常州旅游网！</p></li>
            <c:if test="${sessionScope.loginUser.uName == null }">
            	<li class="tb"><a href="login">登录</a><span>|</span></li>
            	<li class="tb"><a href="register">注册</a></li>
            </c:if>
        </ul>
		<!-------------------签到弹出层------------------->
		<div id="sign_layer">
			<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
			  <div class="am-modal-dialog">
				<div class="win-m">
					<p class="p1">签到成功</p>
					<p class="p1">获得<span class="already-sign">20</span>积分</p>
					<p class="p2">每天签到都可以获得积分哦</p>
					<div class="am-modal-footer">
					  <span class="am-modal-btn">知道了</span>
					</div>
				</div>
				
			  </div>
			</div>
		</div>
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
        <div class="logo fl  wow animated fadeInUp"><a title="" href="index"><img alt="" src="resources/qiantai/images/t_logo.jpg"></a></div>
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
                    <li><a title="" class="cur" href="index?uId=${sessionScope.loginUser.uId }">首页</a></li>
                    <li><a class="tta" title="" href="scenicList?uId=${sessionScope.loginUser.uId }">常州旅游</a></li>
                    <li><a title="" href="mallList?uId=${sessionScope.loginUser.uId }">特产商城</a></li>
                    <li><a title="" href="javascript:;">新闻资讯</a></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!------------------banner-------------------->
<script src="resources/qiantai/js/jquery.superslide.2.1.1.js" type="text/javascript"></script>
<div class="h_banner">
	<ul class="h_b_list">
		<li><a style="background:url(resources/qiantai/images/banner4.png) no-repeat center;" href="#"></a></li>
		<li><a style="background:url(resources/qiantai/images/banner4.png) no-repeat center;" href="#"></a></li>
		<li><a style="background:url(resources/qiantai/images/banner4.png) no-repeat center;" href="#"></a></li>
		<li><a style="background:url(resources/qiantai/images/banner4.png) no-repeat center;" href="#"></a></li>
	</ul>
	<a class="prev" href="javascript:void(0)"></a>
	<a class="next" href="javascript:void(0)"></a>
</div>
<script>
/*鼠标移过，左右按钮显示*/
$(".h_banner").hover(function(){
	$(this).find(".prev,.next").fadeTo("show",0.5);
},function(){
	$(this).find(".prev,.next").hide();
})
/*鼠标移过某个按钮 高亮显示*/
$(".prev,.next").hover(function(){
	$(this).fadeTo("show",1);
},function(){
	$(this).fadeTo("show",0.7);
})
$(".h_banner").slide({ titCell:".num ul" , mainCell:".h_b_list" , effect:"fold", autoPlay:true, delayTime:700 , autoPage:true });
</script>

<!------------------广告-------------------->
<!--<div class="h_gg">
    <a title="" href="#"><img alt="" src="images/g1.jpg"/></a>
    <a title="" href="#"><img alt="" src="images/g2.jpg"/></a>
    <a title="" href="#"><img alt="" src="images/g3.jpg"/></a>
    <a title="" href="#"><img alt="" src="images/g4.jpg"/></a>
</div>-->
<!------------------精彩活动-------------------->
<div class="h_bg1_g"></div>
<div id="h_activity">
    <div class="cw1200">
        <div class="title wow animate fadeInUp"><img alt="" src="resources/qiantai/images/h_title1.png"/></div>
        <div class="con">
            <div class="box wow animate zoomIn">
                <a title="" href="activities.html">
                    <img alt="" class="scale-effect" src="resources/qiantai/images/n1.jpg"/>
                    <p>春节逛吃哪里去？看常州庙会、灯展集锦</p>
                </a>
            </div>
            <div class="video wow animate zoomIn">
                <img alt="" src="resources/qiantai/images/n6.jpg"/>
            </div>
            <div class="box wow animate zoomIn">
                <a title="" href="activities.html">
                    <img alt="" class="scale-effect" src="resources/qiantai/images/n1.jpg"/>
                    <p>春节逛吃哪里去？看常州庙会、灯展集锦</p>
                </a>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="h_bg1_g"></div>
<!------------------孟津旅游-------------------->
<div id="h_scenic">
    <div class="cw1200">
        <div class="title wow animate fadeInUp" style="font-size: 35px; color: #37a0b4;">常州旅游</div>
        <div class="con">
            <div class="tag wow animate fadeInLeft"><img alt="" src="resources/qiantai/images/h_title2_t.jpg"/></div>
            <div class="box wow animate fadeInRight">
                <ul>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="resources/qiantai/images/j1.jpg"/><span>中华恐龙园</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="resources/qiantai/images/j1.jpg"/><span>中华恐龙园</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="resources/qiantai/images/j1.jpg"/><span>中华恐龙园</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="resources/qiantai/images/j1.jpg"/><span>中华恐龙园</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="resources/qiantai/images/j1.jpg"/><span>中华恐龙园</span></a></li>
                    <div class="clear"></div>
                </ul>
                <div class="more"><a href="scenicList">热门景区<span>+</span></a></div>
                
            </div>
            <div class="box wow animate fadeInRight">
                <ul>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="resources/qiantai/images/j1.jpg"/><span>中华恐龙园</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="resources/qiantai/images/j1.jpg"/><span>中华恐龙园</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="resources/qiantai/images/j1.jpg"/><span>中华恐龙园</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="resources/qiantai/images/j1.jpg"/><span>中华恐龙园</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="resources/qiantai/images/j1.jpg"/><span>中华恐龙园</span></a></li>
                    <div class="clear"></div>
                </ul>
                <div class="more"><a title="" href="scenicList">休闲度假<span>+</span></a></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!------------------孟津美食-------------------->
<div id="h_food">
    <div class="cw1200">
        <div class="title wow animate fadeInUp" style="color: #e86b47; font-size: 35px;">常州美食</div>
        <div class="con">
            <div class="box fl">
                <div class="big">
                    <div class="pic wow animate fadeInDown"><a title="" href="#"><img alt="" class="scale-effect" src="resources/qiantai/images/f0.jpg"/></a></div>
                    <p>所谓“水席”，有二层含义：一是以汤水见长，二是吃一道换一道，一道道上菜，象流水一般，故名“水席”。常州水席最初只是在民间流行，唐代武则天时，将常州...</p>
                </div>
                <div class="list wow animate zoomIn">
                    <ul>
                        <li>
                            <a title="" href="#">
                                <div class="pic"><img alt="" class="scale-effect" src="resources/qiantai/images/f1.jpg"/></div>
                                <p>宴天下大酒店老城店</p>
                            </a>
                        </li>
                        <li>
                            <a title="" href="#">
                                <div class="pic"><img alt="" class="scale-effect" src="resources/qiantai/images/f2.png"/></div>
                                <p>宴天下大酒店老城店</p>
                            </a>
                        </li>
                        <li>
                            <a title="" href="#">
                                <div class="pic"><img alt="" class="scale-effect" src="resources/qiantai/images/f3.jpg"/></div>
                                <p>宴天下大酒店老城店</p>
                            </a>
                        </li>
                        <div class="clear"></div>
                    </ul>
                    <div class="more"><a title="" href="#">查看更多</a></div>
                </div>
            </div>
            <div class="box fr">
                <div class="big">
                    <div class="pic wow animate fadeInDown"><a href="#"><img alt="" class="scale-effect" src="resources/qiantai/images/f00.jpg"/></a></div>
                    <p>所谓“水席”，有二层含义：一是以汤水见长，二是吃一道换一道，一道道上菜，象流水一般，故名“水席”。常州水席最初只是在民间流行，唐代武则天时，将洛...</p>
                </div>
                <div class="list wow animate zoomIn">
                    <ul>
                        <li>
                            <a title="" href="#">
                                <div class="pic"><img alt="" class="scale-effect" src="resources/qiantai/images/f1.jpg"/></div>
                                <p>宴天下大酒店老城店</p>
                            </a>
                        </li>
                        <li>
                            <a title="" href="#">
                                <div class="pic"><img alt="" class="scale-effect" src="resources/qiantai/images/f2.png"/></div>
                                <p>宴天下大酒店老城店</p>
                            </a>
                        </li>
                        <li>
                            <a title="" href="#">
                                <div class="pic"><img alt="" class="scale-effect" src="resources/qiantai/images/f3.jpg"/></div>
                                <p>宴天下大酒店老城店</p>
                            </a>
                        </li>
                        <div class="clear"></div>
                    </ul>
                    <div class="more"><a title="" href="#">查看更多</a></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!------------------孟津特产-------------------->
<div id="h_project">
    <div class="cw1200">
        <div class="title wow animate fadeInUp" style="color: #2a9760; font-size: 35px;">常州特产</div>
        <div class="con wow animated flipInY ">
            <ul>
                <li>
                    <a title="" href="#">
                        <img alt="" class="scale-effect" src="resources/qiantai/images/t1.jpg"/>
                        <p>新米 有机杂粮小米黄小米2000g 粮食五谷 农家包邮</p>
                    </a>
                </li>
                <li>
                    <a title="" href="#">
                        <img class="scale-effect" src="resources/qiantai/images/t2.jpg"/>
                        <p>《常州红梅公园》常州酥梨</p>
                    </a>
                </li>
                <li>
                    <a title="" href="#">
                        <img alt="" class="scale-effect" src="resources/qiantai/images/t3.jpg"/>
                        <p>《幸福农场》常州葡萄</p>
                    </a>
                </li>
                <li>
                    <a title="" href="#">
                        <img alt="" class="scale-effect" src="resources/qiantai/images/t4.jpg"/>
                        <p>有机药用黑豆</p>
                    </a>
                </li>
                <li>
                    <a title="" href="#">
                        <img alt="" class="scale-effect" src="resources/qiantai/images/t5.jpg"/>
                        <p>大麦茶</p>
                    </a>
                </li>       
            </ul>
        </div>
    </div>
</div>  
<!------------------美丽乡村-------------------->
<!--<div id="h_note">
    <div class="cw1200">
        <div class="title"><img alt="" src="images/h_title5.png"/></div>
        <div class="con">
            <ul>
                <li>
                    <div class="box">
                        <div class="pic">
                            <a title="" href="#"><img alt="" class="scale-effect" src="images/nt_1.jpg"/></a>
                        </div>
                        <div class="user">
                            <div class="head"><img alt="" src="images/head1.jpg"/></div>
                            <p>A monologue. 独白。</p>
                            <span><label><img alt="" src="images/state_icon1.png"/>18</label><label><img src="images/state_icon2.png"/>20</label></span>
                        </div>
                        <div class="cont">
                            <a title="" href="#"><h3>常州，历史长河中的一处停歇</h3></a>
                            <p>习惯并且爱上了走在路上的感觉不是想去探寻什么只是心中泛滥的小情怀在走</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="box">
                        <div class="pic">
                            <a title="" href="#"><img alt="" class="scale-effect" src="images/nt_2.jpg"/></a>
                        </div>
                        <div class="user">
                            <div class="head"><img alt="" src="images/hh2.jpg"/></div>
                            <p>卖萌の小喵咪</p>
                            <span><label><img alt="" src="images/state_icon1.png"/>18</label><label><img src="images/state_icon2.png"/>20</label></span>
                        </div>
                        <div class="cont">
                            <a title="" href="#"><h3>常州，历史长河中的一处停歇</h3></a>
                            <p>习惯并且爱上了走在路上的感觉不是想去探寻什么只是心中泛滥的小情怀在走</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="box">
                        <div class="pic">
                            <a title="" href="#"><img alt="" class="scale-effect" src="images/nt_3.jpg"/></a>
                        </div>
                        <div class="user">
                            <div class="head"><img src="images/hh3.jpg"/></div>
                            <p>独闯世界fell</p>
                            <span><label><img alt="" src="images/state_icon1.png"/>18</label><label><img src="images/state_icon2.png"/>20</label></span>
                        </div>
                        <div class="cont">
                            <a title="" href="#"><h3>常州，历史长河中的一处停歇</h3></a>
                            <p>习惯并且爱上了走在路上的感觉不是想去探寻什么只是心中泛滥的小情怀在走</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="box">
                        <div class="pic">
                            <a title="" href="#"><img class="scale-effect" src="images/nt0.jpg"/></a>
                        </div>
                        <div class="user">
                            <div class="head"><img src="images/hh4.jpg"/></div>
                            <p>大叔god说走就走</p>
                            <span><label><img alt="" src="images/state_icon1.png"/>18</label><label><img src="images/state_icon2.png"/>20</label></span>
                        </div>
                        <div class="cont">
                            <a title="" href="#"><h3>常州，历史长河中的一处停歇</h3></a>
                            <p>习惯并且爱上了走在路上的感觉不是想去探寻什么只是心中泛滥的小情怀在走</p>
                        </div>
                    </div>
                </li>
                
                <div class="clear"></div>
            </ul>
        </div>
    </div>
</div>-->
<!------------------首页新闻-------------------->
<div id="h_news">
    <div class="cw1200">
        <div class="activity_news fl">
            <div class="title wow animated fadeInUp "><img alt="" src="resources/qiantai/images/h_title6.png"/></div>
            <div class="con">
                <ul>
                    <li class=" wow animated fadeInLeft"><a title="" href="article.html"><img class="scale-effect" src="resources/qiantai/images/n1.jpg"/><p>春节逛吃哪里去？看常州庙会、灯展集锦</p></a></li>
                    <li class=" wow animated zoomIn"><a title="" href="article.html"><img class="scale-effect" src="resources/qiantai/images/n2.jpg"/><p>春节常州九县六区超嗨的节目单出炉</p></a></li>
                    <li class=" wow animated zoomIn"><a title="" href="article.html"><img class="scale-effect" src="resources/qiantai/images/n3.jpg"/><p>溧阳各景区“冬游季”活动大比拼</p></a></li>
                    <li class=" wow animated zoomIn"><a title="" href="article.html"><img class="scale-effect" src="resources/qiantai/images/n4.jpg"/><p>美！滑雪看戏吃鱼宴，今年过年来溧阳！</p></a></li>
                </ul>
            </div>
        </div>
        <div class="hot_news fr">
            <div class="title wow animated fadeInUp"><img src="resources/qiantai/images/h_title7.png"/></div>
            <div class="con">
     
                <div data-am-widget="slider" class="pic am-slider am-slider-c4" data-am-slider='{"controlNav":false}'>
                    <ul class="am-slides">
                        <li>
                            <a href="article.html">
								<img alt="" src="resources/qiantai/images/n5.jpg"/>
								<div class="am-slider-desc">春节黄金周，常州旅游全线飘红</div>
							</a>
                        </li>
                        <li>
                            <a href="article.html">
								<img alt="" src="resources/qiantai/images/n5.jpg"/>
								<div class="am-slider-desc">春节黄金周，常州旅游全线飘红</div>
							</a>
                        </li>
                    </ul>
                </div>

                <div class="list wow animated fadeInRight">
                    <ul>
                        <li><a title="" href="article.html">正月十五，这些习俗要了解02/09</a><span>01/18</span></li>
                        <li><a title="" href="article.html">正月十五，这些习俗要了解02/09</a><span>01/18</span></li>
                        <li><a title="" href="article.html">正月十五，这些习俗要了解02/09</a><span>01/18</span></li>
                        <li><a title="" href="article.html">正月十五，这些习俗要了解02/09</a><span>01/18</span></li>
                        <li><a title="" href="article.html">正月十五，这些习俗要了解02/09</a><span>01/18</span></li>
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
        <div class="line"><img alt="" src="resources/qiantai/images/b_line.png"/></div>
        <div class="con">
            <p>常州旅游网站毕业设计</p>
            
        </div>
        <div class="clear"></div>
    </div>
</div>
<script src="resources/qiantai/js/wow.min.js"></script>
<script>
wow = new WOW(
{animateClass: 'animated',
offset:100});
wow.init();
document.getElementById('moar').onclick = function() {
var section = document.createElement('section');
section.className = 'section--purple wow fadeInDown';
this.parentNode.insertBefore(section, this);};
</script>

</body>
</html>