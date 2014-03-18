<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>登录界面</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script src="javascript/jquery-1.9.1.min.js"></script>
<script src="javascript/jquery.easyui.min.js"></script>
<style type="text/css">
body {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #666666;
	background: #fff;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
}

.in_tb {
	font-family: Verdana;
	background-attachment: fixed;
	border: 1px solid #666666;
	height: 26px;
	width: 140px;
	line-height: 140%;
}

label {
	width: 80px;
	text-align: right;
	padding: 4px;
	margin: 1px;
}

.btn {
	cursor: hand;
	padding: 5px 20px;
	font-size: 14px;
	border: 1px #1E7ACE solid;
	background: #35B3E3;
}
</style>
<script type="text/javascript">
	//验证
	function chkUsername() {
		var username = $.trim($("#loginName").val());
		var password = $.trim($("#pwd").val());
		if (username == "") {
			return 0;
		} else if (password == "") {
			return -1;
		}

		return 1;
	}

	function verify() {
		
		var ret = chkUsername();
		if (ret > 0) {
			var url = "login/verifyUser?name=" + $("#loginName").val()
					+ "&password=" + $("#pwd").val();
			$.get(url, null, function(result) {
				if (result == 1) {
					$("#div_uname_err_info").hide();
					//	alert(data);
					$("#loginform").submit();
				} else {
					 $("#div_uname_err_info").show();
					$("#div_uname_err_info").html(result);
				}
			});
		} else if (ret == 0) {
			 $("#div_uname_err_info").show();
			//用户名输入框为空,显示规则
			$("#div_uname_err_info").html("用户名不能为空");
		} else {

			if (ret == -1) {
				 $("#div_uname_err_info").show();
				//显示具体的错误内容
				$("#div_uname_err_info").html("密码不能为空");
			}
		}
		return false;
	}

 function hideTip(){
		$("#div_uname_err_info").hide();
 }

	

</script>


</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">
	<center>
		<form action="login" method="post" id="loginform">
			<!-- Save for Web Slices (login3.jpg) -->
			<table id="__01" width="1024" height="768" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td colspan="3"><img src="images/login3_01.jpg" width="1024"
						height="457" alt=""></td>
				</tr>
				<tr>
					<td rowspan="2"><img src="images/login3_02.jpg" width="612"
						height="151" alt=""></td>
					<td width="240" height="90">
						<p>
							&nbsp;&nbsp;<label for="author">用户名:</label> <input
								name="loginName" type="text" id="loginName" size="15"
								class="in_tb"  onfocus="hideTip()" />
						</p> 
						<p>
							&nbsp;&nbsp;<label for="password">密&nbsp;&nbsp;&nbsp;码:</label> <input
								name="pwd" type="password" id="pwd" size="15" class="in_tb" onfocus="hideTip()" "/>
						</p>
						
					</td>
					<td rowspan="2"><img src="images/login3_04.jpg" width="172"
						height="151" alt=""></td>
				</tr>
				<tr>
					<td width="240" height="61" align="center"><input
						type="button" value="登录" name="veri" class="btn"
						onclick="verify()" id="veri" /><br> 
						<span
						id="div_uname_err_info" class="name-pop"
						style="font-size: 12px; color: red"></span>
						</td>
				</tr>
				<tr>
					<td colspan="3"><img src="images/login3_06.jpg" width="1024"
						height="160" alt=""></td>
				</tr>
			</table>
		</form>
		<!-- End Save for Web Slices -->
	</center>
</body>
</html>