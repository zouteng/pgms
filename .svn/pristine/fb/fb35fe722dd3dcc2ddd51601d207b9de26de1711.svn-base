<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/main.css" rel="stylesheet" />
<link href="css/easyui.css" rel="stylesheet" />
<link href="css/icon.css" rel="stylesheet" />
<link href="css/demo.css" rel="stylesheet" />
<script src="javascript/jquery-1.9.1.min.js"></script>
<script src="javascript/jquery.easyui.min.js"></script>
<script src="javascript/main.js"></script>
<script src="javascript/jquery-easyui-1.2.6/locale/easyui-lang-zh_CN.js"
	charset="UTF-8" type="text/javascript"></script>
<title>信息公告---上海通用汽车/泛亚技术中心研发试验中心</title>
</head>
<body onload="initMenu('mSystemManage');">
	<div class="main">
		<div class="header">
			<div class="header-inner">
				<div class="header-left"></div>
				<div class="header-middle"></div>
				<div class="header-right"></div>
			</div>
			<div class="column">
				<div class="welcome">
					<span class="gd-ico"></span> <span class="msg-text">张小三，您好：欢迎登录</span>
				</div>
				<div class="hot">
					<div class="hot-left"></div>
					<div id="demo">
						<div id="indemo">
							<div id="demo1">
								<a href="#">实时公告栏</a> <a href="#">由于天气原因...</a> <a href="#">高速环道由于...</a>
								<a href="#">实时公告栏</a> <a href="#">由于天气原因...</a> <a href="#">高速环道由于...</a>
							</div>
							<div id="demo2"></div>
						</div>
					</div>
					<div class="hot-right"></div>
				</div>
				<div class="msg">
					<div class="msg-inner">
						<span class="msg-text"><a href="javascript:void(0)"
							onclick="" class="easyui-linkbutton" iconCls="icon-edit"
							plain="true">修改密码</a></span>
					</div>
					<div class="msg-inner">
						<span class="msg-text"><a href="javascript:void(0)"
							onclick="" class="easyui-linkbutton" iconCls="icon-help"
							plain="true">帮&nbsp;&nbsp;&nbsp;&nbsp;助</a></span>
					</div>
					<div class="msg-inner">
						<span class="msg-text"><a href="javascript:void(0)"
							onclick="" class="easyui-linkbutton" iconCls="icon-undo"
							plain="true">注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</a></span>
					</div>
				</div>
			</div>
		</div>
		<div class="main-wrap">
			<div class="left">
				<div class="table-t">
					<div class="table-t-l"></div>
					<div class="table-t-m">
						<h1>菜单导航</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">
						<iframe src="menu.html" width=143 height=431 frameborder="no"></iframe>
					</div>
					<div class="table-m-r"></div>
				</div>
				<div class="table-b">
					<div class="table-b-l"></div>
					<div class="table-b-m"></div>
					<div class="table-b-r"></div>
				</div>
			</div>
			<div class="right">
				<div class="table-t">
					<div class="table-t-l"></div>
					<div class="table-t-m">
						<h1>业务数据 >> 信息公告</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">
						<div class="ywcx-content1">
							<form action="#" method="post">
								<table class="table-left" style="width: 100%">
									<tr>
										<td>信息公告名称：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
										<td>发布时间 从：</td>
										<td colspan="2"><input class="easyui-datebox" type="text"
											name="name" data-options="required:false" /></td>
										<td>到：</td>
										<td colspan="2"><input class="easyui-datebox" type="text"
											name="name" data-options="required:false" /></td>
									</tr>
									<tr>
										<td>发布人：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
										<td>发布类型：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="name" data-options="required:false">
												<option>请选择</option>
												<option>手工发布</option>
												<option>自动发布</option>
										</select></td>
									</tr>
									<tr>
										<td></td>
										<td colspan="2"></td>
										<td colspan="3"></td>
										<td colspan="3" align="center"><a
											href="javascript:void(0)" class="easyui-linkbutton"
											onclick="submitForm()">查 询</a> <a href="javascript:void(0)"
											class="easyui-linkbutton" onclick="clearForm()">清 空</a></td>
									</tr>
								</table>
							</form>

						</div>
						<div style="margin: 5px 0;"></div>
						<div>
							<table class="easyui-datagrid" title=""
								style="width: 799px; height: 330px; padding: 5px"
								data-options="collapsible:true,maximizable:true,singleSelect:true,url:'datagrid/applist.json',toolbar:'#tb',
															              pagination:true,pageSize:10">

								<thead>
									<tr>
										<th data-options="field:'No',width:100,align:'center'">公告编号</th>
										<th data-options="field:'name',width:250,align:'center'">公告名称</th>
										<th data-options="field:'pjno',width:90,align:'center'">发布时间</th>
										<th data-options="field:'subpjno',width:90,align:'center'">级别</th>
										<th data-options="field:'reason',width:90,align:'center'">发布人</th>
										<th data-options="field:'role',width:90,align:'center'">发布对象</th>
										<th data-options="field:'role',width:90,align:'center'">有效期</th>
										<th data-options="field:'role',width:90,align:'center'">发布类型</th>
									</tr>
								</thead>
							</table>
							<div id="tb" style="height: auto">
								<div>
									<a href="javascript:void(0)" onclick="$('#wa').window('open')"
										class="easyui-linkbutton" iconCls="icon-add" plain="true">新增</a>
									<a href="#" class="easyui-linkbutton" iconCls="icon-remove"
										plain="true">删除</a>
								</div>
							</div>
						</div>
					</div>
					<div class="table-m-r"></div>
				</div>
				<div class="table-b">
					<div class="table-b-l"></div>
					<div class="table-b-m"></div>
					<div class="table-b-r"></div>
				</div>
			</div>
		</div>
		<div class="footer">Copyright @ 1997-2013 Shanghai General
			Motors Co., Ltd. All Rights Reserved</div>
	</div>
	<!--新增申请的弹出页面开始-->
	<div class="ywcx-content2">
		<div id="wa" class="easyui-window" title="信息公告发布"
			data-options="modal:true,closed:true,iconCls:'icon-save'"
			style="width: 720px; height: 460px; padding: 10px 0 10px 0px">
			<table class="table-left" height=380 align="center">
				<tr>
					<td>公告名称：</td>
					<td colspan="8"><input class="easyui-validatebox" size=100
						type="text" name="name" data-options="required:true" /></td>
				<tr>
					<td>级别：</td>
					<td colspan="2"><select class="easyui-combobox" type="text"
						name="name" data-options="required:false" /></td>
					<td>发布对象：</td>
					<td colspan="2"><select class="easyui-combobox" type="text"
						name="name" data-options="required:true" /></td>
					<td>发布到大屏幕：</td>
					<td colspan="2"><select class="easyui-combobox" type="text"
						name="name" data-options="required:true" /></td>
				</tr>
				</tr>
				<td>有效期</td>
				<td colspan="2"><input class="easyui-text" type="text"
					name="name" data-options="required:true"></td>
				<td>有效期单位</td>
				<td colspan="2"><select class="easyui-combobox" type="text"
					name="name" data-options="required:true">
						<option>请选择</option>
						<option>分钟</option>
						<option>小时</option>
						<option>天</option>
				</select></td>
				<td>发布时间</td>
				<td colspan="2"><input class="easyui-datebox" type="text"
					name="name" data-options="required:true"></td>
				</tr>
				</tr>
				<td>发布人</td>
				<td colspan="2"><input class="easyui-text" type="text"
					name="name" data-options="required:false" disabled></td>
				</tr>
				<tr>
					<td>公告内容：</td>
					<td colspan="8"><textarea name="message"
							style="height: 250px; width: 99%; text-align: left"></textarea></td>
				</tr>

			</table>
			<div style="margin: 5px 0;"></div>
			<div align='center'">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					onclick="submitForm()">保 存</a> <a href="javascript:void(0)"
					class="easyui-linkbutton" onclick="submitForm()">提 交</a> <a
					href="javascript:void(0)" class="easyui-linkbutton"
					onclick="clearForm()">关 闭</a>
			</div>
		</div>
	</div>

	<!--新增申请页面结束-->
	<script type="text/javascript">
	$(function(){
		headscroll();
	});
	</script>
</body>
</html>
