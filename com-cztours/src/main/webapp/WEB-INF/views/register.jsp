<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>注册</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-------------jquery库-------------->
  	<script type="text/javascript" src="resources/qiantai/js/jquery-1.8.3.min.js"></script>
	<!-------------Amazeui--------------->
    <script type="text/javascript" src="resources/qiantai/js/amazeui.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/qiantai/css/amazeui.css">
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="resources/qiantai/css/user.css">  
    <script type="text/javascript">
		function changeCaptcha(){
	  		$("#changeCaptcha").attr("src","getCaptchaCode");
		}
	</script>  
</head>
<body>

<!-------------------登录------------------->
<div id="log_register">
	
	<div class="lr_box">
		
		<div class="tag">
			<ul>
				<li><a href="login">登录</a></li>
				<li><a class="cur" href="register">注册</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		<form action="register" method="post">
			<table class="table_list">
				<tbody>
					<tr>
						<td><input class="text" name="uName" type="text" placeholder="用户名"></td>
					</tr>
					<tr>
						<td><input class="text" type="password" name="uPwd" placeholder="您的密码"></td>
					</tr>
					<tr>
						<td>
							<input style="width:160px;" id="captchaCode" maxlength="4" name="captchaCode" class="text" type="password" placeholder="验证码">
							<!-- <a style="margin-left:30px;" href="#">获取验证</a> -->
							<a href="javascript:changeCaptcha()" rel="external nofollow">
								<img id="changeCaptcha" src="getCaptchaCode" title="看不清，点击换一张">
							</a> 
						</td>
						
					</tr>
					<tr>
						<td><input class="submit" type="submit" value="注册"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>

</div>

</body>
</html>