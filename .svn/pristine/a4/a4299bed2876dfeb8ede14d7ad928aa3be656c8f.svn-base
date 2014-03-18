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
		headscroll();
			$('#t_datagrid').datagrid({
					idField:'deviceId' ,
					title:'' ,
					width:799 ,
					height:335,
					url:'deviceManage/datagrid' ,
					fitColumns:true ,  
					striped: true ,					//隔行变色特性 
					loadMsg: '数据正在加载,请耐心的等待...' ,
					singleSelect:true ,				//单选模式 
					columns:[[
						{
							field:'deviceId' ,
							title:'设备编号' ,
							width:150 ,
							align:'center',
							sortable : true
						},
						{
							field:'devicetypeId' ,
							title:'设备类型' ,
							width:150 ,
							formatter: function(value,row,index){
								if(value==01){ return 'GPS设备';}
								if(value==02){return '对讲机';}
								return '其他';
								}
							
						},{
							field:'devicestatusId' ,
							title:'设备状态' ,
							width:150,
							formatter: function(value,row,index){
								if(value==0){ return '无效';}
								if(value==1){return '空闲';}
								if(value==2){return '领取';}
								return '其他';
								}
							 
						},{
							field:'inouttype' , 
							title:'场内/场外' ,
							width:90 ,
							formatter:function(value,row,index){
								if(value==true){return '场内设备';}
								if(value==false){return '场外设备';}
								return '其他';
								}
						},{
							field:'inusecarid' ,
							title:'当前使用车辆' ,
							width:90 
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
			 *  提交表单方法
			 */
			$('#btn1').click(function(){
					if($('#myform').form('validate')){
						$.ajax({
							type: 'post' ,
							url: flag=='add'?'deviceManage/saveDevice':'deviceManage/updateDevice' ,
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
				title:'新增设备信息' 
		});
		$('#myform').get(0).reset();
		$('#myform').find('[name=deviceId]').removeAttr('readonly');
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
				title:'修改设备信息'
			});
			$('#mydialog').dialog('open'); //打开窗口
			$('#myform').get(0).reset();   //清空表单数据 
			$('#myform').form('load',arr[0]);  //调用load方法把所选中的数据load到表单中
			$('#myform').find('[name=deviceId]').attr('readonly', 'readonly');
		}
	}
	
	//删除
     function remove(){
		var row = $('#t_datagrid').datagrid('getSelected');
		
		if(row){
			$.messager.confirm('提示信息' , '确认删除?' , function(r){
				if(r){
						$.post('deviceManage/delDevice' , {id : row.deviceId} , function(result){
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
		
	function serializeForm(form){
		var obj = {};
		$.each(form.serializeArray(),function(index){
			if(obj[this['name']]){
				obj[this['name']] = obj[this['name']] + ','+this['value'];
			} else {
				obj[this['name']] =this['value'];
			}
		});
		return obj;
	}
</script>
	
	
<title>设备管理---上海通用汽车/泛亚技术中心研发试验中心</title>
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
						<h1>业务数据 >> 设备管理</h1>
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
										<td>设备类型：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="devicetypeId" data-options="required:false"
											id="devicetypeId">
												<option value="">请选择</option>
												<option value="01">GPS设备</option>
												<option value="02">对讲机</option>
										</select></td>
										<td>设备编号：</td>
										<td colspan="5"><input class="easyui-text" type="text"
											name="deviceId" data-options="required:false" id="deviceId" /></td>
									</tr>
									<tr>
										<td>设备状态：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="devicestatusId"
											data-options="required:false" id="devicestatusId">
												<option value="">请选择</option>
												<option value="1">空闲</option>
												<option value="2">领取</option>
												<option value="0">无效</option>
										</select></td>
										<td>场内/场外：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="inouttype" data-options="required:false"
											id="inouttype">
												<option value="">请选择</option>
												<option value="true">场内设备</option>
												<option value="false">场外设备</option>
										</select></td>
									</tr>
									<tr>
										<td></td>
										<td colspan="2"></td>
										<td colspan="3"></td>
										<td colspan="3" align="center">
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
		<div id="mydialog" class="easyui-dialog" title="设备管理"
			data-options="modal:true,closed:true,iconCls:'icon-save'"
			style="width: 320px; height: 260px; padding: 10px 0 10px 0px">
			<form id="myform" method="post">
				<table class="table-left" height=170 align="center">
					<tr>
						<td>设备类型：</td>
						<td colspan="2"><select class="easyui-combobox" type="text"
							name="devicetypeId" data-options="required:true">
								<option value="">请选择</option>
								<option value="01">GPS设备</option>
								<option value="02">对讲机</option>
						</select></td>
					</tr>
					<tr>
						<td>设备编号：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="deviceId" data-options="required:false" id="deviceid" /></td>
					</tr>
					<tr>
					<td>设备状态：</td>
					<td colspan="2"><select class="easyui-combobox" type="text"
						name="devicestatusId" data-options="required:true">
							<option value="">请选择</option>
							<option value="1">空闲</option>
							<option value="2">领取</option>
							<option value="0">无效</option>
					</select></td>
				</tr><tr>
					<td>场内/场外</td>
					<td colspan="2"><select class="easyui-combobox" type="text"
						name="inouttype" data-options="required:true" id="isinout">
							<option value="">请选择</option>
							<option value="true">场内设备</option>
							<option value="false">场外设备</option>
					</select></td>
					</tr>
					<tr>
					<td>当前使用车辆</td>
					<td colspan="2"><input class="easyui-text" type="text"
						name="inusecarid" data-options="required:false"></td>
					</tr>
					<tr align="center">
						<td colspan="3"><a id="btn1" class="easyui-linkbutton">确定</a>
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

