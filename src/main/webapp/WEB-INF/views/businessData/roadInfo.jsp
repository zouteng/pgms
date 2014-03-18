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
					idField:'roadId' ,		
					title:'' ,
					width:799 ,
					height:330,
					url:'roadInfo/datagrid' ,
					fitColumns:true ,  
					striped: true ,					//隔行变色特性 
					loadMsg: '数据正在加载,请耐心的等待...' ,
					singleSelect:true ,				//单选模式 
					columns:[[
						{
							field:'roadId' ,
							title:'道路编号' ,
							width:100 ,
							align:'center',
							sortable : true
						},
						{
							field:'chinesename' ,
							title:'道路名称' ,
							width:150 ,
							align:'center'
							
						},{
							field:'levelId' ,
							title:'道路级别' ,
							width:150,
							align:'center'
							 
						},{
							field:'status' , 
							title:'道路状态' ,
							width:90 ,
							align:'center'
						},{
							field:'parentroadId' ,
							title:'上级道路' ,
							width:90 ,
							align:'center'
						},{
							field:'issamecar' , 
							title:'仅同企业车辆进入' , 
							width:90,
							align:'center'
							
						},{
							field:'carcounts' , 
							title:'车辆上限数' ,  
							width:90,
							align:'center'
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
			$('#levelId')
			.combobox(
					{
						url : 'roadInfo/listAll',
						valueField : 'levelId',
						textField : 'levelId',
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
							url: flag=='add'?'roadInfo/saveRoadInfo':'roadInfo/updateRoadInfo' ,
							cache:false ,
							data:$('#myform').serialize() ,
							dataType:'json' ,
							success:function(result){
								//1 关闭窗口
								$('#mydialog').dialog('close');
								//2刷新datagrid 
								$('#t_datagrid').datagrid('reload');
								$('#levelId').combobox('reload');
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
				title:'新增道路信息' 
		});
		$('#myform').find('[name=roadId]').removeAttr('readonly');
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
				title:'修改道路信息'
			});
			$('#mydialog').dialog('open'); //打开窗口
			$('#myform').get(0).reset();   //清空表单数据 
			$('#myform').form('load',arr[0]);  //调用load方法把所选中的数据load到表单中
			$('#myform').find('[name=roadId]').attr('readonly', 'readonly');
		}
	}
	
	//删除
     function remove(){
		var row = $('#t_datagrid').datagrid('getSelected');
		
		if(row){
			$.messager.confirm('提示信息' , '确认删除?' , function(r){
				if(r){
						$.post('roadInfo/delroadInfo' , {id:row.roadId} , function(result){
							if (result.success) {
								$('#t_datagrid').datagrid('unselectAll');
								$('#t_datagrid').datagrid('reload');
								$('#levelId').combobox('reload');
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
	
	
<title>道路信息---上海通用汽车/泛亚技术中心研发试验中心</title>
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
						<h1>业务数据 >> 道路信息</h1>
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
										<td>道路编号：</td>
										<td colspan="2"><input class="easyui-text" type="text"
											name="roadId" data-options="required:false" id="roadId" /></td>
										<td>道路名称：</td>
										<td colspan="2"><input class="easyui-text" size=30
											type="text" name="chinesename" data-options="required:false"
											id="chinesename" /></td>
									</tr>
									<tr>
										<td>道路级别：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="levelId" data-options="required:false"
											id="levelId">
										</select></td>
										<td>道路状态：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="status" data-options="required:false"
											id="status">
												<option value="">请选择</option>
												<option >可用</option>
												<option >停用</option>
										</select></td>
									</tr>
									<tr>
										<td></td>
										<td colspan="2"></td>
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
			<div id="mydialog" class="easyui-dialog" title="道路信息"
			data-options="modal:true,closed:true,iconCls:'icon-save'"
			style="width: 580px; height: 370px; padding: 10px 0 10px 0px">

			<table class="table-left" align="right">
				<tr>
					<td></td>
					<td colspan="2"></td>
					<td>更新历史：</td>
					<td colspan="2"><select class="easyui-combobox" type="text"
						name="name" "/></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
			</table>
			<form action="" method="post" id="myform">
				<table class="table-left" height=240 align="center" border="true">
					<tr>
						<td>道路编号：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							name="roadId" data-options="required:true" id="roadid" /></td>
							<td>道路状态：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="status" data-options="required:false">
												<option value="">请选择</option>
												<option >可用</option>
												<option >停用</option>
										</select></td>
					</tr>
					<tr>
						<td>道路中文名称：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							size=20 name="chinesename" data-options="required:true" /></td>
						<td>道路英文名称：</td>
						<td colspan="2"><input class="easyui-validatebox" type="text"
							size=20 name="englishname" data-options="required:true" /></td>
					</tr>
					<tr>
						<td>上级道路：</td>
						<td colspan="2"><select class="easyui-combobox" type="text"
							name="parentroadId" data-options="required:false" /></td>
						<td>道路级别：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="levelId" ></td>
					</tr>
					<tr>
						<td>仅同企业车辆进入：</td>
						<td colspan="2"><select class="easyui-combobox" type="text"
							size=20 name="issamecar" data-options="required:true">
								<option value="">请选择</option>
								<option >是</option>
								<option >否</option>
						</select></td>
						<td>车辆上限数：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="carcounts" data-options="required:true" /></td>
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

