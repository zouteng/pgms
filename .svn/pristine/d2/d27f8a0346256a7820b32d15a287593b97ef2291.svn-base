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
<title>价格维护---上海通用汽车/泛亚技术中心研发试验中心</title>
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
						<h1>业务数据 >> 价格维护</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">
						<div id="pricetab" class="easyui-tabs" style="height: 439px; width: 795px">
							<div title="内部客户价格">
								<div class="ywcx-content1">
									<form action="#" method="post" id="selectForm1">
										<table class="table-left" style="width: 100%">
											<tr>
												<td>收费项目：</td>
												<td colspan="2"><select class="easyui-combobox"
													type="text" name="priceprojectId1"
													data-options="required:false" id="priceprojectId1">
														<option value="">请选择</option>
														<option>道路设施</option>
														<option>租赁费用</option>
														<option>杂费</option>
														<option>人工费</option>
												</select></td>
												<td>项目分类：</td>
												<td colspan="2"><select class="easyui-combobox"
													type="text" name="priceprojectsubclassId1"
													data-options="required:false" id="priceprojectsubclassId1" >
													<option value="">请选择</option>
													<option>长坡桥</option>
													<option>直线性能路</option>
													<option>......</option>
													</select>
													</td>
												<td></td>
												<td colspan="2"></td>

											</tr>
											<tr>
												<td></td>
												<td colspan="2"></td>
												<td colspan="3"></td>
												<td colspan="3" align="center"><a
													href="javascript:void(0)" class="easyui-linkbutton"
													onclick="SearchData('priceprojectId1','priceprojectsubclassId1','dg1')">查
														询</a> <a href="javascript:void(0)" class="easyui-linkbutton"
													onclick="clearSelectForm('selectForm1')">清 空</a></td>
											</tr>
										</table>
									</form>

								</div>
								<div style="margin: 5px 0;"></div>
								<div>
									<table id="dg1" class="easyui-datagrid" title=""
										style="width: 780px; height: 300px; padding: 5px"
										data-options="collapsible:true,maximizable:true,singleSelect:true,url:'${pageContext.request.contextPath}/priceManage/datagrid?customtypeId=1',toolbar:'#ta1',
																	              pagination:true,pageSize:10">

										<thead>
											<tr>
												<th
													data-options="field:'priceprojectId',width:100,align:'center'">收费项目</th>
												<th
													data-options="field:'priceprojectsubclassId',width:150,align:'center'">项目分类</th>
												<th
													data-options="field:'wbsnumber',width:180,align:'center'">WBS号</th>
												<th
													data-options="field:'activitytype',width:90,align:'center'">Actity
													type</th>
												<th data-options="field:'priceunit',width:90,align:'center'">计费单位</th>
												<th data-options="field:'price',width:90,align:'center'">计费单价</th>
											</tr>
										</thead>
									</table>
									<div id="ta1" style="height: auto">
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
							<div title="泛亚外部客户价格">
								<div class="ywcx-content1">
									<form action="#" method="post" id="selectForm2">
										<table class="table-left" style="width: 100%">
											<tr>
												<td>收费项目：</td>
												<td colspan="2"><select class="easyui-combobox"
													type="text" name="priceprojectId2"
													data-options="required:false" id="priceprojectId2">
														<option value="">请选择</option>
														<option>道路设施</option>
														<option>租赁费用</option>
														<option>杂费</option>
														<option>人工费</option>
												</select></td>
												<td>项目分类：</td>
												<td colspan="2"><select class="easyui-combobox"
													type="text" name="priceprojectsubclassId2"
													data-options="required:false" id="priceprojectsubclassId2" >
													<option value="">请选择</option>
													<option>长坡桥</option>
													<option>直线性能路</option>
													<option>......</option>
													</select>
													</td>
												<td></td>
												<td colspan="2"></td>

											</tr>
											<tr>
												<td></td>
												<td colspan="2"></td>
												<td colspan="3"></td>
												<td colspan="3" align="center"><a
													href="javascript:void(0)" class="easyui-linkbutton"
													onclick="SearchData('priceprojectId2','priceprojectsubclassId2','dg2')">查
														询</a> <a href="javascript:void(0)" class="easyui-linkbutton"
													onclick="clearSelectForm('selectForm2')">清 空</a></td>
											</tr>
										</table>
									</form>

								</div>
								<div style="margin: 5px 0;"></div>
								<div>
									<table id="dg2" class="easyui-datagrid" title=""
										style="width: 780px; height: 300px; padding: 5px"
										data-options="collapsible:true,maximizable:true,singleSelect:true,url:'${pageContext.request.contextPath}/priceManage/datagrid?customtypeId=2',toolbar:'#ta2',
																	              pagination:true,pageSize:10">

										<thead>
											<tr>
												<th
													data-options="field:'priceprojectId',width:100,align:'center'">收费项目</th>
												<th
													data-options="field:'priceprojectsubclassId',width:150,align:'center'">项目分类</th>
												<th
													data-options="field:'wbsnumber',width:180,align:'center'">WBS号</th>
												<th
													data-options="field:'activitytype',width:90,align:'center'">Actity
													type</th>
												<th data-options="field:'priceunit',width:90,align:'center'">计费单位</th>
												<th data-options="field:'price',width:90,align:'center'">计费单价</th>
											</tr>
										</thead>
									</table>
									<div id="ta2" style="height: auto">
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
							<div title="关联方客户价格">
								<div class="ywcx-content1">
									<form action="#" method="post" id="selectForm3">
										<table class="table-left" style="width: 100%">
											<tr>
												<td>收费项目：</td>
												<td colspan="2"><select class="easyui-combobox"
													type="text" name="priceprojectId3"
													data-options="required:false" id="priceprojectId3">
														<option value="">请选择</option>
														<option>道路设施</option>
														<option>租赁费用</option>
														<option>杂费</option>
														<option>人工费</option>
												</select></td>
												<td>项目分类：</td>
												<td colspan="2"><select class="easyui-combobox"
													type="text" name="priceprojectsubclassId3"
													data-options="required:false" id="priceprojectsubclassId3" >
													<option value="">请选择</option>
													<option>长坡桥</option>
													<option>直线性能路</option>
													<option>......</option>
													</select>
													</td>
												<td></td>
												<td colspan="2"></td>

											</tr>
											<tr>
												<td></td>
												<td colspan="2"></td>
												<td colspan="3"></td>
												<td colspan="3" align="center"><a
													href="javascript:void(0)" class="easyui-linkbutton"
													onclick="SearchData('priceprojectId3','priceprojectsubclassId3','dg3')">查
														询</a> <a href="javascript:void(0)" class="easyui-linkbutton"
													onclick="clearSelectForm('selectForm3')">清 空</a></td>
											</tr>
										</table>
									</form>

								</div>
								<div style="margin: 5px 0;"></div>
								<div>
									<table id="dg3" class="easyui-datagrid" title=""
										style="width: 780px; height: 300px; padding: 5px"
										data-options="collapsible:true,maximizable:true,singleSelect:true,url:'${pageContext.request.contextPath}/priceManage/datagrid?customtypeId=3',toolbar:'#ta3',
																	              pagination:true,pageSize:10">

										<thead>
											<tr>
												<th
													data-options="field:'priceprojectId',width:100,align:'center'">收费项目</th>
												<th
													data-options="field:'priceprojectsubclassId',width:150,align:'center'">项目分类</th>
												<th
													data-options="field:'wbsnumber',width:180,align:'center'">WBS号</th>
												<th
													data-options="field:'activitytype',width:90,align:'center'">Actity
													type</th>
												<th data-options="field:'priceunit',width:90,align:'center'">计费单位</th>
												<th data-options="field:'price',width:90,align:'center'">计费单价</th>
											</tr>
										</thead>
									</table>
									<div id="ta3" style="height: auto">
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
							<div title="其它外部客户价格">
								<div class="ywcx-content1">
									<form action="#" method="post" id="selectForm4">
										<table class="table-left" style="width: 100%">
											<tr>
												<td>收费项目：</td>
												<td colspan="2"><select class="easyui-combobox"
													type="text" name="priceprojectId4"
													data-options="required:false" id="priceprojectId4">
														<option value="">请选择</option>
														<option>道路设施</option>
														<option>租赁费用</option>
														<option>杂费</option>
														<option>人工费</option>
												</select></td>
												<td>项目分类：</td>
												<td colspan="2"><select class="easyui-combobox"
													type="text" name="priceprojectsubclassId4"
													data-options="required:false" id="priceprojectsubclassId4" >
													<option value="">请选择</option>
													<option>长坡桥</option>
													<option>直线性能路</option>
													<option>......</option>
													</select>
													</td>
												<td></td>
												<td colspan="2"></td>

											</tr>
											<tr>
												<td></td>
												<td colspan="2"></td>
												<td colspan="3"></td>
												<td colspan="3" align="center"><a
													href="javascript:void(0)" class="easyui-linkbutton"
													onclick="SearchData('priceprojectId4','priceprojectsubclassId4','dg4')">查
														询</a> <a href="javascript:void(0)" class="easyui-linkbutton"
													onclick="clearSelectForm('selectForm4')">清 空</a></td>
											</tr>
										</table>
									</form>

								</div>
								<div style="margin: 5px 0;"></div>
								<div>
									<table id="dg4" class="easyui-datagrid" title=""
										style="width: 780px; height: 300px; padding: 5px"
										data-options="collapsible:true,maximizable:true,singleSelect:true,url:'${pageContext.request.contextPath}/priceManage/datagrid?customtypeId=4',toolbar:'#ta4',
																	              pagination:true,pageSize:10">

										<thead>
											<tr>
												<th
													data-options="field:'priceprojectId',width:100,align:'center'">收费项目</th>
												<th
													data-options="field:'priceprojectsubclassId',width:150,align:'center'">项目分类</th>
												<th
													data-options="field:'wbsnumber',width:180,align:'center'">WBS号</th>
												<th
													data-options="field:'activitytype',width:90,align:'center'">Actity
													type</th>
												<th data-options="field:'priceunit',width:90,align:'center'">计费单位</th>
												<th data-options="field:'price',width:90,align:'center'">计费单价</th>
											</tr>
										</thead>
									</table>
									<div id="ta4" style="height: auto">
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
		<div id="wa" class="easyui-window" title="价格维护"
			data-options="modal:true,closed:true,iconCls:'icon-save'"
			style="width: 580px; height: 320px; padding: 10px 0 10px 0px">
			<form action="" method="post" id="fm">
				<table class="table-left" height=200 align="center">
					<tr>
						<td>收费项目：</td>
						<td colspan="2"><select class="easyui-combobox" type="text"
							name="priceprojectId" data-options="required:true">
							
								<option>道路设施</option>
								<option>租赁费用</option>
								<option>杂费</option>
								<option>人工费</option>
						</select></td>
						<td>项目分类：</td>
						<td colspan="2"><select class="easyui-combobox" type="text"
							name="priceprojectsubclassId" data-options="required:true">
							   <option value="">请选择</option>
								<option>长坡桥</option>
								<option>直线性能路</option>
								<option>......</option>
						</select></td>
					</tr>
					<tr>
						<td>客户类别：</td>
						<td colspan="2"><select class="easyui-combobox" type="text"
							name="customtypeId" data-options="required:true" id="customtype">
							
								<option value="1">内部客户</option>
								<option value="2">泛亚外部客户</option>
								<option value="3">关联方客户</option>
								<option value="4">其他外部客户</option>
						</select></td>
						<td>WBS号：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="wbsnumber" data-options="required:false" /></td>
					</tr>
					<tr>
						<td>activity type：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="activitytype" data-options="required:false" /></td>
						<td>计费单位：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="priceunit" data-options="required:true" /></td>
					</tr>
					<tr>
						<td>计费价格：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="price" /></td>
					</tr>
				</table>
			</form>
			<div style="margin: 5px 0;"></div>
			<div align='center'>
				<a href="javascript:void(0)" class="easyui-linkbutton"
					onclick="saveInfo()">提 交</a> <a href="javascript:void(0)"
					class="easyui-linkbutton"
					onclick="javascript:$('#wa').dialog('close')">关 闭</a>
			</div>
		</div>
	</div>

	<!--新增申请页面结束-->
	<script type="text/javascript">
	$(function(){
		headscroll();
	});

		//查询
		function SearchData(id1, id2, dgid) {

			var combo1 = $("#" + id1).combobox('getValue');
			var combo2 = $("#" + id2).combobox('getValue');
			//	alert("combo1="+combo1+";"+combo2+";"+dgid)
			$("#" + dgid).datagrid('load', {
				priceprojectId : combo1,
				priceprojectsubclassId : combo2
			});

		}
		//清空
		function clearSelectForm(selectForm) {
			$("#" + selectForm).form('clear');
		}

		var url;
		function newInfo() {
			$('#wa').dialog('open').dialog('setTitle', '新增客户价格');
			$('#fm').form('clear');
			url = '${pageContext.request.contextPath}/priceManage/savePrice';
		}

		function editInfo() {
			  var tab = $('#pricetab').tabs('getSelected');
			  var index = $('#pricetab').tabs('getTabIndex', tab)+1;
			  
			//  alert("tab为："+tab+";index为:"+index);
			var row = $('#dg'+index).datagrid('getSelected');
			if (row) {
				$('#wa').dialog('open').dialog('setTitle', '修改客户价格信息');
				$('#fm').form('load', row);
				
				url = '${pageContext.request.contextPath}/priceManage/updatePrice?priceId='
						+ row.priceId;
			}
			else{
				$.messager.alert('提示','请选择需要修改的行!','info');
			}
		}

		//save
		function saveInfo() {
			var combo = $('#customtype').combobox('getValue');
		//	alert('customtype为：'+combo);
			$('#fm').form('submit', {
				url : url,
				onSubmit : function() {
					return $(this).form('validate');
				},
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.success) {
						$('#wa').dialog('close'); // close the dialog
						$('#dg'+combo).datagrid('reload'); // reload the user data
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
			  var tab = $('#pricetab').tabs('getSelected');
			  var index = $('#pricetab').tabs('getTabIndex', tab)+1;
			var row = $('#dg'+index).datagrid('getSelected');
			if (row) {
				$.messager
						.confirm(
								'Confirm',
								'Are you sure you want to remove this item?',
								function(r) {
									if (r) {
										$
												.post(
														'${pageContext.request.contextPath}/priceManage/delProject',
														{
															id : row.priceId
														},
														function(result) {

															if (result.success) {
																$('#dg'+index)
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
				$.messager.alert('提示','请选择需要删除的行!','info');
			}
		}
	
	</script>
</body>
</html>

