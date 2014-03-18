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
<script type="text/javascript">
	var oilDatagrid;
	var oilForm;
	var oilWindow;
	var url;
	$(function() {
		headscroll();
		oilForm = $('#oilForm').form();
		oilWindow = $('#oilWindow').window({
			modal : true,
			closed : true,
			iconCls : 'icon-save'
		});
		oilDatagrid = $('#oilDatagrid').datagrid({
			url : 'oilprices/datagrid',
			toolbar : '#toolbar',
			title : '油品价格列表',
			iconCls : 'icon-save',
			pagination : true,
			pageSize : 10,
			pageList : [ 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 ],
			collapsible : true,
			maximizable : true,
			singleSelect : true,
			remoteSort:false,
			sortName:'oiltypeId',
			columns : [ [ {
				field : 'oiltypeId',
				title : '油品类别',
				width : 90
				
			}, {
				field : 'oilprice',
				title : '油品价格',
				width : 90
			},{
				field : 'cutday',
				title : '切换日期',
				width : 170,
				formatter : function(value, row, index) {
					return value.substring(0, 11);
				}
			}, {
				field : 'cuttime',
				title : '切换时间',
				width : 150,
				formatter : function(value, row, index) {
					return value.substring(11);
				}

			}, {
				field : 'updaterpeopleId',
				title : '维护人员',
				width : 90
			}, {
				field : 'updatetime',
				title : '维护时间',
				width : 170
			} ] ],
			onRowContextMenu : function(e, rowIndex, rowData) {
				e.preventDefault();
				$(this).datagrid('unselectAll');
				$(this).datagrid('selectRow', rowIndex);
				$('#menu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			}
		});

	});

	
	function newInfo() {
		oilWindow.dialog('open').dialog('setTitle', '新增油品价格');
		oilForm.form('clear');
		url = '${pageContext.request.contextPath}/oilprices/saveOilprices';
	}

	function editInfo() {
		var row = oilDatagrid.datagrid('getSelected');
		if (row) {
			oilWindow.dialog('open').dialog('setTitle', '修改油品价格信息');
			oilForm.form('load', row);
			url = '${pageContext.request.contextPath}/oilprices/updateOilprices?oilId='
					+ row.oilId;
		} else {
			$.messager.alert('提示', '请选择需要修改的行!', 'info');
		}
	}

	//save
	function saveInfo() {
		oilForm.form('submit', {
			url : url,
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				
					oilWindow.dialog('close'); // close the dialog
					oilDatagrid.datagrid('reload'); // reload the user data
					$('#oiltypeId').combobox('reload');
				
			}
		});
	}

	//删除
	function remove() {
		var row = oilDatagrid.datagrid('getSelected');
		if (row) {
		 $.messager.confirm('Confirm','是否删除该项?',function(r) {
			if (r) {
			$.post('${pageContext.request.contextPath}/oilprices/delOilprices',{id : row.oilId	},
			function(result) {
			if (result.success) {
			oilDatagrid.datagrid('reload'); // reload the user data
			$('#oiltypeId').combobox('reload');
			} 
			else {
			$.messager.show({ // show error message
			title : 'Error',
			msg : result.msg
			});
			}
			}, 
			'json'
			);
			}
			});
		} else {
			$.messager.alert('提示', '请选择需要删除的行!', 'info');
		}
	}

	//油品种类combobox
	$(function() {
		$('#oiltypeId').combobox({
			url : '${pageContext.request.contextPath}/oilprices/combobox',
			valueField : 'oiltypeId',
			textField : 'oiltypeId',
			panelHeight : 'auto',
			filter : function(q, row) {
				var opts = $(this).combobox("options");
				return row[opts.textField].indexOf(q) > -1;
			}
		});
	});

	function clearSelectForm() {
		$('#selectForm').form('clear');
	}

	function SearchData() {
		var combo = $('#oiltypeId').combobox('getValue');
		var begintime = $('#begincuttime').datebox('getValue');
		var endtime = $('#endcuttime').datebox('getValue');
		//	alert("开始时间为:"+update);
		oilDatagrid.datagrid('load', {
			oiltypeId : combo,
			begincuttime : begintime,
			endcuttime : endtime,
		});
	}
</script>



<title>油品价格---上海通用汽车/泛亚技术中心研发试验中心</title>
</head>
<body onload="initMenu('mBusinessdata');">
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
						<h1>业务数据 >> 油品价格维护</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">

						<div class="ywcx-content1">
							<form action="#" method="post" id="selectForm">
								<table class="table-left" style="width: 100%">
									<tr>
										<td>油品类别：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="oiltypeId" data-options="required:false"
											id="oiltypeId"></select></td>
										<td>变更时间 从：</td>
										<td colspan="2"><input class="easyui-datebox" type="text"
											name="begincuttime" data-options="required:false"
											id="begincuttime" /></td>
										<td>到：</td>
										<td colspan="2"><input class="easyui-datebox" type="text"
											name="endcuttime" id="endcuttime"
											data-options="required:false" /></td>
									</tr>
									<tr>
										<td></td>
										<td colspan="2"></td>
										<td colspan="3"></td>
										<td colspan="3" align="center"><a
											href="javascript:void(0)" class="easyui-linkbutton"
											onclick="SearchData()">查 询</a> <a href="javascript:void(0)"
											class="easyui-linkbutton" onclick="clearSelectForm()">清 空</a>
										</td>
									</tr>
								</table>
							</form>
						</div>

						<div style="margin: 5px 0;"></div>

						<div id="toolbar" style="height: auto">
							<div>
								<a href="javascript:newInfo()" class="easyui-linkbutton"
									iconCls="icon-add" plain="true">新增</a> <a
									href="javascript:editInfo()" class="easyui-linkbutton"
									iconCls="icon-edit" plain="true">修改</a> <a
									href="javascript:remove()" class="easyui-linkbutton"
									iconCls="icon-remove" plain="true">删除</a>
							</div>
						</div>

						<div>
							<table id="oilDatagrid"
								style="width: 799px; height: 330px; padding: 5px"></table>
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

	<!--新增或修改油品价格的弹出窗口页面开始-->
	<div class="ywcx-content2">
		<div id="oilWindow" class="easyui-window" title="油品价格维护"
			style="width: 330px; height: 270px; padding: 10px 0 10px 0px">

			<form id="oilForm" method="post">
				<table class="table-left" height=150 align="center">
					<tr>
						<td>油品类型：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="oiltypeId" data-options="required:true" /></td>
					</tr>
					<tr>
						<td>油品价格：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="oilprice" data-options="required:true" /></td>
					</tr>
					<tr>
						<td>切换时间：</td>
						<td colspan="2"><input class="easyui-datetimebox" type="text"
							name="cuttime" data-options="required:true"
							id="cutdaystring" /></td>
					</tr>
				
				</table>
			</form>

			<div style="margin: 5px 0;"></div>

			<div align='center'>
				<a href="javascript:void(0)" class="easyui-linkbutton"
					onclick="saveInfo()">提 交</a> <a href="javascript:void(0)"
					class="easyui-linkbutton"
					onclick="javascript:$('#oilWindow').dialog('close')">关 闭</a>
			</div>

		</div>
	</div>
	<!--页面结束-->

	<!-- menu -->
	<div id="menu" class="easyui-menu" style="width: 120px; display: none;">
		<div onclick="append();" iconCls="icon-add">增加</div>
		<div onclick="remove();" iconCls="icon-remove">删除</div>
		<div onclick="edit();" iconCls="icon-edit">编辑</div>
	</div>

</body>
</html>


