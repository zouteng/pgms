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
<title>实时车辆---上海通用汽车/泛亚技术中心研发试验中心</title>
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
						<h1>现场监控 >> 实时车辆</h1>
					</div>
					<div class="table-t-r"></div>
				</div>
				<div class="table-m">
					<div class="table-m-l"></div>
					<div class="table-m-m">
						<div style="margin: 10px"></div>
						<div id="p1" style="width:"
							100%";height:"100%";padding:10px;float:left">
							<div id="p11" class="easyui-panel" title="车辆监控"
								style="width: auto; height: 421px; padding: 10px;"
								data-options="iconCls:'icon-save',collapsible:true,maximizable:true">
								&nbsp; <span style="display: block; text-align: center">&nbsp;</span>
								<span style="display: block; text-align: center">&nbsp;</span> <span
									style="display: block; text-align: center">&nbsp;</span> <span
									style="display: block; text-align: center">嵌入GPS监控页面</span>
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
		var editIndex = undefined;
		function endEditing() {
			if (editIndex == undefined) {
				return true
			}
			if ($('#dg').datagrid('validateRow', editIndex)) {
				var ed = $('#dg').datagrid('getEditor', {
					index : editIndex,
					field : 'productid'
				});
				var productname = $(ed.target).combobox('getText');
				$('#dg').datagrid('getRows')[editIndex]['productname'] = productname;
				$('#dg').datagrid('endEdit', editIndex);
				editIndex = undefined;
				return true;
			} else {
				return false;
			}
		}
		function onClickRow(index) {
			if (editIndex != index) {
				if (endEditing()) {
					$('#dg').datagrid('selectRow', index).datagrid('beginEdit',
							index);
					editIndex = index;
				} else {
					$('#dg').datagrid('selectRow', editIndex);
				}
			}
		}
		function append() {
			if (endEditing()) {
				$('#dg').datagrid('appendRow', {
					status : 'P'
				});
				editIndex = $('#dg').datagrid('getRows').length - 1;
				$('#dg').datagrid('selectRow', editIndex).datagrid('beginEdit',
						editIndex);
			}
		}
		function remove() {
			if (editIndex == undefined) {
				return
			}
			$('#dg').datagrid('cancelEdit', editIndex).datagrid('deleteRow',
					editIndex);
			editIndex = undefined;
		}
		function accept() {
			if (endEditing()) {
				$('#dg').datagrid('acceptChanges');
			}
		}
		function reject() {
			$('#dg').datagrid('rejectChanges');
			editIndex = undefined;
		}
		function getChanges() {
			var rows = $('#dg').datagrid('getChanges');
			alert(rows.length + ' rows are changed!');
		}
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
	</script>
</body>
</html>