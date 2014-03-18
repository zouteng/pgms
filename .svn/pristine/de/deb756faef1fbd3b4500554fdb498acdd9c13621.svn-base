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
<title>客户企业信息维护---上海通用汽车/泛亚技术中心研发试验中心</title>
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
					<span class="gd-ico"></span> <span class="msg-text">${user.loginName}，您好：欢迎登录</span>
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
						<h1>系统管理 >> 权限action管理</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">
						<div class="ywcx-content1">
							<!-- <form action="#" method="post" id="selectForm">
								<table class="table-left" style="width: 100%">
									<tr>
										<td>用户名称：<input class="easyui-text" size=20
											id="enterpriseName" name="enterpriseName"
											data-options="required:false" /></td>
										<td>角色：<input class="easyui-combobox" id="enterpriseCode"
											name="enterpriseCode" data-options="required:false" /></td>
										<td></td>
										<td colspan="2" align="center"><a
											href="javascript:void(0)" class="easyui-linkbutton"
											onclick="SearchData()">查 询</a> <a href="javascript:void(0)"
											class="easyui-linkbutton" onclick="clearSelectForm()">清 空</a></td>
									</tr>
								</table>
							</form> -->
						</div>
						<div style="margin: 5px 0;"></div>
						<div>
							<table id="dg" class="easyui-datagrid" title="action列表"
								style="width: 799px; height: 430px; padding: 5px"
								data-options="iconCls: 'icon-ok', collapsible:true,maximizable:true,singleSelect:true,url:'${pageContext.request.contextPath}/actionPermission/datagrid',toolbar:'#tb',
															   rownumbers:true , pagination:true,pageSize:10">

								<thead>
									<tr>
										<th data-options="field:'ck',checkbox:true"></th>
										<th data-options="field:'name',width:180">Action名称</th>
										<th data-options="field:'controllerName',width:190">控制器名称</th>
										<th data-options="field:'description',width:210">描述</th>
										<th
											data-options="field:'createtime',width:210,align:'center',formatter:function(value,row,index){
                                                 var unixTimestamp = new Date(value);
                                                 return unixTimestamp.toLocaleString().replace(/年|月/g, '-').replace(/日/g, ' ');}">创建时间</th>
									</tr>
								</thead>
							</table>
							<div id="tb" style="height: auto">
								<div>
									<a href="#" class="easyui-linkbutton" iconCls="icon-add"
										plain="true" onclick="newInfo()">新增</a> <a href="#"
										class="easyui-linkbutton" iconCls="icon-edit" plain="true"
										onclick="editInfo()">修改</a> <a href="javascript:remove()"
										class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
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
		<div id="wa" class="easyui-window" title="新增Action"
			data-options="modal:true,closed:true,iconCls:'icon-save'"
			style="width: 480px; height: 250px; padding: 10px 0 10px 0px">
			<form id="fm" method="post" novalidate>
				<table class="table-left" height=130 align="center">
					<tr>
						<td>Action名称：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="name" data-options="required:true" /></td>
					</tr>
					<tr>
						<td>控制器名称：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="controllerName" data-options="required:true" /></td>
					</tr>
					<tr>
						<td>描述：</td>
						<td colspan="5"><textarea rows="3" cols="53"
								class="easyui-text" name="description"></textarea></td>
					</tr>
				</table>
			</form>
			<div style="margin: 5px 0;"></div>
			<div align='center'">
				<a href="javascript:clearForm()" class="easyui-linkbutton">重置</a> <a
					href="javascript:saveInfo()" class="easyui-linkbutton">提 交</a> <a
					href="javascript:void(0)" class="easyui-linkbutton"
					onclick="javascript:$('#wa').dialog('close')">关 闭</a>

			</div>
		</div>
	</div>
	<!--新增申请页面结束-->


	<script type="text/javascript">
	$(function(){
		headscroll();
	});
	
		var url;
		function newInfo() {
			$('#wa').dialog('open').dialog('setTitle', '新增Action');
			$('#fm').form('clear');
			url = '${pageContext.request.contextPath}/actionPermission/saveAction';
		}

		function editInfo() {
			var row = $('#dg').datagrid('getSelected');
			if (row) {
				$('#wa').dialog('open').dialog('setTitle', '修改Action信息');
				$('#fm').form('load', row);
				url = '${pageContext.request.contextPath}/actionPermission/updateAction?actionPermissionId='
						+ row.actionPermissionId;
			}
			else{
				$.messager.alert('提示','请选择需要修改的action!','info');
			}
		}

		//save新增
		function saveInfo() {
			$('#fm').form('submit', {
				url : url,
				onSubmit : function() {
					return $(this).form('validate');
				},
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.success) {
						$('#wa').dialog('close'); // close the dialog
						$('#dg').datagrid('reload'); // reload the user data
					} else {
						$.messager.show({
							title : 'Error',
							msg : result.msg
						});
					}
				}
			});
		}
		//清空
		function clearSelectForm() {
			$('#selectForm').form('clear');
		}
		function clearForm() {
			//	$('#fm').find(':input').val('');
			$('#fm').form('clear');
		}
		//删除
		function remove() {
			var row = $('#dg').datagrid('getSelected');
			if (row) {
				$.messager
						.confirm(
								'Confirm',
								'Are you sure you want to remove this Action?',
								function(r) {
									if (r) {
										$
												.post(
														'${pageContext.request.contextPath}/actionPermission/delAction',
														{
															id : row.actionPermissionId
														},
														function(result) {

															if (result.success) {
																$('#dg')
																		.datagrid(
																				'reload'); // reload the user data
															} else {
																$.messager
																		.show({ // show error message
																			title : 'Error',
																			msg : result.msg
																		});
															}
														}, 'json');
									}
								});
			}
			else{
				$.messager.alert('提示','请选择需要删除的action!','info');
			}
		}

		//企业代码，combobox函数
		$(function() {
			$('#enterpriseCode').combobox({
				url : '${pageContext.request.contextPath}/khqy/combobox',
				valueField : 'enterprisesId',
				textField : 'enterprisesId',
				filter : function(q, row) {
					var opts = $(this).combobox("options");
					return row[opts.textField].indexOf(q) > -1;
				}
			});
		});

		function SearchData() {
			var combo1 = $('#enterpriseCode').combobox('getValue');

			$('#dg').datagrid('load', {
				enterprisesId : combo1,
				chinesename : $('#enterpriseName').val(),
			});
		}

		//分页控件，设为中文
		$(function() {
			var p = $('#dg').datagrid('getPager');
			$(p).pagination({
				pageSize : 10,//每页显示的记录条数，默认为10  
				pageList : [ 5, 10, 15 ],//可以设置每页记录条数的列表  
				beforePageText : '第',//页数文本框前显示的汉字  
				afterPageText : '页    共 {pages} 页',
				displayMsg : '当前显示 {from} - {to} 条记录   共 {total} 条记录',
			});
		});
	</script>
</body>
</html>
