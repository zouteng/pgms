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
<title>项目维护---上海通用汽车/泛亚技术中心研发试验中心</title>
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
						<h1>业务数据 >> 项目维护</h1>
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
										<td>试验项目号：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="projectId" data-options="required:false" id="projectId"/></td>
										<td>客户企业：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="ownedenterprisesId" data-options="required:false" id="ownedenterprisesId" /></td>
										<td>项目状态：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="statusId" data-options="required:false" id="statusId">
												<option value="">请选择</option>
												<option>草稿</option>
												<option>待维护</option>
												<option>执行中</option>
												<option>中止</option>
												<option>关闭</option>
										</select></td>
									</tr>
									<tr>
										<td>项目负责人</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="manageName" data-options="required:false" id="manageName" /></td>
										<td>是否SAP项目</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="issap" data-options="required:false" id="issap">
												<option value="">请选择</option>
												<option>是</option>
												<option>否</option>
										</select></td>
										<td>项目类型</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="typeId" data-options="required:false" id="typeId"
											style="height: 'auto'">
												<option value="">请选择</option>
												<option>SGM项目</option>
												<option>泛亚外部项目</option>
												<option>关联方外部项目</option>
												<option>其它外部项目</option>
										</select></td>
									</tr>
									<tr>
										<td>合同类型：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="agreementtypeId" data-options="required:false" id="agreementtypeId">
												<option value="">请选择</option>
												<option>闭口合同</option>
												<option>有上限的开口合同</option>
												<option>无上限的开口合同</option>
										</select></td>
										<td colspan="3"></td>
										<td colspan="3" align="center"><a
											href="javascript:void(0)" class="easyui-linkbutton"
											onclick="SearchData()">查 询</a> <a href="javascript:void(0)"
											class="easyui-linkbutton" onclick="clearSelectForm()">清 空</a></td>
									</tr>
								</table>
							</form>

						</div>
						<div style="margin: 5px 0;"></div>
						<div>
							<table id="dg" class="easyui-datagrid" title=""
								style="width: 799px; height: 330px; padding: 5px"
								data-options="collapsible:true,maximizable:true,singleSelect:true,url:'${pageContext.request.contextPath}/projectManage/datagrid',toolbar:'#tb',
															              pagination:true,pageSize:10">

								<thead>
									<tr>
										<th data-options="field:'projectId',width:75,align:'center'">试验项目编号</th>
										<th
											data-options="field:'ownedenterprisesId',width:70,align:'center'">客户企业</th>
										<th data-options="field:'statusId',width:80,align:'center'">项目状态</th>
										<th data-options="field:'manageName',width:90,align:'center'">项目负责人</th>
										<th data-options="field:'number',width:65,align:'center'">是否SAP项目</th>
										<th data-options="field:'typeId',width:60,align:'center'">项目类型</th>
										<th
											data-options="field:'agreementtypeId',width:60,align:'center'">合同类型</th>
										<th
											data-options="field:'starttime',width:140,align:'center',formatter:function(value,row,index){
											return value.substring(0,11);
											}">开始时间</th>
										<th
											data-options="field:'endtime',width:140,align:'center',formatter:function(value,row,index){
											return value.substring(0,11);
											}">结束时间</th>
									</tr>
								</thead>
							</table>
							<div id="tb" style="height: auto">
								<div>
										<a href="javascript:newInfo()" class="easyui-linkbutton"
										iconCls="icon-add" plain="true">新增</a> <a
										href="javascript:editInfo()" class="easyui-linkbutton"
										iconCls="icon-edit" plain="true">修改</a> <a
										href="javascript:remove()" class="easyui-linkbutton"
										iconCls="icon-remove" plain="true">删除</a>
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
		<div id="wa" class="easyui-window" title="试验项目信息"
			data-options="modal:true,closed:true,iconCls:'icon-save'"
			style="width: 730px; height: 530px; padding: 10px 0 10px 0px">
		<form action="" method="post" id="fm">
			<table class="table-left">
				<tr>
					<td>客户企业：</td>
					<td colspan="2"><select class="easyui-combobox" type="text"
						name="ownedenterprisesId" data-options="required:true"></select></td>
					<td>试验项目号：</td>
					<td colspan="2"><input class="easyui-validatebox" type="text"
						name="projectId" data-options="required:true" id="pid"/></td>
					<td>项目状态：</td>
					<td colspan="2"><select class="easyui-combobox" type="text"
						name="statusId" data-options="required:true">
							<option>草稿</option>
							<option>待维护</option>
							<option>执行中</option>
							<option>中止</option>
							<option>关闭</option>
					</select></td>
				</tr>
				<tr>
					<td>项目类型：</td>
					<td colspan="2"><select class="easyui-combobox" type="text"
						name="typeId" data-options="required:true"></select></td>
					<td>合同类型：</td>
					<td colspan="2"><select class="easyui-combobox"
											type="text" name="agreementtypeId" data-options="required:false">
												<option value="">请选择</option>
												<option>闭口合同</option>
												<option>有上限的开口合同</option>
												<option>无上限的开口合同</option>
										</select></td>
					<td>项目来源：</td>
					<td colspan="2"><input class="easyui-text" type="text"
						name="name" disabled /></td>
				</tr>
				<tr>
					<td>项目负责人：</td>
					<td colspan="2">
					<input class="easyui-text" type="text"
						name="manageName" />
					</td>
					<td>联系电话：</td>
					<td colspan="2"><input class="easyui-text" name="coordinatorTel" /></td>
					<td>电子邮件：</td>
					<td colspan="2"><input class="easyui-text" name="coordinatorMail" /></td>
				</tr>
				<tr>
					<td>项目说明：</td>
					<td colspan="8"><textarea name="message"
							style="height: 90px; width: 99%; text-align: left" disabled></textarea></td>
				</tr>
				<tr>
					<td>项目开始日期</td>
					<td colspan="2"><input class="easyui-datetimebox" name="starttime"
						data-options="required:true" /></td>
					<td>计划关闭日期</td>
					<td colspan="2"><input class="easyui-datetimebox" name="endtime"/></td>
					<td>实际关闭日期</td>
					<td colspan="2"><input class="easyui-datetimebox" name="language"
						disabled /></td>
				</tr>
			</table>
			</form>
			<div style="margin: 5px 0;"></div>
			<div align='center'">
				<!-- <a href="javascript:void(0)" class="easyui-linkbutton"
					onclick="submitForm()">保 存</a> <a href="javascript:void(0)"
					class="easyui-linkbutton" onclick="submitForm()">提 交</a> <a
					href="javascript:void(0)" class="easyui-linkbutton"
					onclick="clearForm()">中 止</a> <a href="javascript:void(0)"
					class="easyui-linkbutton" onclick="clearForm()">恢 复</a> -->
					<a href="javascript:void(0)" class="easyui-linkbutton"
							onclick="saveInfo()">提 交</a>
						<a href="javascript:void(0)" class="easyui-linkbutton"
							onclick="javascript:$('#wa').dialog('close')">关 闭</a>
			</div>
			<div style="margin: 5px 0;"></div>
			<div class="easyui-tabs"
				style="height: 300px, width:auto, padding:5px">
				<div title="项目预算">
					<div style="margin: 5px 0;"></div>
					<table id="dg" class="easyui-datagrid" title="试验车辆登记"
						style="width: auto; height: 100%; padding: '5px 10px 0px 10px'"
						data-options="url:'',
									              rownumbers: 'false',
									              idField: 'id',treeField: 'name',
									              toolbar:'#barget1',
									              onClickRow: onClickRow1">
						<thead>
							<tr>
								<th data-options="field:'V_NO',width:110">预算分类</th>
								<th data-options="field:'E_NO',width:110,editor:'text'">WBS编号</th>
								<th data-options="field:'M_NO',width:100">预算金额</th>
								<th data-options="field:'M_NO',width:100">已结算费用</th>
								<th data-options="field:'M_NO',width:100">结余预算金额</th>
							</tr>
						</thead>
					</table>
				</div>
				<div title="客户子项目">
					<div style="margin: 5px 0;"></div>
					<table id="subproj" class="easyui-datagrid" title="试验车辆登记"
						style="width: auto; height: auto; padding: '5px 10px 0px 10px'"
						data-options="url:'',
									              rownumbers: 'false',
									              idField: 'id',treeField: 'name',
									              toolbar:'#subproj1',
									              onClickRow: onClickRow2">
						<thead>
							<tr>
								<th data-options="field:'V_NO',width:100">客户子项目号</th>
								<th data-options="field:'V_NO',width:200">项目描述</th>
							</tr>
						</thead>
					</table>
					<div id="subproj1" style="height: auto">
						<div>
							<a href="javascript:void(0)" onclick="append()"
								class="easyui-linkbutton" iconCls="icon-add" plain="true">新增</a>
							<a href="javascript:void(0)" onclick="remove()"
								class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
						</div>
					</div>
				</div>
				<div title="操作记录">
					<div style="margin: 5px 0;"></div>
					<table id="subproj" class="easyui-datagrid"
						style="width: auto; height: auto; padding: '5px 10px 0px 10px'"
						data-options="url:'',
									              rownumbers: 'false',
									              idField: 'id',treeField: 'name'">
						<thead>
							<tr>
								<th data-options="field:'V_NO',width:110">操作人</th>
								<th data-options="field:'V_NO',width:110">操作类型</th>
								<th data-options="field:'V_NO',width:110">操作时间</th>
								<th data-options="field:'V_NO',width:110">备注</th>
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
			if ($('#barget').datagrid('validateRow', editIndex2)) {
				var ed = $('#barget').datagrid('getEditor', {
					index : editIndex2,
					field : 'begin'
				});
				var productname = $(ed.target).combobox('getText');
				$('#barget').datagrid('getRows')[editIndex2]['begin'] = productname;
				$('#barget').datagrid('endEdit', editIndex2);
				editIndex2 = undefined;
				return true;
			} else {
				return false;
			}
		}
		function onClickRow2(index) {

			if (editIndex2 != index) {
				if (endEditing2()) {
					$('#barget').datagrid('selectRow', index).datagrid(
							'beginEdit', index);
					editIndex2 = index;
				} else {
					$('#barget').datagrid('selectRow', editIndex2);
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
	
	$(function(){
		headscroll();
	});
		//查询
		function SearchData() {
			var combo1 = $('#projectId').combobox('getValue');
			var combo2 = $('#ownedenterprisesId').combobox('getValue');
			var combo3 = $('#statusId').combobox('getValue');
			var combo4 = $('#manageName').combobox('getValue');
		//	var combo5 = $('#issap').combobox('getValue');
			var combo6 = $('#typeId').combobox('getValue');
			var combo7 = $('#agreementtypeId').combobox('getValue');
			
			$('#dg').datagrid('load', {
				projectId : combo1,
				ownedenterprisesId : combo2,
				statusId : combo3,
				manageName : combo4,
			//	issap : combo5,
				typeId : combo6,
				agreementtypeId : combo7,
				
			});
		}
		//清空
		function clearSelectForm() {
			$('#selectForm').form('clear');
		}
		
		var url;
		function newInfo() {
			$('#wa').dialog('open').dialog('setTitle', '新增项目信息');
			$('#pid').attr('disabled', false);
			$('#fm').form('clear');
			url = '${pageContext.request.contextPath}/projectManage/saveProject';
		}

		function editInfo() {
			var row = $('#dg').datagrid('getSelected');
			if (row) {
				$('#wa').dialog('open').dialog('setTitle', '修改项目信息');
				$('#pid').attr('disabled', true);
				$('#fm').form('load', row);
				url = '${pageContext.request.contextPath}/projectManage/updateProject?projectId='
						+ row.projectId;
			}
			else{
				$.messager.alert('提示','请选择需要修改的行!','info');
			}
		}

		//save
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
						$('#projectId').combobox('reload');
						$('#manageName').combobox('reload');
						$('#ownedenterprisesId').combobox('reload');
					} else {
						$.messager.show({
							title : 'Error',
							msg : result.msg
						});
					}
				}
			});
		}
		
		
		//删除
		function remove() {
			var row = $('#dg').datagrid('getSelected');
			if (row) {
				$.messager
						.confirm(
								'Confirm',
								'Are you sure you want to remove this item?',
								function(r) {
									if (r) {
										$
												.post(
														'${pageContext.request.contextPath}/projectManage/delProject',
														{
															id : row.projectId
														},
														function(result) {

															if (result.success) {
																$('#dg')
																		.datagrid(
																				'reload'); // reload the user data
																$('#projectId').combobox('reload');
																$('#manageName').combobox('reload');
																$('#ownedenterprisesId').combobox('reload');
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
		}
		
	
		//combobox
		$('#projectId')
		.combobox(
				{
					url : '${pageContext.request.contextPath}/projectManage/listall',
					valueField : 'projectId',
					textField : 'projectId',
					filter : function(q, row) {
						var opts = $(this).combobox("options");
						return row[opts.textField].indexOf(q) > -1;
					}
				});
		
		$('#manageName')
		.combobox(
				{
					url : '${pageContext.request.contextPath}/projectManage/listall',
					valueField : 'manageName',
					textField : 'manageName',
					filter : function(q, row) {
						var opts = $(this).combobox("options");
						return row[opts.textField].indexOf(q) > -1;
					}
				});
		
		$('#ownedenterprisesId')
		.combobox(
				{
					url : '${pageContext.request.contextPath}/projectManage/listall',
					valueField : 'ownedenterprisesId',
					textField : 'ownedenterprisesId',
					filter : function(q, row) {
						var opts = $(this).combobox("options");
						return row[opts.textField].indexOf(q) > -1;
					}
				});
	</script>
</body>
</html>

