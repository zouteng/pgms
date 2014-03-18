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
<script type="text/javascript" src="javascript/datagrid-detailview.js"></script>
<script type="text/javascript">
	function OpenWindowsp() {
		$('#wa2').window('open');
	};
</script>
<title>外部项目费用确认单---上海通用汽车/泛亚技术中心研发试验中心</title>
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
						<h1>费用结算 >> 外部项目费用确认</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">
						<div style="margin: 5px 0;"></div>
						<div class="easyui-tabs"
							style="width: 799px; height: 431px; border: 'false'">
							<div title="已生成费用确认单">
								<div class="ywcx-content1">
									<form action="#" method="post">
										<table class="table-left" style="width: 100%">
											<tr>
												<td>试验项目号：</td>
												<td colspan="2"><input class="easyui-combobox"
													type="text" name="name" data-options="required:false" /></td>
												<td>确认单号：</td>
												<td colspan="2"><select class="easyui-combobox"
													type="text" name="name" data-options="required:false" /></td>
												<td>客户企业：</td>
												<td colspan="2"><input class="easyui-combobox"
													type="text" name="name" data-options="required:false" /></td>

											</tr>
											<tr>
												<td>生成时间从</td>
												<td colspan="2"><input class="easyui-datebox"
													type="text" name="name" data-options="required:false" /></td>
												<td>到</td>
												<td colspan="2"><input class="easyui-datebox"
													type="text" name="name" data-options="required:false" /><span
													class="databox"></span></td>
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
										style="width: 795px; height: 300px; padding: 5px"
										data-options="collapsible:true,maximizable:true,singleSelect:true,url:'datagrid/external_list.json',toolbar:'#tb_2',
																	              pagination:true,pageSize:10,
																	              ">

										<thead>
											<tr>
												<th data-options="field:'No',width:80,align:'center'"
													rowspan="2">确认单号</th>
												<th data-options="field:'No',width:80,align:'center'"
													rowspan="2">试验项目号</th>
												<th data-options="field:'name',width:80,align:'center'"
													rowspan="2">客户企业</th>
												<th data-options="field:'name',width:80,align:'center'"
													rowspan="2">项目负责人</th>
												<th data-options="field:'subpjno',width:80,align:'center'"
													rowspan="2">开始时间</th>
												<th data-options="field:'reason',width:80,align:'center'"
													rowspan="2">结束时间</th>
												<th data-options="field:'reason',width:80,align:'center'"
													rowspan="2">生成时间</th>
												<th data-options="field:'reason',width:80,align:'center'"
													rowspan="2">处理状态</th>
											</tr>
										</thead>
									</table>
									<div id="tb_2" style="height: auto">
										<div></div>
									</div>
								</div>
							</div>
							<div title="待生成费用确认单">
								<div class="ywcx-content1">
									<form action="#" method="post">
										<table class="table-left" style="width: 100%">
											<tr>
												<td>试验项目号：</td>
												<td colspan="2"><input class="easyui-combobox"
													type="text" name="name" data-options="required:false" /></td>
												<td>客户企业：</td>
												<td colspan="2"><input class="easyui-combobox"
													type="text" name="name" data-options="required:false" /></td>
											</tr>
											<tr>
												<td>统计时间从</td>
												<td colspan="2"><input class="easyui-datebox"
													type="text" name="name" data-options="required:false" /></td>
												<td>到</td>
												<td colspan="2"><input class="easyui-datebox"
													type="text" name="name" data-options="required:false" /><span
													class="databox"></span></td>
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
										style="width: 769px; height: 310px; padding: 5px"
										data-options="collapsible:true,maximizable:true,singleSelect:false,url:'datagrid/external_list.json',toolbar:'#tb_1',
																	              pagination:true,pageSize:10">

										<thead>
											<tr>
												<th data-options="field:'ck',checkbox:true" rowspan="2"></th>
												<th data-options="field:'No',width:80,align:'center'"
													rowspan="2">试验项目号</th>
												<th data-options="field:'name',width:80,align:'center'"
													rowspan="2">客户企业</th>
												<th data-options="field:'name',width:80,align:'center'"
													rowspan="2">项目负责人</th>
												<th data-options="field:'pjno',width:80,align:'center'"
													rowspan="2">项目结余预算</th>
												<th data-options="field:'subpjno',width:80,align:'center'"
													rowspan="2">开始时间</th>
												<th data-options="field:'reason',width:80,align:'center'"
													rowspan="2">结束时间</th>
											</tr>
										</thead>
									</table>
									<div id="tb_1" style="height: auto">
										<div>
											<a href="javascript:void(0)"
												onclick="$('#wa1').window('open')" class="easyui-linkbutton"
												iconCls="icon-add" plain="true">生成结算单</a>
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
	<!--弹出窗口开始-->
	<!--确认单弹出页面开始-->
	<div class="ywcx-content2">
		<div id="wa2" class="easyui-window" title="外部项目费用确认单"
			data-options="modal:true,closed:true,iconCls:'icon-save'"
			style="width: 750px; height: 580px; padding: 10px 0 10px 0px">
			<div id="child1_tab" class="easyui-tabs"
				style="width: 728px; height: 490px; padding: 0px 3px 3px 3px;">
				<div title="车辆费用明细">
					<div style="margin: 10px;"></div>
					<table class="easyui-datagrid" title=""
						style="width: 650; height: 450px; padding: '0px 10px 0px 10px'"
						data-options="url:'datagrid/cost_detail.json',
								              rownumbers: 'false',
								              idField: 'id',treeField: 'name',toolbar:'#child_tb1',showFooter: true">
						<thead>
							<tr>
								<th data-options="field:'ck',checkbox:true" rowspan="2"></th>
								<th data-options="field:'NO',width:65" rowspan="2">车贴号</th>
								<th data-options="field:'E_NO',width:65" rowspan="2">客户项目号</th>
								<th data-options="field:'E_NO',width:65" rowspan="2">外部车辆编号</th>
								<th colspan="5">场地费用</th>
								<th colspan="2">杂费</th>
								<th colspan="5">油费</th>
							</tr>
							<tr>
								<th data-options="field:'count',width:60">按里程计数</th>
								<th data-options="field:'value',width:60">长坡桥</th>
								<th data-options="field:'money',width:60">直线性能路</th>
								<th data-options="field:'count',width:60">高速环道</th>
								<th data-options="field:'value',width:60">....</th>
								<th data-options="field:'money',width:60">设备租赁</th>
								<th data-options="field:'value',width:60">卡证费</th>
								<th data-options="field:'value',width:60">#93</th>
								<th data-options="field:'money',width:60">#97</th>
								<th data-options="field:'count',width:60">#0</th>
								<th data-options="field:'value',width:60">欧IV</th>
								<th data-options="field:'money',width:60">#95</th>
							</tr>
						</thead>
					</table>
					<div id="child_tb1" style="height: auto">
						<div>
							<a href="javascript:void(0)"
								onclick="$('#child_1_1').window('open')"
								class="easyui-linkbutton" iconCls="icon-add" plain="true">移除车辆</a>
							<a href="javascript:void(0)"
								onclick="$('#child_1_2').window('open')"
								class="easyui-linkbutton" iconCls="icon-remove" plain="true">引入车辆</a>
						</div>
					</div>
					<div style="margin: 10px 0;"></div>
				</div>
				<div title="其他费用明细">
					<div style="margin: 10px;"></div>
					<table class="easyui-datagrid" title=""
						style="width: 650; height: 430px; padding: '0px 10px 0px 10px'"
						data-options="url:'datagrid/othercost_detail.json',
								              rownumbers: 'false',
								              idField: 'id',treeField: 'name',toolbar:'#child_tb3',showFooter: true">
						<thead>
							<tr>
								<th data-options="width:90">客户项目号</th>
								<th data-options="width:90">驾驶考试</th>
								<th data-options="width:90">卡证</th>
								<th data-options="width:90">洗车</th>
								<th data-options="width:90">车间租赁(年)</th>
								<th data-options="width:90">车间租赁(月)</th>
								<th data-options="width:90">人工费</th>
							</tr>
							<tr>
								<th data-options="field:'E_NO',width:90">计量单位</th>
								<th data-options="field:'progress',width:90">人次</th>
								<th data-options="field:'count',width:90">张</th>
								<th data-options="field:'count',width:90">次</th>
								<th data-options="field:'count',width:90">年</th>
								<th data-options="field:'count',width:90">月</th>
								<th data-options="field:'count',width:90">人天</th>
							</tr>
						</thead>
					</table>
					<div id="child_tb3" style="height: auto">
						<div>
							<a href="javascript:void(0)"
								onclick="$('#child_1_1').window('open')"
								class="easyui-linkbutton" iconCls="icon-add" plain="true">编辑</a>
							<a href="javascript:void(0)"
								onclick="$('#child_1_2').window('open')"
								class="easyui-linkbutton" iconCls="icon-remove" plain="true">保存</a>
						</div>
					</div>
				</div>
				<div title="操作记录">
					<div style="margin: 10px 0;"></div>
					<table class="easyui-datagrid" title=""
						style="width: 650; height: 470px; padding: '0px 10px 0px 10px'"
						data-options="url:'datagrid/road.json',
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
			<div style="margin: 10px 0;"></div>
			<div align='center'>
				<a href="javascript:void(0)" class="easyui-linkbutton"
					onclick="submitForm()">保 存</a> <a href="javascript:void(0)"
					class="easyui-linkbutton" onclick="submitForm()">提 交</a> <a
					href="javascript:void(0)" class="easyui-linkbutton"
					onclick="submitForm()">取 消</a>
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
			data-options="url:'datagrid/road.json',
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
		function OpenWindows() {
			$('#wa2').window('open');
		};
	</script>
</body>
</html>
