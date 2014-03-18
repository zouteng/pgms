<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
           	var flag ;	
	$(function(){
		headscroll();//通知滚动
			/**
			 *	初始化数据表格  
			 */
			$('#t_datagrid').datagrid({
					idField:'userId' ,
					title:'' ,
					width:799 ,
					height:335,
					url:'${pageContext.request.contextPath}/userManage/datagrid' ,
					fitColumns:true ,  
					striped: true ,					//隔行变色特性 
					loadMsg: '数据正在加载,请耐心的等待...' ,
					singleSelect:true ,				//单选模式 
					columns:[[
						{
							field:'name' ,
							title:'用户名称' ,
							width:85 ,
							align:'center',
							sortable : true
						},
						{
							field:'loginName' ,
							title:'登录名' ,
							width:90 
							
						},{
							field:'code' ,
							title:'代码' ,
							width:90
							 
						},{
							field:'state' , 
							title:'用户状态' ,
							width:70 ,
							formatter: function(value,row,index){
								if(value==0){
									return '正常';
									}
								else
								{
									return '停用';
								}
							
								}
						},{
							field:'description' ,
							title:'描述' ,
							width:90 
						},{
							field:'inputCode1' , 
							title:'助记码1' , 
							width:50
						
						},{
							field:'inputCode2' , 
							title:'助记码2' ,  
							width:50
						},{
							field:'roleText',
							title:'角色',
							width:130
						},
						{
							field:'createtime',
							title:'创建时间',
							width:130
						},
						{
							field : 'roleId',
							title : '角色Id',
							width : 100,
							hidden : true
						},
						{
							field : 'userId',
							title : '用户Id',
							width : 100,
							hidden : true
						}
					]] ,
					pagination: true , 
					pageSize: 10 ,
					pageList:[5,10,15,20,50] ,
					 toolbar:[
						{
							text:'新增' ,
							iconCls:'icon-add' , 
							handler:function(){
								append();
							}
							
						},{
							text:'修改' ,
							iconCls:'icon-edit' , 
							handler:function(){
							edit();
							}
						},{
							text:'删除' ,
							iconCls:'icon-remove' , 
							handler:function(){
							remove();
							}								
						}
					], 
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
			
					/**
					*角色combotree
					*/
			/* 		$('[name=roleId]').combotree({
						url : 'roleManage/roletree',
						animate : false,
						checkbox : true,
						multiple : true,
						onLoadSuccess : function(node, data) {
							var t = $(this);
							if (data) {
								$(data).each(function(index, d) {
									if (this.state == 'closed') {
										t.tree('expandAll');
									}
								});
							}
						}
					}); */
			$('#searchroleId').combotree({
				url : 'roleManage/roletree',
				animate : false,
				onLoadSuccess : function(node, data) {
					var t = $(this);
					if (data) {
						$(data).each(function(index, d) {
							if (this.state == 'closed') {
								t.tree('expandAll');
							}
						});
					}
				}
			});
					
					$('#roleId').combotree({
						url : 'roleManage/roletree',
						animate : false,
						checkbox : true,
						multiple : true,
						onLoadSuccess : function(node, data) {
							var t = $(this);
							if (data) {
								$(data).each(function(index, d) {
									if (this.state == 'closed') {
										t.tree('expandAll');
									}
								});
							}
						}
					});		
					
					
					
			
			/**
			 *  提交表单方法
			 */
			$('#btn1').click(function(){
					if($('#myform').form('validate')){
						$.ajax({
							type: 'post' ,
							url: flag=='add'?'userManage/saveUser':'userManage/updateUser' ,
							cache:false ,
							data:$('#myform').serialize() ,
							dataType:'json' ,
							success:function(result){
								//1 关闭窗口
								$('#mydialog').dialog('close');
								//2刷新datagrid 
								$('#t_datagrid').datagrid('reload');
								//3 提示信息
								$.messager.show({
									title:'提示信息' , 
									msg:result.msg
								});
							} ,
							error:function(result){
								$.meesager.show({
									title:'提示信息' , 
									msg:result.msg
								});
							}
						});
					} else {
						$.messager.show({
							title:'提示信息!' ,
							msg:'数据验证不通过,不能保存!'
						});
					}
			});
			
			/**
			 * 关闭窗口方法
			 */
			$('#btn2').click(function(){
				$('#mydialog').dialog('close');
			});
			
				
			$('#searchbtn').click(function(){
				$('#t_datagrid').datagrid('load' ,serializeForm($('#mysearch')));
			});
			
			
			$('#clearbtn').click(function(){
				$('#mysearch').form('clear');
				$('#t_datagrid').datagrid('load' ,{});
			});
			

	});
	
	//增加
	function append(){
		flag = 'add';
		$('#mydialog').dialog({
				title:'新增企业用户信息' 
		});
		$('#myform').get(0).reset();
		//$('#myform').form('clear');
		$('#mydialog').dialog('open');
		
	}
	//编辑
	function edit(){
		flag = 'edit';
		var arr =$('#t_datagrid').datagrid('getSelections');
		if(arr.length != 1){
			$.messager.show({
				title:'提示信息!',
				msg:'只能选择一行记录进行修改!'
			});
		} else {
			$('#mydialog').dialog({
				title:'修改企业用户信息'
			});
			$('#mydialog').dialog('open'); //打开窗口
			$('#myform').get(0).reset();   //清空表单数据 
			$('#myform').form('load',{
					userId : arr[0].userId,
					name : arr[0].name,
					loginName:arr[0].loginName,
					psw : '',
					psw1:'',
					code:arr[0].code,
					state:arr[0].state,
					inputCode1:arr[0].inputCode1,
					inputCode2:arr[0].inputCode2,
					inputCode3:arr[0].inputCode3,
					roleId : getList(arr[0].roleId),
					description:arr[0].description
			});  //调用load方法把所选中的数据load到表单中
		}
	}
	
	
	
	function  getList(value) {
		if (value) {
			var values = [];
			var t = value.split(',');
			for ( var i = 0; i < t.length; i++) {
				values.push('' + t[i]);/* 避免他将ID当成数字 */
			}
			return values;
		} else {
			return [];
		}
	}
	
	
	//删除
     function remove(){
		var row = $('#t_datagrid').datagrid('getSelected');
		
		if(row){
			$.messager.confirm('提示信息' , '确认删除?' , function(r){
				if(r){
						$.post('userManage/delUser' , {id:row.userId} , function(result){
							if (result.success) {
								$('#t_datagrid').datagrid('unselectAll');
								$('#t_datagrid').datagrid('reload');
								
								$.messager.show({
									title:'提示信息!' , 
									msg:result.msg
								});
							} else {
								$.messager.show({ // show error message
											title : 'Error',
											msg : result.msg
										});
							}
							
						},'json');
				} else {
					return ;
				}
		});

		} else {
			$.messager.show({
				title:'提示信息!',
				msg:'选择一行记录进行删除!'
			});
		}
	}  

	//js方法：序列化表单 			
	function serializeForm(form){
		var obj = {};
		$.each(form.serializeArray(),function(index){
			if(obj[this['name']]){
				obj[this['name']] = obj[this['name']] + ','+this['value'];
			} else {
				obj[this['name']] =this['value'];
			}
		});
		//console.info(obj);
		return obj;
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
						<h1>系统管理 >> 用户管理</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">
						<div class="ywcx-content1">
							<form action="#" method="post" id="mysearch">
								<table class="table-left" style="width: 100%">
									<tr>
										<td>用户名称：<input class="easyui-text" size=20 id="name"
											name="name" data-options="required:false" /></td>
										<td>角色：<select name="roleId" id="searchroleId"></select></td>
										<td></td>
										<td colspan="2" align="center">
											<a id="searchbtn" class="easyui-linkbutton">查询</a> 
											<a id="clearbtn" class="easyui-linkbutton">清空</a>
										</td>
									</tr>
								</table>
							</form>
						</div>
						<div style="margin: 5px 0;"></div>
						<div>
							<table id="t_datagrid"></table>
							<div id="menu" class="easyui-menu"
								style="width: 120px; display: none;">
								<div onclick="append();" iconCls="icon-add">增加</div>
								<div onclick="remove();" iconCls="icon-remove">删除</div>
								<div onclick="edit();" iconCls="icon-edit">编辑</div>
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
		<div id="mydialog" class="easyui-dialog" title="新增用戶"
			data-options="modal:true,closed:true,iconCls:'icon-save'"
			style="width: 580px; height: 350px; padding: 10px 0 10px 0px">
			<form id="myform" method="post" novalidate>
				<table class="table-left" height=260 align="center">
					<tr>
						<td>登录名称：</td>
						<td colspan="2">
						<input name="userId" type="hidden"/>
						<input class="easyui-validatebox" type="text"
							name="loginName" data-options="required:true" /></td>
						<td>用户名称：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="name" data-options="required:true" /></td>
					</tr>
					<tr>
						<td>密码：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="pwd"  /></td>
						<td>代码：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="code"  data-options="required:true"/></td>
					</tr>
					<tr>
						<td>验证密码：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="pwd1" ></td>
						<td>助记码1：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="inputCode1" data-options="required:true"></td>
					</tr>
					<tr>
						<td>用户状态：</td>
						<td colspan="2"><select class="easyui-combobox" name="state"
							data-options="required:true,panelHeight:'auto'">
								<option value="0">正常</option>
								<option value="1">停用</option>
						</select></td>
						<td>助记码2：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="inputCode2" /></td>
					</tr>
					<tr>
						<td>角色：</td>
						<td colspan="2"><select name="roleId" style="width: 156px;" id="roleId"></select></td>
						<td>助记码3：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="inputCode3" /></td>
					</tr>
					<tr>
						<td>描述：</td>
						<td colspan="5"><textarea rows="3" cols="53"
								class="easyui-text" name="description"></textarea></td>
					</tr>
					<tr align="center">
						<td colspan="6"><a id="btn1" class="easyui-linkbutton">确定</a>
							<a id="btn2" class="easyui-linkbutton">关闭</a></td>
					</tr>
				</table>
			</form>
			<div style="margin: 5px 0;"></div>
			
		</div>
	</div>
	<!--新增申请页面结束-->

</body>
</html>
