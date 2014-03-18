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
				
	
			var flag ; //判断走的是保存还是修改方法
			$(function(){
					$('#treegrid_menu').treegrid({
							title:'菜单列表', 
							iconCls:'icon-ok',
							width:799,
							height:430,
						//	padding: 5,
							nowrap: false,
						
							collapsible:true,
							url:'${pageContext.request.contextPath}/menuPermission/menutreegrid',			
							idField:'menuPermissionId',				//数据表格要有主键	
							treeField:'name',			//treegrid 树形结构主键 text
							toolbar:'#tb',
							remoteSort:false,
                         	sortName:'treeCode',
							fitColumns:true ,
							columns:[[
								{field:'name',title:'菜单名',width:130} ,
								{field:'treeCode',title:'代码',width:50} ,
								{field:'controllerName',title:'Controller名称',width:90} ,
								{field:'actionName',title:'Action名称',width:90} ,
								{field:'description',title:'描述',width:90} ,
								{field:'url',title:'URL',width:90} ,
								{field:'createtime',title:'创建时间',width:90} 
							]],
							onContextMenu: function(e,row){
								e.preventDefault();					//屏蔽浏览器的菜单
								$(this).treegrid('unselectAll');	//清除所有选中项
								$(this).treegrid('select', row.menuPermissionId);	//选中状态 
								$('#mm').menu('show', {
									left: e.pageX,
									top: e.pageY
								});
							}
					});
					
					$('#btn1').click(function(){
						
							if(flag == 'add'){
										//保存方法 
										//1 前台保存    注意: 没有保存id
										var node = $('#treegrid_menu').treegrid('getSelected');
						               	console.info('node为'+node);
										$('#treegrid_menu').treegrid('append',{
												parent:node.menuPermissionId ,
												data:[{
														name:$('#myform').find('input[name=name]').val(),
														treeCode:$('#myform').find('input[name=treeCode]').val(),
														controllerName:$('#myform').find('input[name=controllerName]').val(),
														actionName:$('#myform').find('input[name=actionName]').val(),
														icon1:$('#myform').find('input[name=icon1]').val(),
														icon2:$('#myform').find('input[name=icon2]').val(),
														indexField:$('#myform').find('input[name=indexField]').val(),
														url:$('#myform').find('input[name=url]').val(),
														description:$('#myform').find('textarea[name=description]').val()
												}]
										});
										
										//2 后台保存 
										$.ajax({
											type:'post',
											url:'${pageContext.request.contextPath}/menuPermission/saveMenu',
											cache:false , 
											dataType:'json',
											data:{
													parentId:node.menuPermissionId ,
													name:$('#myform').find('input[name=name]').val(),
													treeCode:$('#myform').find('input[name=treeCode]').val(),
													controllerName:$('#myform').find('input[name=controllerName]').val(),
													actionName:$('#myform').find('input[name=actionName]').val(),
													icon1:$('#myform').find('input[name=icon1]').val(),
													icon2:$('#myform').find('input[name=icon2]').val(),
													indexField:$('#myform').find('input[name=indexField]').val(),
													url:$('#myform').find('input[name=url]').val(),
													description:$('#myform').find('textarea[name=description]').val()
											} ,
											success:function(r){
													//刷新节点 : 刷新当前选中节点
													$('#treegrid_menu').treegrid('reload',node.menuPermissionId);
													$.messager.show({
														title:'提示信息' , 
														msg:r.msg
													});
											}
										});
										//3关闭窗口
										$('#wa').dialog('close');
							} else {
										$.ajax({
											type:'post',
											url:'${pageContext.request.contextPath}/menuPermission/updateMenu',
											cache:false , 
											dataType:'json',
											data:{
												    menuPermissionId:$('#myform').find('input[name=menuPermissionId]').val() ,
												    name:$('#myform').find('input[name=name]').val(),
													treeCode:$('#myform').find('input[name=treeCode]').val(),
													controllerName:$('#myform').find('input[name=controllerName]').val(),
													actionName:$('#myform').find('input[name=actionName]').val(),
													icon1:$('#myform').find('input[name=icon1]').val(),
													icon2:$('#myform').find('input[name=icon2]').val(),
													indexField:$('#myform').find('input[name=indexField]').val(),
													url:$('#myform').find('input[name=url]').val(),
													description:$('#myform').find('textarea[name=description]').val()
											} ,
											success:function(r){
												//刷新节点  :如果当前选中的节点是叶子节点的话,刷新该节点的父亲 ,如果不是叶子节点,刷新当前选中节点即可
												var node = $('#treegrid_menu').treegrid('getSelected');
												var parent =	$('#treegrid_menu').treegrid('getParent' , node.menuPermissionId);
												$('#treegrid_menu').treegrid('reload' , parent.menuPermissionId);
												$.messager.show({
													title:'提示信息',
													msg:r.msg
												});
											}
										});
										//3关闭窗口
										$('#wa').dialog('close');
							}

								
								
					});
					
					//关闭窗口
					$('#btn2').click(function(){
							$('#wa').dialog('close');
					});

					
			});
			
			
			function append(){
						flag='add';
						//1清空表单数据
						$('#myform').form('clear');
						//2打开窗口
						$('#wa').dialog('open');
			}
			
			function update(){
						flag='edit';
						//1清空表单数据
						$('#myform').form('clear');
						//2填充表单回显数据
						var  node  = $('#treegrid_menu').treegrid('getSelected');
						$('#myform').form('load', node);
						/*	$('#myform').form('load',{
								 id:node.id ,
								name:node.name ,
								principal:node.principal,
								count:node.count ,
								description:node.description 
						});*/
						//3打开窗口
						$('#wa').dialog('open');
			}
			
			function remove(){
						$.messager.confirm("提示信息","确认删除?",function(r){
								if(r){
									// 1前台删除
									var  node  = $('#treegrid_menu').treegrid('getSelected');
									$('#treegrid_menu').treegrid('remove',node.menuPermissionId);
									// 2后台删除 
									$.post('${pageContext.request.contextPath}/menuPermission/delMenu' , {menuPermissionId:node.menuPermissionId} , function(result){
												
												$('#treegrid_menu').treegrid('unselectAll');
												$('#treegrid_menu').treegrid('reload');
												$.messager.show({
													title:'提示信息',
													msg:'操作成功!'
												});
									});
								} else {
									return ;
								}
								
						});
			}
			
	</script>	
	
	
	
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
						<h1>系统管理 >> 菜单管理</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">
						<div class="ywcx-content1"></div>
						<div style="margin: 5px 0;"></div>
						<div>
						<table id=treegrid_menu></table>
							<%-- <table id="dg" class="easyui-treegrid" title="菜单列表"
								style="width: 799px; height: 430px; padding: 5px"
								data-options="iconCls: 'icon-ok',       
			                            	animate: true,
			                             	collapsible: true,
			                             	remoteSort:false,
			                             	sortName:'treeCode',
			                               	fitColumns: true,
			                             	url: '${pageContext.request.contextPath}/menuPermission/menutreegrid',
				                            idField: 'menuPermissionId',
			                            	treeField: 'name',
			                            	toolbar:'#tb',
			                            	onLoadSuccess: function (row, data) {
             $.each(data, function (i, val) { $('#dg').treegrid('collapseAll', data[i].id); });}		
			                             	">
								<thead>
									<tr>
										<th data-options="field:'name',width:100">菜单名</th>
										<th data-options="field:'treeCode',width:50">代码</th>
										<th data-options="field:'controllerName',width:90">Controller名称</th>
										<th data-options="field:'actionName',width:90">Action名称</th>
										<th data-options="field:'description',width:90">描述</th>
										<th data-options="field:'url',width:90,align:'center'">URL</th>
										<th
											data-options="field:'createtime',width:90,align:'center',formatter:function(value,row,index){
                                                 var unixTimestamp = new Date(value);
                                                 return unixTimestamp.toLocaleString().replace(/年|月/g, '-').replace(/日/g, ' ');}">创建时间</th>

									</tr>
								</thead>
							</table> --%>
						 <div id="tb" style="height: auto">
								<div>
									<a href="#" class="easyui-linkbutton" iconCls="icon-add"
										plain="true" onclick="newInfo()">新增</a> <a href="#"
										class="easyui-linkbutton" iconCls="icon-edit" plain="true"
										onclick="editInfo()">修改</a> <a href="javascript:remove()"
										class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
								</div>
							</div> 
							<div id="mm" class="easyui-menu" style="width: 120px;">
								<div onclick="javascript:append()">新增菜单</div>
								<div onclick="javascript:update()">修改菜单</div>
								<div onclick="javascript:remove()">删除菜单</div>
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
		<div id="wa" class="easyui-window" title="新增用戶"
			data-options="modal:true,closed:true,iconCls:'icon-save'"
			style="width: 580px; height: 380px; padding: 10px 0 10px 0px">
			<form id="myform" method="post" novalidate>
			<input type="hidden" name="menuPermissionId" value="" />
				<table class="table-left" height=260 align="center">
					<tr>
						<td>菜单名：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="name" data-options="required:true" /></td>
						<td>代码：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="treeCode" data-options="required:true" /></td>
					</tr>
					<tr>
						<td>action名称：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="actionName" data-options="required:true" /></td>
							<td>大图标：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="icon1" data-options="required:true"></td>
					</tr>
					<tr>
					<td>controller名称：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="controllerName" data-options="required:true" /></td>
						<td>小图标：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="icon2" ></td>
					
					</tr>
					<tr>
						<td>排序：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="indexField" ></td>
						<td>URL：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="url" data-options="required:true" /></td>
					</tr>
					<tr>
						<td>描述：</td>
						<td colspan="5"><textarea rows="3" cols="53"
								class="easyui-text" name="description"></textarea>
								</td>
					</tr>
					
					<tr align="center">
  								<td colspan="6">
  									<a id="btn1" class="easyui-linkbutton">确定</a>
  									<a id="btn2" class="easyui-linkbutton">取消</a>
  								</td>
  					</tr>  
				</table>
			</form>
			<!-- <div style="margin: 5px 0;"></div>
			<div align='center'>
				<a href="javascript:clearForm()" class="easyui-linkbutton">重置</a> <a
					href="javascript:saveInfo()" class="easyui-linkbutton">提 交</a> <a
					href="javascript:void(0)" class="easyui-linkbutton"
					onclick="javascript:$('#wa').dialog('close')">关 闭</a>

			</div> -->
		</div>
	</div>
	<!--新增申请页面结束-->


	<script type="text/javascript">
	$(function(){
		headscroll();
	});

	/* 	var url;
		function newInfo() {
			var row = $('#dg').datagrid('getSelected');
			if(row){
			$('#wa').dialog('open').dialog('setTitle', '新增菜单');
			$('#fm').form('clear');
		//	$.messager.alert('消息',row.createtime,'info');
			url = '${pageContext.request.contextPath}/menuPermission/saveMenu?_parentId='+row.menuPermissionId;
		}}

		function editInfo() {
			var row = $('#dg').datagrid('getSelected');
			if (row) {
				$('#wa').dialog('open').dialog('setTitle', '修改菜单信息');
				$('#fm').form('load', row);
			//	$.messager.alert('消息',row._parentId,'info');
				url = '${pageContext.request.contextPath}/menuPermission/updateMenu?menuPermissionId='
						+ row.menuPermissionId+'&_parentId='+row._parentId;
			}
			else{
				$.messager.alert('提示','请选择需要修改的菜单项!','info');
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
						$('#dg').treegrid('reload'); // reload the user data
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
								'Are you sure you want to remove this Menu?',
								function(r) {
									if (r) {
										$
												.post(
														'${pageContext.request.contextPath}/menuPermission/delMenu',
														{
															id : row.menuPermissionId
														},
														function(result) {

															if (result.success) {
																$('#dg')
																		.treegrid(
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
				$.messager.alert('提示','请选择需要删除的菜单项!','info');
			}
		} */


	</script>
</body>
</html>
