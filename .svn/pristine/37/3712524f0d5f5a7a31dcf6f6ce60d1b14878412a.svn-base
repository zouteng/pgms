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
<title>车辆查询---上海通用汽车/泛亚技术中心研发试验中心</title>
</head>
<body>
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
						<h1>车辆管理 >> 车辆查询</h1>
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
										<td>客户企业：</td>
										<td colspan="2"><input class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
										<td>试验项目编号：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
										<td>客户项目编号：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
									</tr>
									<tr>
										<td>车架号：</td>
										<td colspan="2"><input class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
										<td>车辆编号：</td>
										<td colspan="2"><input class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
										<td>申请单号：</td>
										<td colspan="2"><input class="easyui-text" type="text"
											name="name" data-options="required:false" /></td>
									</tr>
									<tr>
										<td>车贴号：</td>
										<td colspan="2"><input class="easyui-text" type="text"
											name="name" data-options="required:false" /></td>
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
										<th data-options="field:'ck',checkbox:true"></th>
										<th data-options="field:'name',width:125,align:'center'">所属企业</th>
										<th data-options="field:'No',width:80,align:'center'">车架号</th>
										<th data-options="field:'pjno',width:80,align:'center'">车辆编号</th>
										<th data-options="field:'status',width:60,align:'center'">车辆状态</th>
										<th data-options="field:'subpjno',width:60,align:'center'">申请单号</th>
										<th data-options="field:'subpjno',width:60,align:'center'">试验项目号</th>
										<th data-options="field:'subpjno',width:60,align:'center'">客户项目号</th>
										<th data-options="field:'subpjno',width:60,align:'center'">车贴号</th>
										<th data-options="field:'role',width:130,align:'center'">试验规范</th>
										<th data-options="field:'date',width:56,align:'center'">开始时间</th>
										<th data-options="field:'date',width:56,align:'center'">结束时间</th>
									</tr>
								</thead>
							</table>
							<div id="tb" style="height: auto">
								<div>
									<a href="javascript:void(0)" onclick="$('#wa').window('open')"
										class="easyui-linkbutton" iconCls="icon-add" plain="true">查看</a>
								</div>
							</div>
							<div class="ywcx-content2">
								<div id="wa" class="easyui-window" title="车辆查询"
									data-options="modal:true,closed:true,iconCls:'icon-save'"
									style="width: 850px; height: 550px; padding: 10px 0 10px 0px;">
									<div style="margin: 5px 0;"></div>
									<table class="table-left">
										<tr>
											<td>客户企业：</td>
											<td colspan="2"><input class="easyui-text" type="text"
												name="name" disabled /></td>
											<td>车辆编号：</td>
											<td colspan="2"><input class="easyui-text" type="text"
												name="name" disabled /></td>
											<td>车架号：</td>
											<td colspan="2"><input class="easyui-text" type="text"
												name="name" disabled /></td>
										</tr>
										<tr>
											<td>车型编号：</td>
											<td colspan="2"><input class="easyui-text" type="text"
												name="name" disabled /></td>
											<td>所属部门：</td>
											<td colspan="3"><input class="easyui-text" type="text"
												name="name" disabled /></td>
										</tr>
									</table>
									<div style="margin: 10px 0;"></div>
									<div class="easyui-tabs"
										style="width: 'auto', height:'auto', margin-left:'10px'">
										<div title="设备信息">
											<div style="margin: 5px 0;"></div>
											<table class="easyui-datagrid" title=""
												style="width: auto; height: 400px; padding: 5px"
												data-options="collapsible:true,maximizable:true,singleSelect:true,url:'datagrid/applist.json',
															              pagination:true,pageSize:10">
												<thead>
													<tr>
														<th data-options="field:'name',width:110,align:'center'">申请单号</th>
														<th data-options="field:'pjno',width:100,align:'center'">车贴号</th>
														<th data-options="field:'status',width:100,align:'center'">设备状态</th>
														<th data-options="field:'pjno',width:100,align:'center'">领取时间</th>
														<th data-options="field:'pjno',width:100,align:'center'">归还时间</th>
														<th data-options="field:'pjno',width:100,align:'center'">门禁卡号</th>
														<th data-options="field:'pjno',width:100,align:'center'">GPS设备号</th>
														<th data-options="field:'status',width:100,align:'center'">对讲机编号</th>
													</tr>
												</thead>
											</table>
										</div>
										<div title="申请信息">
											<div style="margin: 5px 0;"></div>
											<table class="easyui-datagrid" title=""
												style="width: auto; height: 400px; padding: 5px"
												data-options="collapsible:true,maximizable:true,singleSelect:true,url:'datagrid/applist.json',toolbar:'#tb2',
															              pagination:true,pageSize:10">
												<thead>
													<tr>
														<th data-options="field:'ck',checkbox:true"></th>
														<th data-options="field:'name',width:110,align:'center'">申请单号</th>
														<th data-options="field:'status',width:100,align:'center'">申请状态</th>
														<th data-options="field:'date',width:100,align:'center'">开始时间</th>
														<th data-options="field:'date',width:100,align:'center'">结束时间</th>
														<th data-options="field:'pjno',width:100,align:'center'">试验规范</th>
														<th data-options="field:'pjno',width:100,align:'center'">试验项目号</th>
														<th data-options="field:'pjno',width:100,align:'center'">客户项目号</th>
														<th data-options="field:'pjno',width:100,align:'center'">申请人</th>
														<th data-options="field:'status',width:100,align:'center'">车辆状态</th>
													</tr>
												</thead>
											</table>
											<div id="tb2" style="height: auto">
												<div>
													<a href="javascript:void(0)"
														onclick="$('#wa1').window('open')"
														class="easyui-linkbutton" iconCls="icon-add" plain="true">查看</a>
												</div>
											</div>
										</div>
										<div title="试验信息">
											<div style="margin: 5px 0;"></div>
											<table class="easyui-datagrid" title=""
												style="width: auto; height: 400px; padding: 5px"
												data-options="collapsible:true,maximizable:true,singleSelect:true,url:'datagrid/applist.json',
															              pagination:true,pageSize:10">
												<thead>
													<tr>
														<th data-options="field:'pjno',width:110,align:'center'">申请单号</th>
														<th data-options="field:'pjno',width:110,align:'center'">车贴号</th>
														<th data-options="field:'status',width:110,align:'center'">试验道路</th>
														<th data-options="field:'pjno',width:110,align:'center'">进入时间</th>
														<th data-options="field:'pjno',width:110,align:'center'">离开时间</th>
														<th data-options="field:'pjno',width:110,align:'center'">时长</th>
														<th data-options="field:'pjno',width:110,align:'center'">里程数</th>
													</tr>
												</thead>
											</table>
										</div>
										<div title="加油信息">
											<div style="margin: 5px 0;"></div>
											<table class="easyui-datagrid" title=""
												style="width: auto; height: 400px; padding: 5px"
												data-options="collapsible:true,maximizable:true,singleSelect:true,url:'datagrid/applist.json',
															              pagination:true,pageSize:10">
												<thead>
													<tr>
														<th data-options="field:'pjno',width:110,align:'center'">试验项目号</th>
														<th data-options="field:'pjno',width:110,align:'center'">客户项目号</th>
														<th data-options="field:'pjno',width:110,align:'center'">车贴号</th>
														<th data-options="field:'pjno',width:110,align:'center'">加油卡号</th>
														<th data-options="field:'pjno',width:110,align:'center'">加油时间</th>
														<th data-options="field:'pjno',width:110,align:'center'">油品类别</th>
														<th data-options="field:'pjno',width:110,align:'center'">单价</th>
														<th data-options="field:'pjno',width:110,align:'center'">费用</th>
													</tr>
												</thead>
											</table>
										</div>

									</div>
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
	<script type="text/javascript">
		var editIndex = undefined;
		function endEditing() {
			if (editIndex == undefined) {
				return true
			}
			if ($('#dg').datagrid('validateRow', editIndex)) {
				var ed = $('#dg').datagrid('getEditor', {
					index : editIndex,
					field : 'productid'
				});
				var productname = $(ed.target).combobox('getText');
				$('#dg').datagrid('getRows')[editIndex]['productname'] = productname;
				$('#dg').datagrid('endEdit', editIndex);
				editIndex = undefined;
				return true;
			} else {
				return false;
			}
		}
		function onClickRow(index) {
			if (editIndex != index) {
				if (endEditing()) {
					$('#dg').datagrid('selectRow', index).datagrid('beginEdit',
							index);
					editIndex = index;
				} else {
					$('#dg').datagrid('selectRow', editIndex);
				}
			}
		}
		function append() {
			if (endEditing()) {
				$('#dg').datagrid('appendRow', {
					status : 'P'
				});
				editIndex = $('#dg').datagrid('getRows').length - 1;
				$('#dg').datagrid('selectRow', editIndex).datagrid('beginEdit',
						editIndex);
			}
		}
		function remove() {
			if (editIndex == undefined) {
				return
			}
			$('#dg').datagrid('cancelEdit', editIndex).datagrid('deleteRow',
					editIndex);
			editIndex = undefined;
		}
		function accept() {
			if (endEditing()) {
				$('#dg').datagrid('acceptChanges');
			}
		}
		function reject() {
			$('#dg').datagrid('rejectChanges');
			editIndex = undefined;
		}
		function getChanges() {
			var rows = $('#dg').datagrid('getChanges');
			alert(rows.length + ' rows are changed!');
		}
		var speed = 20;
		var tab = document.getElementById("demo");
		var tab1 = document.getElementById("demo1");
		var tab2 = document.getElementById("demo2");
		tab2.innerHTML = tab1.innerHTML;
		function Marquee() {
			if (tab2.offsetWidth - tab.scrollLeft <= 0)
				tab.scrollLeft -= tab1.offsetWidth
			else {
				tab.scrollLeft++;
			}
		}
		var MyMar = setInterval(Marquee, speed);
		tab.onmouseover = function() {
			clearInterval(MyMar)
		};
		tab.onmouseout = function() {
			MyMar = setInterval(Marquee, speed)
		};

		$(document).ready(function() {
			var root = $("#menu").children("ul").children("li");

			root.children("a").click(function() {

				root.children("ul").slideUp();
				root.children("a").children("span").attr("class", "shousuo");
				var children = $(this).next("ul");
				var span = $(this).children("span");

				if (children.is(":hidden")) {
					children.slideDown();
					span.attr("class", "zhankai");
				}
			});
		});
	</script>
</body>
</html>
