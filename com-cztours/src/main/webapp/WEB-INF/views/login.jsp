<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>登录</title>
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

<!-------------------登录------------------->
<div id="log_register">
	
	<div class="lr_box">
		
		<div class="tag">
			<ul>
				<li><a class="cur" href="login">登录</a></li>
				<li><a href="register">注册</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		<form action="login" method="post">
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
							<label class="am-checkbox">
								<input type="checkbox" id="checkbox_a1" class="chk_1"> 
								<label for="checkbox_a1"></label> 记住密码
							</label>
							<a class="back" href="javascript:;">找回密码</a>
						</td>
					</tr>
					<tr>
						<td><input class="submit" type="submit" value="登录"></td>
					</tr>
				</tbody>
			</form>
		</table>

	</div>

</div>

</body>
</html>