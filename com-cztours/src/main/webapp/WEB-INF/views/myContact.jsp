<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>常用联系人</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-------------jquery库-------------->
  	<script type="text/javascript" src="resources/qiantai/js/jquery-1.8.3.min.js"></script>
	<!-------------Amazeui--------------->
    <script type="text/javascript" src="resources/qiantai/js/amazeui.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/qiantai/css/amazeui.css">
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="resources/qiantai/css/user.css">  
    
    <link rel="stylesheet" href="resources/address/pick-pcc.css"/>
    
    <style>
        body{padding:10px;}
        .pick-area{margin:10px;}
        .a{float:left;width:100%;margin:10px;}
        .a input{width:400px;padding:10px;margin:10px;outline-color: greenyellow;}
        h1{text-align: center;}
        h3{margin:5px;color:#333;}
        h4{margin:5px;color:#666;padding:0 20px;font-weight: 100;}
        .blank{float:left;width:50%;height:400px;background:cyan;border-top:1px solid #333;margin-top:50px;}
        .blank2{float:left;width:50%;height:400px;background:lightpink;border-top:1px solid #333;padding-top:50px;}
        .box{width:100%;overflow: hidden;background:lightgreen;}
    </style>  
</head>
<body>

<!-------------------版头------------------->
<div id="header">
    <div class="cw1000">
        <!-------------------logo------------------->
        <div class="logo"><a title="" href="index.html"><img alt="" src="resources/qiantai/images/logo.jpg" /></a></div>
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
					<li><a href="myHead?uId=${sessionScope.loginUser.uId }"><i class="ico2"></i>我的头像</a></li>
					<li><a class="cur" href="myContact?uId=${sessionScope.loginUser.uId }"><i class="ico3"></i>常用联系人</a></li>
					<li><a href="security?uId=${sessionScope.loginUser.uId }"><i class="ico4"></i>修改密码</a></li>
				</ul>
			</div>
		</div>	
	</div>
	<div class="w700 fr">
		<div class="public_box">
			<!-----------------常用联系人---------------->
			<div id="set_box">
				<div class="title"><h2>常用联系人</h2></div>
				<form action="updateIContact" method="post">
					<input type="hidden" name="uId" value="${requestScope.myInfos.uId }" />
					<table class="table_list">
						<tr>
							<th>姓名：</th>
							<td><input class="text" type="text" name="iName" value="${requestScope.myInfos.iName }"/></td>
						</tr>
						<tr>
							<th>所在地区：</th>
							<td>
								<div class="pick-area pick-area6" name="iCity"></div>
	        					<input type="hidden" placeholder="地址" name="iCity" value="${requestScope.myInfos.iCity }" />
							</td>
						</tr>
						<tr>
							<th>详细地址：</th>
							<td><textarea name="iAddress">${requestScope.myInfos.iAddress }</textarea></td>
						</tr>
						<tr>
							<th>手机号码：</th>
							<td><input class="text" type="text" name="iPhone" value="${requestScope.myInfos.iPhone }" /></td>
						</tr>
						<tr>
							<th>邮政编码：</th>
							<td><input class="text" type="text" name="iOffice" value="${requestScope.myInfos.iOffice }" /></td>
						</tr>
						<tr>
							<td colspan="2">
								<label class="am-checkbox">
									<c:if test="${requestScope.myInfos.iStaus eq 0 }" var="flag">
										<input type="checkbox" id="checkbox_a1" name="iStaus" class="chk_1" value="0" /> 
									</c:if>
									<c:if test="${not flag }">
										<input type="checkbox" id="checkbox_a1" name="iStaus" class="chk_1" value="1" checked="checked" /> 
									</c:if>
									<label for="checkbox_a1"></label> 设置为默认
								</label>
							</td>
						</tr>
					</table>
					<div class="operation"><input type="submit" class="save" value="保存" /></div>
				</form>
				<!-----------------联系列表---------------->

			</div>
		</div>	
	</div>
	<div class="clear"></div>
</div>
<!-----------------版底---------------->
<div id="footer">
	<p>常州旅游网站毕业设计</p>
</div>
</body>
<script src="resources/address/jquery.min.js"></script>
<script type="text/javascript" src="resources/address/pick-pcc.js"></script>
<script type="text/javascript">

    $(".pick-area6").pickArea({
        "format":"上海市/市辖区/普陀区", //格式
        "width":"340",
        "borderColor":"#999",//文本边框的色值
        "arrowColor":"#999",//下拉箭头颜色
        "listBdColor":"#999",//下拉框父元素ul的border色值
        "color":"#999",//字体颜色
        "hoverColor":"#999",
        //"preSet":"山东省/临沂市/兰陵县",
        "getVal":function(){
            //console.log($(".pick-area-hidden").val())
            //console.log($(".pick-area-dom").val())
            var thisdom = $("."+$(".pick-area-dom").val());
            thisdom.next().val($(".pick-area-hidden").val());
        }
    });


</script>
</html>