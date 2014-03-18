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
<title>安全记录---上海通用汽车/泛亚技术中心研发试验中心</title>
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
						<h1>道路管理 >> 安全事故</h1>
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
										<td>记录编号：</td>
										<td colspan="2"><input class="easyui-validatebox"
											type="text" name="name" data-options="required:false" /></td>
										<td>事故等级：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
										<td>事故单位：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
									</tr>
									<tr>
										<td>发生时间从</td>
										<td colspan="2"><input class="easyui-datebox" type="text"
											name="name" data-options="required:false" /></td>
										<td>到</td>
										<td colspan="2"><input class="easyui-datebox" type="text"
											name="name" data-options="required:false" /><span
											class="databox"></span></td>
										<td>状态：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
									</tr>
									<tr>
										<td>事故人员：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
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
										<th data-options="field:'No',width:56,align:'center'">记录编号</th>
										<th data-options="field:'name',width:125,align:'center'">事故等级</th>
										<th data-options="field:'pjno',width:90,align:'center'">发生时间</th>
										<th data-options="field:'subpjno',width:90,align:'center'">发生地点</th>
										<th data-options="field:'reason',width:128,align:'center'">事故原因</th>
										<th data-options="field:'role',width:130,align:'center'">发生人</th>
										<th data-options="field:'applier',width:56,align:'center'">事故单位</th>
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
		<div id="wa" class="easyui-window" title="创建业务申请"
			data-options="modal:true,closed:true,iconCls:'icon-save'"
			style="width: 680px; height: 350px; padding: 10px 0 10px 0px">
			<div class="easyui-tabs"
				style="width: 650; height: 300px; padding: '0px 10px 0px 10px'">
				<div title="记录信息">
					<table class="table-left">
						<tr>
							<td>记录编号：</td>
							<td colspan="2"><input class="easyui-combobox" type="text"
								name="name" data-options="required:true" /></td>
							<td>事故等级：</td>
							<td colspan="2"><input class="easyui-text" type="text"
								name="name" disabled /></td>
							<td>发生时间：</td>
							<td colspan="2"><input class="easyui-text" type="text"
								name="name" disabled /></td>
						</tr>
						<tr>
							<td>发生地点：</td>
							<td colspan="2"><input class="easyui-combobox" type="text"
								name="name" data-options="required:true" /></td>
							<td>发生人：</td>
							<td colspan="2"><input class="easyui-text" type="text"
								name="name" disabled /></td>
							<td>事故单位：</td>
							<td colspan="3"><input class="easyui-text" type="text"
								name="name" disabled /></td>
						</tr>
						<tr>
							<td>事故原因：</td>
							<td colspan="8"><textarea name="message"
									style="height: 150px; width: 99%; text-align: left"></textarea></td>
						</tr>
						<tr>
							<td>附件上传：</td>
							<td colspan="2"></td>


						</tr>
					</table>

					<div style="margin: 5px 0;"></div>
					<div align='center'">
						<a href="javascript:void(0)" class="easyui-linkbutton"
							onclick="submitForm()">提 交</a> <a href="javascript:void(0)"
							class="easyui-linkbutton" onclick="clearForm()">关 闭</a>
					</div>
				</div>
				<div title="操作记录">
					<table id="dg" class="easyui-datagrid" title=""
						style="width: auto; height: auto; padding: '0px 10px 0px 10px'"
						data-options="url:'datagrid/road.json',
									              rownumbers: 'false',
									              singleSelect:true
									              ">
						<thead>
							<tr>
								<th data-options="field:'isuse',width:50">操作类型</th>
								<th data-options="field:'name',width:110">操作时间</th>
								<th data-options="field:'begin',width:100">操作人</th>
								<th data-options="field:'end',width:100">操作说明</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var editIndex1 = undefined;
		function endEditing1() {
			if (editIndex1 == undefined) {
				return true
			}
			if ($('#dg').datagrid('validateRow', editIndex1)) {
				var ed = $('#dg').datagrid('getEditor', {
					index : editIndex1,
					field : 'begin'
				});
				var productname = $(ed.target).combobox('getText');
				$('#dg').datagrid('getRows')[editIndex1]['begin'] = productname;
				$('#dg').datagrid('endEdit', editIndex1);
				editIndex1 = undefined;
				return true;
			} else {
				return false;
			}
		}
		function onClickRow1(index) {

			if (editIndex1 != index) {
				if (endEditing1()) {
					$('#dg').datagrid('selectRow', index).datagrid('beginEdit',
							index);
					editIndex1 = index;
				} else {
					$('#dg').datagrid('selectRow', editIndex1);
				}
			}

		}
		var editIndex2 = undefined;
		function endEditing2() {
			if (editIndex2 == undefined) {
				return true
			}
			if ($('#viecle').datagrid('validateRow', editIndex2)) {
				var ed = $('#viecle').datagrid('getEditor', {
					index : editIndex2,
					field : 'begin'
				});
				var productname = $(ed.target).combobox('getText');
				$('#viecle').datagrid('getRows')[editIndex2]['begin'] = productname;
				$('#viecle').datagrid('endEdit', editIndex2);
				editIndex2 = undefined;
				return true;
			} else {
				return false;
			}
		}
		function onClickRow2(index) {

			if (editIndex2 != index) {
				if (endEditing2()) {
					$('#viecle').datagrid('selectRow', index).datagrid(
							'beginEdit', index);
					editIndex2 = index;
				} else {
					$('#viecle').datagrid('selectRow', editIndex2);
				}
			}

		}
		function append() {
			if (endEditing2()) {
				$('#viecle').datagrid('appendRow', {
					status : 'P'
				});
				editIndex2 = $('#viecle').datagrid('getRows').length - 1;
				$('#viecle').datagrid('selectRow', editIndex2).datagrid(
						'beginEdit', editIndex2);
			}
		}
		function remove() {
			if (editIndex2 == undefined) {
				return
			}
			$('#viecle').datagrid('cancelEdit', editIndex2).datagrid(
					'deleteRow', editIndex2);
			editIndex2 = undefined;
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
	</script>
	<!--新增申请页面结束-->
	<script type="text/javascript">
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

