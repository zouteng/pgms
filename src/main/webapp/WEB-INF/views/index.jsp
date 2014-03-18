<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>首页---上海通用汽车/泛亚技术中心研发试验中心</title>
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
					<%-- 	 <jsp:include page="menu.jsp" flush="false"/>   --%>
					</div>
					<div class="table-m-r"></div>
				</div>
				<div class="table-b">
					<div class="table-b-l"></div>
					<div class="table-b-m"></div>
					<div class="table-b-r"></div>
				</div>
			</div>
			<div class="right" id="mainpanel">
				<div class="table-t">
					<div class="table-t-l"></div>
					<div class="table-t-m">
						<h1>首页</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">
						<div class="right-content1">
							<div class="News">
								<table class="easyui-datagrid" title="待办工作"
									style="width: 530px; height: 204px"
									data-options="collapsible:true,maximizable:true,singleSelect:true,url:'datagrid/tasklist.json'">

									<thead>
										<tr>
											<th data-options="field:'itemid',width:60">任务编号</th>
											<th data-options="field:'productid',width:100">任务类型</th>
											<th data-options="field:'listprice',width:180">任务描述</th>
											<th data-options="field:'unitcost',width:60">申请时间</th>
											<th data-options="field:'attr1',width:60">申请人</th>
										</tr>
									</thead>
								</table>
							</div>
							<div class="News-b">
								<div class="easyui-panel" title="信息公告"
									style="width: 530px; height: 204px">
									<table border="1" class="News-table">
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
							</div>
						</div>
						<div class="right-content2">
							<div class="News-l">
								<div class="easyui-panel" title="场内天气（2013.9.2 13:00:00）"
									style="width: 239px; height: 153px">
									<table border="1" class="News-table">
										<tr>
											<td colspan="2" align="right">采集点: &nbsp;&nbsp; <select
												class="easyui-combobox" panelHeight="auto"
												style="width: 120px">
													<option value="1">噪声路</option>
													<option value="2">直线性能</option>
													<option value="3">长坡桥</option>
													<option value="4">耐久区</option>
											</select></td>
										</tr>
										<tr>
											<td>温度</td>
											<td>70.c</td>
										</tr>
										<tr>
											<td>风度</td>
											<td>60%</td>
										</tr>
										<tr>
											<td>湿度</td>
											<td>3.2</td>
										</tr>
										<tr>
											<td>可见度</td>
											<td>2</td>
										</tr>
									</table>
								</div>
							</div>
							<div class="Road">
								<table class="easyui-treegrid" title="实时道路"
									style="width: 239px; height: 255px"
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
	</script>
</body>
</html>