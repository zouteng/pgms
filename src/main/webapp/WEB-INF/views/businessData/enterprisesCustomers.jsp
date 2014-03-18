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
           	var flag ;	
	$(function(){
		headscroll();//通知滚动
			/**
			 *	初始化数据表格  
			 */
			$('#t_datagrid').datagrid({
					idField:'enterprisesId' ,		//只要创建数据表格 就必须要加 ifField
					title:'' ,
					width:799 ,
					height:335,
					url:'${pageContext.request.contextPath}/enterprisesCustomers/datagrid' ,
					fitColumns:true ,  
					striped: true ,					//隔行变色特性 
					loadMsg: '数据正在加载,请耐心的等待...' ,
					singleSelect:true ,				//单选模式 
					columns:[[
						{
							field:'enterprisesId' ,
							title:'企业代码' ,
							width:100 ,
							align:'center',
							sortable : true
						},
						{
							field:'chinesename' ,
							title:'企业名称' ,
							width:150 
							
						},{
							field:'country' ,
							title:'所在国家/城市' ,
							width:150
							 
						},{
							field:'zipcode' , 
							title:'邮编' ,
							width:90 
						},{
							field:'tel' ,
							title:'电话' ,
							width:90 
						},{
							field:'typeId' , 
							title:'企业类型' , 
							width:150,
							formatter:function(value,row,index){
								if(value=='ZS32'){return 'Internal group-SAIC';}
								if(value=='ZS33'){return 'Internal group-GM-foreign';}
								if(value=='ZS34'){return 'Internal group-GM-China';}
								if(value=='ZS35'){return 'Internal group-GM-and-SAIC';}
								if(value=='ZS36'){return 'Internal group-foreign';}
								if(value=='ZS37'){return 'Internal group-local';}
								if(value=='Z009'){return 'PATAC One-time account group';}
								return 'others';
								}
						},{
							field:'relationId' , 
							title:'关联关系' ,  
							width:120,
							formatter:function(value,row,index){
								if(value=='P1'){return 'SGM';}
								if(value=='P2'){return 'GM Related';}
								if(value=='P3'){return 'GM CN related';}
								if(value=='P4'){return 'SAIC related';}
								if(value=='P5'){return 'GM and SAIC related';}
								if(value=='P6'){return 'Internal project';}
								if(value=='P7'){return 'IDLE and Others pro';}
								return 'others';
								}
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
			*combobox
			*/
			$('#enterpriseCode')
			.combobox(
					{
						url : '${pageContext.request.contextPath}/enterprisesCustomers/combobox',
						valueField : 'enterprisesId',
						textField : 'enterprisesId',
						filter : function(q, row) {
							var opts = $(this).combobox("options");
							return row[opts.textField].indexOf(q) > -1;
						}
					});
			
			
			/**
			 *  提交表单方法
			 */
			$('#btn1').click(function(){
					if($('#myform').form('validate')){
						$.ajax({
							type: 'post' ,
							url: flag=='add'?'enterprisesCustomers/saveEnterprisesCustomer':'enterprisesCustomers/updateEnterprisesCustomer' ,
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
			$('#myform').form('load',arr[0]);  //调用load方法把所选中的数据load到表单中
		}
	}
	
	//删除
     function remove(){
		var row = $('#t_datagrid').datagrid('getSelected');
		
		if(row){
			$.messager.confirm('提示信息' , '确认删除?' , function(r){
				if(r){
						$.post('enterprisesCustomers/delEnterprisesCustomer' , {id:row.enterprisesId} , function(result){
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
						<h1>业务数据 >> 企业信息</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">
						<div class="ywcx-content1">
							<form action="#" method="post" id="mysearch">
								<table class="table-left" style="width: 100%;border:1">
									<tr>
										<td>企业代码：</td>
										<td colspan="2"><input class="easyui-combobox"
											id="enterpriseCode" name="enterprisesId"
											data-options="required:false" /></td>
										<td>企业名称：</td>
										<td colspan="2"><input class="easyui-text" 
											id="enterpriseName" name="chinesename"
											data-options="required:false" /></td>
									</tr>
									<tr>
										<td>企业类型：</td>
										<td colspan="2"><select class="easyui-combobox"
											id="enterpriseType" name="typeId"
											data-options="required:false">
												<option value="">请选择</option>
												<option value="ZS32">Internal group-SAIC</option>
												<option value="ZS33">Internal group-GM-foreign</option>
												<option value="ZS34">Internal group-GM-China</option>
												<option value="ZS35">Internal group-GM-and-SAIC</option>
												<option value="ZS36">Internal group-foreign</option>
												<option value="ZS37">Internal group-local</option>
												<option value="Z009">PATAC One-time account group</option>

										</select></td>

										<td>关联关系：</td>
										<td colspan="2"><select class="easyui-combobox"
											id="relationship" name="relationId"
											data-options="required:false">
												<option value="">请选择</option>
												<option value="P1">SGM</option>
												<option value="P2">GM Related</option>
												<option value="P3">GM CN related</option>
												<option value="P4">SAIC related</option>
												<option value="P5">GM and SAIC related</option>
												<option value="P6">others</option>
												<option value="P7">Internal project</option>
												<option value="P8">IDLE and Others pro</option>
										</select></td>
									</tr>
									<tr>
										<td></td>
										<td colspan="2"></td>
										<td colspan="3" align="center">
										<a id="searchbtn" class="easyui-linkbutton">查询</a> <a id="clearbtn" class="easyui-linkbutton">清空</a>
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
		<div id="mydialog" class="easyui-dialog" title="客户企业信息"
			data-options="modal:true,closed:true,iconCls:'icon-save'"
			style="width: 580px; height: 350px; padding: 10px 0 10px 0px">
			<form id="myform" method="post" novalidate>
				<table class="table-left" height=260 align="center">
					<tr>
						<td>企业中文名称：</td>
						<td colspan="5"><input class="easyui-validatebox" size=65
							type="text" name="chinesename" data-options="required:true" /></td>
					</tr>
					<tr>
						<td>企业英文名称：</td>
						<td colspan="5"><input class="easyui-validatebox" type="text"
							size=65 name="englishname" data-options="required:false" /></td>
					</tr>
					<tr>
						<td>企业代码：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="enterprisesId" data-options="required:true" id="eid" /></td>
					</tr>
					<tr>
						<td>所在国家</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="country" data-options="required:true"></td>
						<td>所在城市</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="number" data-options="required:true"></td>
					</tr>
					<tr>
						<td>企业地址：</td>
						<td colspan="5"><input class="easyui-validatebox" type="text"
							size=65 name="address" data-options="required:false" /></td>
					</tr>
					<tr>
						<td>邮编：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="zipcode" data-options="required:false" /></td>
						<td>联系电话：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="tel" data-options="required:true" /></td>
					</tr>
					<tr>
						<td>传真：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="fax" /></td>
					</tr>
					<tr>
						<td>开户银行：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="depositbank" /></td>
						<td>开户帐号：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="accounts" /></td>
					</tr>
					<tr>
						<td>企业类型</td>
						<td colspan="2"><select class="easyui-combobox" name="typeId"
							data-options="required:true">
								<option value="ZS32">Internal group-SAIC</option>
								<option value="ZS33">Internal group-GM-foreign</option>
								<option value="ZS34">Internal group-GM-China</option>
								<option value="ZS35">Internal group-GM-and-SAIC</option>
								<option value="ZS36">Internal group-foreign</option>
								<option value="ZS37">Internal group-local</option>
								<option value="Z009">PATAC One-time account group</option>
						</select></td>
						<td>关联关系</td>
						<td colspan="2"><select class="easyui-combobox"
							name="relationId" data-options="required:true">
								<option value="P1">SGM</option>
								<option value="P2">GM Related</option>
								<option value="P3">GM CN related</option>
								<option value="P4">SAIC related</option>
								<option value="P5">GM and SAIC related</option>
								<option value="P6">others</option>
								<option value="P7">Internal project</option>
								<option value="P8">IDLE and Others pro</option>
						</select></td>
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
