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
<script type="text/javascript" src="javascript/datagrid-detailview.js"></script>
<script type="text/javascript">
	function OpenWindowsp() {
		$('#wa2').window('open');
	};
</script>
<title>试验规范管理---上海通用汽车/泛亚技术中心研发试验中心</title>
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
						<h1>业务数据 >> 试验规范管理</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">
						<div style="margin: 5px 0;"></div>
						<div class="ywcx-content1">
							<form action="#" method="post" id="selectForm">
								<table class="table-left" style="width: 100%">
									<tr>
										<td>规范编号：</td>
										<td colspan="2"><input class="easyui-combobox"
											type="text" name="specificationId" data-options="required:false" id="specificationId"/></td>
										<td>规范名称：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="specificationname" data-options="required:false" id="specificationname"></select></td>
										<td>试用范围：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="scope" data-options="required:false" id="scope">
												<option value="">请选择</option>
												<option>仅本企业</option>
												<option>所有企业</option>
										</select></td>

									</tr>
									<tr>
										<td>安全等级</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="securitylevel" data-options="required:false" id="securitylevel" >
											<option value="">请选择</option>
												<option>低级</option>
												<option>中级</option>
												<option>高级</option>
											</select></td>
										<td>规范类型</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="specificationcategory" data-options="required:false" id="specificationcategory">
												<option value="">请选择</option>
												<option>世界标准</option>
												<option>国家标准</option>
												<option>企业标准</option>
										</select></td>
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
								style="width: 795px; height: 300px; padding: 5px"
								data-options="collapsible:true,maximizable:true,singleSelect:true,url:'${pageContext.request.contextPath}/testSpecification/datagrid',toolbar:'#tb_2',
																	              pagination:true,pageSize:10,
																	              ">
								<thead>
									<tr>
										<th
											data-options="field:'specificationId',width:65,align:'center'">规范编号</th>
										<th
											data-options="field:'specificationname',width:65,align:'center'">规范名称</th>
										<th data-options="field:'applyunit',width:65,align:'center'">申请单位</th>
										<th data-options="field:'applydepartment',width:65,align:'center'">申请部门</th>
										<th data-options="field:'scope',width:65,align:'center'">适用范围</th>
										<th data-options="field:'evaluateresult',width:65,align:'center'">评估结果</th>
										<th data-options="field:'securitylevel',width:65,align:'center'">安全等级</th>
										<th data-options="field:'specificationcategory',width:65,align:'center'">规范类型</th>
										<th
											data-options="field:'specificationstatus',width:65,align:'center'">规范状态</th>
									</tr>
								</thead>
							</table>
							<div id="tb_2" style="height: auto">
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
	<!--弹出窗口开始-->
	<!--确认单弹出页面开始-->
	<div class="ywcx-content2">
		<div id="wa" class="easyui-window" title="试验规范信息"
			data-options="modal:true,closed:true,iconCls:'icon-save'"
			style="width: 750px; height: 650px; padding: 10px 0 10px 0px">
			<div id="child1_tab" class="easyui-tabs"
				style="width: 710px; height: 580px; padding: 0px 3px 3px 3px;">
				<div title="试验规范申请单">
				<form action="" method="post" id="fm">
					<table class="table-left" style="width: 100%">
						<tr>
							<td width="80px">申请单位：</td>
							<td colspan="2"><input class="easyui-text" type="text"
								name="applyunit" data-options="required:true" /></td>
							<td width="80px">申请部门：</td>
							<td colspan="2"><input class="easyui-text" type="text"
								name="applydepartment" data-options="required:true" /></td>
						</tr>
						<tr>
							<td width="80px">规范编号：</td>
							<td colspan="2"><input class="easyui-text" type="text"
								name="specificationId" data-options="required:true"  id="specid"/></td>
							<td width="80px">规范名称：</td>
							<td colspan="2"><input class="easyui-text" type="text"
								name="specificationname" data-options="required:true" /></td>
						</tr>
						<tr>
							<td width="80px">规范类型：</td>
							<td colspan="2"><select class="easyui-combobox" type="text"
								name="specificationcategory" data-options="required:true">
									<option value="">请选择</option>
									<option>世界标准</option>
									<option>国家标准</option>
									<option>企业标准</option>
							</select></td>
							<td width="80px">适用范围：</td>
							<td colspan="2"><select class="easyui-combobox" type="text"
								name="scope" data-options="required:true">
									<option value="">请选择</option>
									<option>仅本企业</option>
									<option>所有企业</option>
							</select></td>
						</tr>
						<tr>
							<td width="80px">目的：</td>
							<td colspan="5"><input class="easyui-text" type="text"
								name="content" size="80" data-options="required:true" /></td>
						</tr>
					</table>
					</form>
					<div style="margin: 10px;"></div>
					<table id="costGather" class="easyui-datagrid" title=""
						style="width: 650; height: 350px; padding: '0px 10px 0px 10px'"
						data-options="url:'',
								              toolbar:'#child_tb2'">
						<thead>
							<tr>
								<th data-options="field:'ck',checkbox:true"></th>
								<th data-options="field:'type',width:630">试验道路</th>
							</tr>
						</thead>
					</table>
					<div id="child_tb2" style="height: auto">
						<div>
							<a href="javascript:void(0)" onclick="$('#wa1').window('open')"
								class="easyui-linkbutton" iconCls="icon-add" plain="true">新增</a>
							<a href="javascript:void(0)" onclick="$('#wa2').window('open')"
								class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
						</div>
					</div>
					<div align='center'>
					<a href="javascript:void(0)" class="easyui-linkbutton"
							onclick="saveInfo()">提 交</a>
						<a href="javascript:void(0)" class="easyui-linkbutton"
							onclick="javascript:$('#wa').dialog('close')">关 闭</a>
					</div>
				</div>

				<script type="text/javascript">
					$(function() {
						$('#costGather')
								.datagrid(
										{
											view : detailview,
											detailFormatter : function(index,
													row) {
												return '<div style="padding:2px"><table id="ddu-' + index + '"></table></div>';
											},
											onExpandRow : function(index, row) {
												$('#ddu-' + index)
														.datagrid(
																{
																	url : 'datagrid/test_role_detail_'
																			+ row.id
																			+ '.json',
																	fitColumns : true,
																	singleSelect : true,
																	rownumbers : true,
																	loadMsg : '',
																	height : 'auto',
																	columns : [ [
																			{
																				field : 'type',
																				title : '主要操作',
																				width : 80,
																				formatter : function(
																						value,
																						row) {
																					return row.type;
																				},
																				editor : {
																					type : 'combobox'
																				}
																			},
																			{
																				field : 'IS',
																				title : '',
																				width : 50,
																				align : 'center',
																				editor : {
																					type : 'checkbox'
																				}
																			},
																			{
																				field : 'maxspeed',
																				title : '最高时速',
																				width : 50,
																				align : 'center',
																				editor : {
																					type : 'numberbox',
																					options : {
																						precision : 1
																					}
																				}
																			},
																			{
																				field : 'commnents',
																				title : '说明',
																				width : 150,
																				align : 'center',
																				editor : {
																					type : 'text'
																				}
																			}, ] ],
																	onClickRow : onClickRow4,
																	onResize : function() {
																		$(
																				'#costGather')
																				.datagrid(
																						'fixDetailRowHeight',
																						index);
																	},
																	onLoadSuccess : function() {
																		setTimeout(
																				function() {
																					$(
																							'#costGather')
																							.datagrid(
																									'fixDetailRowHeight',
																									index);
																				},
																				0);
																	}
																});
												$('#costGather').datagrid(
														'fixDetailRowHeight',
														index);
											}
										});
					});
					var editIndex4 = undefined;
					function endEditing4() {
						if (editIndex4 == undefined) {
							return true
						}
						if ($('#ddu-1').datagrid('validateRow', editIndex4)) {
							var ed = $('#ddu-1').datagrid('getEditor', {
								index : editIndex4,
								field : 'type'
							});
							$('#dg').datagrid('getRows')[editIndex4]['type'] = ed;
							$('#dg').datagrid('endEdit', editIndex4);
							editIndex4 = undefined;
							return true;
						} else {
							return false;
						}
					}
					function onClickRow4(index) {
						if (editIndex4 != index) {
							if (endEditing4()) {
								$('#ddu-1').datagrid('selectRow', index)
										.datagrid('beginEdit', index);
								editIndex4 = index;
							} else {
								$('#ddu-1').datagrid('selectRow', editIndex4);
							}
						}
					}
				</script>

				<div title="安全评估">

					<div style="margin: 10px;"></div>
					<table id="costGather" class="easyui-datagrid" title=""
						style="width: 650; height: 350px; padding: '0px 10px 0px 10px'"
						data-options="url:'',
								              toolbar:'#child_ts2'">
						<thead>
							<tr>
								<th data-options="field:'type',width:80" rowspan="2">试验道路</th>
								<th data-options="field:'level',width:60" rowspan="2">安全等级</th>
								<th data-options="field:'is1',width:70" rowspan="2">是否符合<br>PG安全规则
								</th>
								<th data-options="field:'is2',width:70" rowspan="2">是否与已<br>知试验冲突
								</th>
								<th colspan="6">安全要求</th>
							</tr>
							<tr>
								<th data-options="field:'fire',width:60">灭火器</th>
								<th data-options="field:'alert',width:60">警示标识</th>
								<th data-options="field:'l2',width:60">Level 2</th>
								<th data-options="field:'hat',width:60">头盔</th>
								<th data-options="field:'info',width:90">试验前通知PG</th>
								<th data-options="field:'close',width:60">封闭道路</th>
								<th data-options="field:'close',width:60">备注</th>
							</tr>
						</thead>
					</table>
					<div align="center">
						<a href="javascript:void(0)" class="easyui-linkbutton"
							onclick="submitForm()">通 过</a> <a href="javascript:void(0)"
							class="easyui-linkbutton" onclick="clearForm()">退 回</a>
					</div>
				</div>
				<div title="计费方式">
					<div style="margin: 10px;"></div>
					<table id="costGather" class="easyui-datagrid" title=""
						style="width: 650; height: 350px; padding: '0px 10px 0px 10px'"
						data-options="url:'',
								              toolbar:'#child_ts3'">
						<thead>
							<tr>
								<th data-options="field:'type',width:80" rowspan="2">试验道路</th>
								<th data-options="field:'level',width:80" rowspan="2">计费方式</th>
								<th data-options="field:'is1',width:150" rowspan="2">备注</th>

							</tr>

						</thead>
					</table>
					<div id="child_ts3" style="height: auto">
						<div>
							<a href="javascript:void(0)" onclick="$('#wa1').window('open')"
								class="easyui-linkbutton" iconCls="icon-add" plain="true">编辑</a>
							<a href="javascript:void(0)" onclick="$('#wa2').window('open')"
								class="easyui-linkbutton" iconCls="icon-remove" plain="true">保存</a>
						</div>
					</div>
				</div>
				<div title="操作记录">
					<div style="margin: 10px 0;"></div>
					<table class="easyui-datagrid" title=""
						style="width: 650; height: 470px; padding: '0px 10px 0px 10px'"
						data-options="url:'',
								              rownumbers: 'true',
								              idField: 'id',treeField: 'name'">
						<thead>
							<tr>
								<th data-options="field:'isuse',width:90">操作人</th>
								<th data-options="field:'name',width:90">操作时间</th>
								<th data-options="field:'count',width:90">操作类型</th>
								<th data-options="field:'value',width:300">备注</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!--确认单弹出页面结束-->
	<!--移除车辆弹出页面开始-->
	<div id="child_1_1" class="easyui-window" title="移除车辆"
		data-options="modal:true,closed:true,iconCls:'icon-save'"
		style="width: 250px; height: 160px; padding: 10px 0 10px 0px">
		<div align='center'>
			请选择要车辆要转入的项目
			<div style="margin: 5px 0;"></div>
			<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
				class="easyui-combobox" type="text" name="name"
				data-options="required:true" />
			<div style="margin: 5px 0;"></div>
			<br> <a href="javascript:void(0)" class="easyui-linkbutton"
				onclick="submitForm()">确 认</a> <a href="javascript:void(0)"
				class="easyui-linkbutton" onclick="submitForm()">取 消</a>
		</div>
	</div>
	<!--移除车辆弹出页面结束-->
	<!--引入车辆弹出页面开始-->
	<div id="child_1_2" class="easyui-window" title="移除车辆"
		data-options="modal:true,closed:true,iconCls:'icon-save'"
		style="width: 750px; height: 480px; padding: 10px 0 10px 0px">
		<div style="margin: 10px 0;"></div>
		<table class="table-left">
			<tr>
				<td>选择项目：</td>
				<td colspan="2"><input class="easyui-combobox" type="text"
					name="name" data-options="required:true" />*</td>
				<td><a href="javascript:void(0)" class="easyui-linkbutton"
					onclick="submitForm()">查 询</a></td>
			</tr>
		</table>
		<div style="margin: 15px 0;"></div>
		<table class="easyui-datagrid" title=""
			style="width: 650; height: 330px; padding: '0px 10px 0px 10px'"
			data-options="url:'',
								              rownumbers: 'false',
								              idField: 'id',treeField: 'name'">
			<thead>
				<tr>
					<th data-options="field:'ck',checkbox:true" rowspan="2"></th>
					<th data-options="field:'isuse',width:65" rowspan="2">车贴号</th>
					<th data-options="field:'name',width:65" rowspan="2">车辆编号</th>
					<th colspan="3">#93汽油</th>
					<th colspan="3">#97汽油</th>
					<th colspan="3">#0柴油</th>
					<th colspan="3">#欧V汽油</th>
					<th colspan="3">#95汽油</th>
				</tr>
				<th data-options="field:'count',width:35">数量</th>
				<th data-options="field:'value',width:35">单价</th>
				<th data-options="field:'money',width:35">小计</th>
				<th data-options="field:'count',width:35">数量</th>
				<th data-options="field:'value',width:35">单价</th>
				<th data-options="field:'money',width:35">小计</th>
				<th data-options="field:'count',width:35">数量</th>
				<th data-options="field:'value',width:35">单价</th>
				<th data-options="field:'money',width:35">小计</th>
				<th data-options="field:'count',width:35">数量</th>
				<th data-options="field:'value',width:35">单价</th>
				<th data-options="field:'money',width:35">小计</th>
				<th data-options="field:'count',width:35">数量</th>
				<th data-options="field:'value',width:35">单价</th>
				<th data-options="field:'money',width:35">小计</th>
				</tr>
			</thead>
		</table>
		<div style="margin: 15px 0;"></div>
		<div align='center'>
			<a href="javascript:void(0)" class="easyui-linkbutton"
				onclick="submitForm()">提 交</a> <a href="javascript:void(0)"
				class="easyui-linkbutton" onclick="submitForm()">取 消</a>
		</div>
	</div>
	<!--引入车辆弹出窗口结束-->
	<!--弹出窗口结束-->



	<script type="text/javascript">
	$(function(){
		headscroll();
	});

		function OpenWindows() {
			$('#wa2').window('open');
		};

		
		//查询
		function SearchData() {
			var combo1 = $('#specificationId').combobox('getValue');
			var combo2 = $('#specificationname').combobox('getValue');
			var combo3 = $('#scope').combobox('getValue');
			var combo4 = $('#securitylevel').combobox('getValue');
			var combo5 = $('#specificationcategory').combobox('getValue');
			$('#dg').datagrid('load', {
				specificationId : combo1,
				specificationname : combo2,
				scope : combo3,
				securitylevel : combo4,
				specificationcategory : combo5
			});
		}
		//清空
		function clearSelectForm() {
			$('#selectForm').form('clear');
		}

		var url;
		function newInfo() {
			$('#wa').dialog('open').dialog('setTitle', '新增试验规范');
			$('#specid').attr('disabled', false);
			$('#fm').form('clear');
			url = '${pageContext.request.contextPath}/testSpecification/saveTest';
		}

		function editInfo() {
			var row = $('#dg').datagrid('getSelected');
			if (row) {
				$('#wa').dialog('open').dialog('setTitle', '修改试验规范');
				$('#specid').attr('disabled', true);
				$('#fm').form('load', row);
				url = '${pageContext.request.contextPath}/testSpecification/updateTest?specificationId='
						+ row.specificationId;
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
						$('#specificationId').combobox('reload');
						$('#specificationname').combobox('reload');
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
														'${pageContext.request.contextPath}/testSpecification/delTest',
														{
															id : row.specificationId
														},
														function(result) {

															if (result.success) {
																$('#dg')
																		.datagrid(
																				'reload'); // reload the user data
																$('#specificationId').combobox('reload');
																$('#specificationname').combobox('reload');
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
				$.messager.alert('提示','请选择需要删除的行!','info');
			}
		}
		
		//combobox
			
			$('#specificationId')
					.combobox(
							{
								url : '${pageContext.request.contextPath}/testSpecification/listAll',
								valueField : 'specificationId',
								textField : 'specificationId',
								filter : function(q, row) {
									var opts = $(this).combobox("options");
									return row[opts.textField].indexOf(q) > -1;
								}
							});
	
			$('#specificationname')
			.combobox(
					{
						url : '${pageContext.request.contextPath}/testSpecification/listAll',
						valueField : 'specificationname',
						textField : 'specificationname',
						filter : function(q, row) {
							var opts = $(this).combobox("options");
							return row[opts.textField].indexOf(q) > -1;
						}
					});
		
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


