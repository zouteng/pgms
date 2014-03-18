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
<title>现场监控---上海通用汽车/泛亚技术中心研发试验中心</title>
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
						<h1>现场监控</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">
						<div class="right-content1">
							<div class="News">
								<table class="table-left">
									<tr>
										<td>

											<table class="easyui-datagrid" border="1" title="车辆违规预警"
												style="margin-top: 10px; width: 265px; height: 200px; border: 'true'; margin-left: 10px;"
												data-options="collapsible:true,maximizable:true,singleSelect:true,url:'datagrid/wsRoad.json'">
												<thead>
													<tr>
														<th data-options="field:'carNum',width:60">车贴号</th>
														<th data-options="field:'beginTime',width:60">发生时间</th>
														<th data-options="field:'type',width:60">违规类型</th>
														<th data-options="field:'status',width:60">处理状态</th>
													</tr>
												</thead>
											</table>
										</td>
										<td>
											<table class="easyui-datagrid" border="1" title="车辆实时信息"
												style="margin-top: 10px; width: 255px; height: 200px; border: 'true'; margin-left: 10px;"
												data-options="collapsible:true,maximizable:true,singleSelect:true,toolbar:'#tw',url:'datagrid/ssRoad.json'">
												<thead>
													<tr>
														<th data-options="field:'carNum',width:60">车贴号</th>
														<th data-options="field:'beginTime',width:60">发生时间</th>
														<th data-options="field:'state',width:100">实时状态</th>
													</tr>
												</thead>
											</table>
											<div id="tw" style="height: auto">
												<table class="table-left">
													<tr align="right" style="border: 0px">
														<td align="right"><select class="easyui-combobox"
															type="text" name="name" data-options="required:false" /></td>
														<td><a href="javascript:void(0)"
															class="easyui-linkbutton">查询</a></td>
													</tr>
												</table>
											</div>
										</td>
									</tr>
								</table>
							</div>
							<div class="News-b">
								<table class="table-left">
									<tr>
										<td>
											<div class="easyui-panel" title="信息公告"
												style="width: 355px; height: 204px">
												<table border="1" class="News-table">
													<tr>
														<td class="ico"><img src="images/ico.png" /></td>
														<td class="News-b-content">
															由于天气原因，长坡桥道路今日暂停使用。（2013.7.30）</td>
													</tr>
													<tr>
														<td class="ico"><img src="images/ico.png" /></td>
														<td class="News-b-content">高速环道将于2013.8.2上午7：00～10：00进行道路维护
															...... （2013.07.30）</td>
													</tr>
													<tr>
														<td class="ico"><img src="images/ico.png" /></td>
														<td class="News-b-content">由于天气原因，长坡桥道路今日暂停使用。（2013.7.30）</td>
													</tr>
													<tr>
														<td class="ico"><img src="images/ico.png" /></td>
														<td class="News-b-content">高速环道将于2013.8.2上午7：00～10：00进行道路维护
															...... （2013.07.30）</td>
													</tr>
													<tr>
														<td class="ico"><img src="images/ico.png" /></td>
														<td class="News-b-content">由于天气原因，长坡桥道路今日暂停使用。（2013.7.30）</td>
													</tr>
												</table>
											</div>
										</td>
										<td valign="top">
											<table border="1" class="News-table"
												style="width: 160px; height: 140px; margin-left: 5px;">
												<thead class="News-header" height="30">
													<tr>
														<th colspan="5">
															<h3 class="News-title">车辆查询</h3>
														</th>
													</tr>
												</thead>
												<tr>
													<td style="border-bottom: none;">车贴号：</td>
												</tr>
												<tr>
													<td><select class="easyui-combobox" type="text" /></td>
												</tr>
												<tr>
													<td style="border-top: none;"><a
														href="javascript:void(0)" class="easyui-linkbutton"
														onclick="$('#w6').window('open')">查 询</a>
														<div id="w6" class="easyui-window" title="业务申请审批"
															data-options="modal:true,closed:true,iconCls:'icon-save'"
															style="width: 850px; height: 580px; padding: 10px;">
															<form action="#" method="post">
																<table class="table-left">
																	<tr>
																		<td>车贴号</td>
																		<td colspan="2"><input class="easyui-validatebox"
																			type="text" name="name" data-options="required:true" /></td>
																		<td>车辆编号</td>
																		<td colspan="2"><input class="easyui-validatebox"
																			type="text" name="name" data-options="required:true" /></td>
																		<td>车型编号</td>
																		<td colspan="2"><input class="easyui-validatebox"
																			type="text" name="name" data-options="required:true" /></td>
																	</tr>
																	<tr>
																		<td>所属企业</td>
																		<td colspan="2"><input class="easyui-validatebox"
																			type="text" name="name" data-options="required:true" /></td>
																		<td>项目编号</td>
																		<td colspan="2"><input class="easyui-validatebox"
																			type="text" name="name" data-options="required:true" /></td>
																		<td colspan="3"></td>
																	</tr>
																	<tr>
																		<td>GPS设备</td>
																		<td colspan="2"><input class="input-text"
																			type="text" name="name" data-options="required:true"
																			value="在线/不在线" /></td>
																		<td>当前区域</td>
																		<td colspan="2"><input class="input-text"
																			type="text" name="name" data-options="required:true"
																			value="长坡桥" /></td>
																		<td colspan="3"></td>
																	</tr>


																</table>
																<div title="试验场地" class="ywcx-content2">
																	<table>
																		<tr>
																			<td colspan="4">
																				<table class="a-btn" style="text-align: center;">
																					<tr>
																						<td class="w-19">道路</td>
																						<td class="w-19">进入有限</td>
																						<td class="w-19">操作</td>
																						<td class="w-19">备注</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="w-19">长坡桥</td>
																			<td class="w-19">×</td>
																			<td class="w-19">开通</td>
																			<td class="w-19"></td>
																		</tr>
																		<tr>
																			<td>直线环道</td>
																			<td>√</td>
																			<td>&nbsp;</td>
																			<td>更新</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																	</table>
																</div>
															</form>
														</div></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>

							</div>
						</div>
						<div class="right-content2">
							<div class="Road">
								<table class="easyui-treegrid" title="实时道路"
									style="width: 239px; height: 429px"
									data-options="collapsible:true,maximizable:true,singleSelect:true,
																		              url:'datagrid/road.json',
																		              rownumbers: 'false',
																		              idField: 'id',treeField: 'name'">
									<thead>
										<tr>
											<th data-options="field:'name',width:90">道路名称</th>
											<th data-options="field:'begin',width:40">车辆数</th>
											<th data-options="field:'end',width:40">状态</th>
											<th data-options="field:'progress',width:30">&nbsp;</th>
										</tr>
									</thead>
								</table>
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
	<div id="w8" class="easyui-window" title="长坡桥详细信息"
		data-options="modal:true,closed:true,iconCls:'icon-save'"
		style="width: 830px; height: 580px; padding: 10px;">

		<div class="easyui-tabs" style="margin-top: 10px">
			<div title="车辆信息" style="padding: 10px">
				<div>
					<ul class="table-group">
						<li>
							<div class="group-title">
								<table class="shousuo">

								</table>
							</div>
							<div class="group-content" style="display: block">

								<table class="table-left" style="height: 100px;">

									<tr>
										<td>客户企业：</td>
										<td colspan="2"><input class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
										<td>试验项目编号：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
										<td>客户项目编号：</td>
										<td colspan="2"><select class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
									</tr>
									<tr>
										<td>车架号：</td>
										<td colspan="2"><input class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
										<td>车辆编号：</td>
										<td colspan="2"><input class="easyui-combobox"
											type="text" name="name" data-options="required:false" /></td>
										<td>申请单号：</td>
										<td colspan="2"><input class="easyui-text" type="text"
											name="name" data-options="required:false" /></td>
									</tr>
									<tr>
										<td>车贴号：</td>
										<td colspan="2"><input class="easyui-text" type="text"
											name="name" data-options="required:false" /></td>
										<td colspan="3"></td>
										<td colspan="3" align="center"><a
											href="javascript:void(0)" class="easyui-linkbutton"
											onclick="submitForm()">查 询</a> <a href="javascript:void(0)"
											class="easyui-linkbutton" onclick="clearForm()">清 空</a></td>
									</tr>

								</table>
								<table class="auto-style2" style="width: 773px">
									<tr>
										<td colspan="1">车架号</td>
										<td colspan="1">所属企业</td>
										<td colspan="1">车型编号</td>
										<td colspan="1">项目编号</td>
										<td colspan="1">车贴号</td>
										<td colspan="1">实验规范</td>
										<td colspan="1">申请时间</td>
										<td colspan="1">所在道路</td>
									</tr>
									<tr>
										<td>Yuan/KM</td>
										<td>Yuan/KM</td>
										<td>Yuan/H</td>
										<td>Yuan/H</td>
										<td>Yuan/H</td>
										<td>Yuan/H</td>
										<td>Yuan/H</td>
										<td>长坡桥</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
								</table>
							</div>
						</li>
						<li>
							<div class="group-title">
								<table class="shousuo">
									<thead>
										<tr>
											<th style="width: 95px">合计:</th>
											<th style="width: 191px">8量车</th>
										</tr>
									</thead>
								</table>
							</div>
						</li>


					</ul>
				</div>
			</div>
			<div title="车辆权限控制" style="padding: 10px">
				<table class="table-left" style="height: 100px;">

					<tr>
						<td>客户企业：</td>
						<td colspan="2"><input class="easyui-combobox" type="text"
							name="name" data-options="required:false" /></td>
						<td>试验项目编号：</td>
						<td colspan="2"><select class="easyui-combobox" type="text"
							name="name" data-options="required:false" /></td>
						<td>客户项目编号：</td>
						<td colspan="2"><select class="easyui-combobox" type="text"
							name="name" data-options="required:false" /></td>
					</tr>
					<tr>
						<td>车架号：</td>
						<td colspan="2"><input class="easyui-combobox" type="text"
							name="name" data-options="required:false" /></td>
						<td>车辆编号：</td>
						<td colspan="2"><input class="easyui-combobox" type="text"
							name="name" data-options="required:false" /></td>
						<td>申请单号：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="name" data-options="required:false" /></td>
					</tr>
					<tr>
						<td>车贴号：</td>
						<td colspan="2"><input class="easyui-text" type="text"
							name="name" data-options="required:false" /></td>
						<td colspan="3"></td>
						<td colspan="3" align="center"><a href="javascript:void(0)"
							class="easyui-linkbutton" onclick="submitForm()">查 询</a> <a
							href="javascript:void(0)" class="easyui-linkbutton"
							onclick="clearForm()">清 空</a></td>
					</tr>

				</table>

				<table>
					<tr>
						<a href="javascript:void(0)" class="easyui-linkbutton"
							onclick="submitForm()"><font style="color: green">批量开通</font>
						</td></a>
						<a href="javascript:void(0)" class="easyui-linkbutton"
							onclick="submitForm()"><font style="color: red">批量关闭</font>
						</td></a>
					</tr>
					<tr>
						<td></td>
					</tr>
				</table>
				<table class="auto-style2" style="width: 773px">
					<tr>
						<td><input type="checkbox" /></td>
						<td colspan="1">车架号</td>
						<td colspan="1">所属企业</td>
						<td colspan="1">车辆编号</td>
						<td colspan="1">项目编号</td>
						<td colspan="1">车贴号</td>
						<td colspan="1">试验规范</td>
						<td colspan="1">申请时间</td>
						<td colspan="1">车辆权限</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>Yuan/KM</td>
						<td>Yuan/KM</td>
						<td>Yuan/H</td>
						<td>Yuan/H</td>
						<td>Yuan/H</td>
						<td>Yuan/H</td>
						<td>Yuan/H</td>
						<td><font style="color: red">无</font></td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>Yuan/H</td>
						<td>Yuan/H</td>
						<td>Yuan/H</td>
						<td>Yuan/H</td>
						<td>Yuan/H</td>
						<td>Yuan/H</td>
						<td>Yuan/H</td>
						<td><font style="color: green">有</font></td>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</div>
		</div>
	</div>



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
		function OpenWindowsp() {
			$('#w8').window('open');
		}
	</script>
</body>
</html>

