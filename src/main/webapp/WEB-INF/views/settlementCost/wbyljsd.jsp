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
    <title>外部项目油料结算单---上海通用汽车/泛亚技术中心研发试验中心</title>
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
                    <span class="gd-ico"></span>
                    <span class="msg-text">张小三，您好：欢迎登录</span>
                </div>
                <div class="hot">
                    <div class="hot-left"></div>
                    <div id="demo">
                        <div id="indemo">
                            <div id="demo1">
                                <a href="#">实时公告栏</a>
                                <a href="#">由于天气原因...</a>
                                <a href="#">高速环道由于...</a>
                                <a href="#">实时公告栏</a>
                                <a href="#">由于天气原因...</a>
                                <a href="#">高速环道由于...</a>
                            </div>
                            <div id="demo2"></div>
                        </div>
                    </div>
                    <div class="hot-right">
                    </div>
                </div>
                <div class="msg">
                    <div class="msg-inner">
										<span class="msg-text"><a href="javascript:void(0)" onclick="" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改密码</a></span>
                    </div>
                    <div class="msg-inner">
										<span class="msg-text"><a href="javascript:void(0)" onclick="" class="easyui-linkbutton" iconCls="icon-help" plain="true">帮&nbsp;&nbsp;&nbsp;&nbsp;助</a></span>
                    </div>
                    <div class="msg-inner">
										<span class="msg-text"><a href="javascript:void(0)" onclick="" class="easyui-linkbutton" iconCls="icon-undo" plain="true">注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</a></span>
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
													<iframe src="menu.html" width=143 height=431  frameborder="no" ></iframe>
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
                        <h1>费用结算　>>　外部油料结算</h1>
                    </div>
                    <div class="table-t-r"></div>
                </div>
                <div class="table-m">
                    <div class="table-m-l"></div>
                    <div class="table-m-m">
                    	<div style="margin:5px 0;"></div>
                    	<div class="easyui-tabs" style="width:799px;height:431px;border:'false'">
                        <div title="已生成结算单">
														<div class="ywcx-content1">
		                            <form action="#" method="post">
		                                <table class="table-left" style="width: 100%">
		                                    <tr>
		                                        <td>试验项目号：</td>
		                                        <td colspan="2">
		                                            <input class="easyui-combobox" type="text" name="name" data-options="required:false" /></td>
		                                        <td>确认单号：</td>
		                                        <td colspan="2">
		                                            <select class="easyui-combobox" type="text" name="name" data-options="required:false" /></td>
		                                        <td>客户企业：</td>
		                                        <td colspan="2">
		                                            <input class="easyui-combobox" type="text" name="name" data-options="required:false" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td>生成时间从</td>
		                                        <td colspan="2">
		                                            <input class="easyui-datebox" type="text" name="name" data-options="required:false" /></td>
		                                        <td>到</td>
		                                        <td colspan="2">
		                                            <input class="easyui-datebox" type="text" name="name" data-options="required:false" /><span class="databox"></span></td>
		                                        <td colspan="3" align="center">
					                                        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">查　询</a>
					                                    		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">清　空</a>	
		                                        </td>
		                                    </tr>
		                                </table>
		                            </form>
														</div>
		                    	  <div style="margin:5px 0;"></div>
		                    	  <div>
															<table class="easyui-datagrid" title="" style="width:795px;height:300px;padding:5px"
																	data-options="collapsible:true,maximizable:true,singleSelect:true,url:'datagrid/applist.json',toolbar:'#tb_2',
																	              pagination:true,pageSize:10,
																	              ondblclickrow:OpenWindows">
																
																<thead>
																	<tr>
																		<th data-options="field:'No',width:60,align:'center'" rowspan="2">结算单号</th>
																		<th data-options="field:'No',width:60,align:'center'" rowspan="2">项目编号</th>
																		<th data-options="field:'No',width:60,align:'center'" rowspan="2">客户企业</th>

																		<th data-options="field:'name',width:70,align:'center'" rowspan="2">项目负责人</th>
																		<th data-options="field:'subpjno',width:68,align:'center'" rowspan="2">开始时间</th>
																		<th data-options="field:'reason',width:68,align:'center'" rowspan="2">结束时间</th>
																		<th data-options="align:'center'" colspan="5">油料消费（元）</th>
																		<th data-options="field:'reason',width:68,align:'center'" rowspan="2">生成时间</th>
																		<th data-options="field:'reason',width:68,align:'center'" rowspan="2">处理状态</th>
																	</tr>
																	<tr>
																		<th data-options="field:'applier',width:45,align:'center'">#93</th>
																		<th data-options="field:'date',width:45,align:'center'">#97</th>
																		<th data-options="field:'status',width:45,align:'center'" >#0</th>
																		<th data-options="field:'OV',width:45,align:'center'">#欧V</th>
																		<th data-options="field:'95',width:45,align:'center'">#95</th>
																	</tr>
																</thead>
															</table>
															<div id="tb_2" style="height:auto">
																<div >
																	<a href="javascript:void(0)" onclick="$('#wa2').window('open')" class="easyui-linkbutton" iconCls="icon-add" plain="true">查看</a>
																	<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除结算单</a>
																</div>
															</div>
														</div>
                        </div>
                    		<div title="待生成结算单">
														<div class="ywcx-content1">
		                            <form action="#" method="post">
		                                <table class="table-left" style="width: 100%">
		                                    <tr>
		                                        <td>试验项目号：</td>
		                                        <td colspan="2">
		                                            <input class="easyui-combobox" type="text" name="name" data-options="required:false" /></td>
		                                        <td>客户企业：</td>
		                                        <td colspan="2">
		                                            <input class="easyui-combobox" type="text" name="name" data-options="required:false" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td>统计时间从</td>
		                                        <td colspan="2">
		                                            <input class="easyui-datebox" type="text" name="name" data-options="required:false" /></td>
		                                        <td>到</td>
		                                        <td colspan="2">
		                                            <input class="easyui-datebox" type="text" name="name" data-options="required:false" /><span class="databox"></span></td>
		                                        <td colspan="3" align="center">
					                                        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">查　询</a>
					                                    		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">清　空</a>	
		                                        </td>
		                                    </tr>
		                                </table>
		                            </form>
														</div>
		                    	  <div style="margin:5px 0;"></div>
		                    	  <div>
															<table class="easyui-datagrid" title="" style="width:769px;height:310px;padding:5px"
																	data-options="collapsible:true,maximizable:true,singleSelect:false,url:'datagrid/applist.json',toolbar:'#tb_1',
																	              pagination:true,pageSize:10">
																
																<thead>
																	<tr>
																		<th data-options="field:'ck',checkbox:true" rowspan="2"></th>
																		<th data-options="field:'No',width:60,align:'center'" rowspan="2">项目编号</th>
																		<th data-options="field:'No',width:60,align:'center'" rowspan="2">客户企业</th>

																		<th data-options="field:'name',width:70,align:'center'" rowspan="2">项目负责人</th>
																		<th data-options="field:'subpjno',width:80,align:'center'" rowspan="2">开始时间</th>
																		<th data-options="field:'reason',width:80,align:'center'" rowspan="2">结束时间</th>
																		<th data-options="align:'center'" colspan="5">油料消费（元）</th>
																	</tr>
																	<tr>
																		<th data-options="field:'applier',width:60,align:'center'">#93</th>
																		<th data-options="field:'date',width:60,align:'center'">#97</th>
																		<th data-options="field:'status',width:60,align:'center'" >#0</th>
																		<th data-options="field:'OV',width:60,align:'center'">#欧V</th>
																		<th data-options="field:'95',width:60,align:'center'">#95</th>
																	</tr>
																</thead>
															</table>
															<div id="tb_1" style="height:auto">
																<div >
																	<a href="javascript:void(0)" onclick="$('#wa1').window('open')" class="easyui-linkbutton" iconCls="icon-add" plain="true">生成确认单</a>
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
        <div class="footer">Copyright @ 1997-2013 Shanghai General Motors Co., Ltd. All Rights Reserved</div>
    </div>
<!--弹出窗口开始-->
<!--确认单弹出页面开始-->
<div class="ywcx-content2">
		<div id="wa2" class="easyui-window" title="外部油料结算单" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width: 750px; height: 580px; padding:10px 0 10px 0px">
       <div id="child1_tab" class="easyui-tabs" style="width:728px;height:528px;padding:0px 3px 3px 3px;">
       	 <div title="结算单信息">
       	 	  <div style="margin:10px 0;"></div> 
			      <table class="table-left">
			          <tr>
			              <td>结算单号：</td>
			              	<td colspan="2">
			              	<input class="easyui-text" type="text" name="name" disabled /></td>
			              <td>客户企业：</td>
			              <td colspan="5">
			                  <input class="easyui-text" type="text" name="name" size=63 disabled /></td>
			          </tr>
			          <tr>
			              <td>试验项目号：</td>
			              	<td colspan="2">
			              	<input class="easyui-text" type="text" name="name" disabled /></td>
			              <td>项目负责人：</td>
			              <td colspan="2">
			                  <input class="easyui-text" type="text" name="name" disabled /></td>
			          </tr>
			          <tr>
			              <td>联系电话：</td>
			              <td colspan="3">
			                  <input class="easyui-text" type="text" name="name" size=30 disabled /></td>			
			              <td>电子邮件：</td>
			              <td colspan="4">
			                  <input class="easyui-text" type="text" name="name" size=35 disabled /></td>			              
			          </tr>
			          <tr>
			              <td>起始时间：</td>
			              	<td colspan="2">
			              	<input class="easyui-text" type="text" name="name"  disabled /></td>
			              <td>截止时间：</td>
			              <td colspan="2">
			                  <input class="easyui-text" type="text" name="name" disabled /></td>		                                    
			              <td>处理状态：</td>
			              <td colspan="2"><input class="easyui-text" type="text" name="name"  disabled /></td>

			          </tr>
			      </table>
			      <div style="margin:15px 0;"></div> 
			      <table  class="easyui-datagrid" title="" style="width:650;height:330px;padding:'0px 10px 0px 10px'"
								data-options="url:'datagrid/cost_type.json',
								              rownumbers: 'false',
								              idField: 'id',treeField: 'name',toolbar:'#child_tb1',showFooter: true">
							<thead>
								<tr>
									<th data-options="field:'ck',checkbox:true" rowspan="2"></th>
									<th data-options="field:'type',width:65" rowspan="2">车贴号</th>
									<th data-options="field:'isuse',width:65" rowspan="2">外部车辆编号</th>
									<th data-options="field:'isuse',width:65" rowspan="2">客户项目号</th>
									<th data-options="field:'price',width:65" rowspan="2">费用小计</th>
									<th colspan="2">#93汽油</th>
									<th colspan="2">#97汽油</th>
									<th colspan="2">#0柴油</th>
									<th colspan="2">#欧V汽油</th>
									<th colspan="2">#95汽油</th>
								</tr>
									<th data-options="field:'count',width:35">数量</th>
									<th data-options="field:'value',width:35">单价</th>
									<th data-options="field:'count',width:35">数量</th>
									<th data-options="field:'value',width:35">单价</th>
									<th data-options="field:'count',width:35">数量</th>
									<th data-options="field:'value',width:35">单价</th>
									<th data-options="field:'count',width:35">数量</th>
									<th data-options="field:'value',width:35">单价</th>
									<th data-options="field:'count',width:35">数量</th>
									<th data-options="field:'value',width:35">单价</th>
								</tr>
							</thead>
						</table>
						<div id="child_tb1" style="height:auto">
							<div >
								<a href="javascript:void(0)" onclick="$('#child_1_1').window('open')" class="easyui-linkbutton" iconCls="icon-add" plain="true">移除车辆</a>
								<a href="javascript:void(0)" onclick="$('#child_1_2').window('open')" class="easyui-linkbutton" iconCls="icon-remove" plain="true">引入车辆</a>
							</div>
						</div>
						<div style="margin:10px 0;"></div>
						<div align="center">
							  <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确认</a>
							  <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">退回</a>
						</div> 
					</div>
					<div title="出票/收款">
						<div style="margin:10px 0;"></div> 
						<form>
						<span>
			      <table class="table-left" style="width:700px;height:310px;border: 1px solid #95b8e7">
			          <tr>
			              <td>结算单号：</td>
			              	<td colspan="2">00001202</td>
			              <td colspan="6"><td/>
			          </tr>
			          <tr>
			              <td>付款方：</td>
			              <td colspan="5">
			                  上海汽车集团乘用车有限公司</td>
			              <td colspan="3"><td/>
			          </tr>
			          <tr>
			              <td>付款方开户行：</td>
			              	<td colspan="2">XX银行上海市XX区支行</td>
			              <td>付款方开户账号：</td>
			              <td colspan="2">
			              	XXXXXXXXXXXXXXXX</td>
			              <td colspan="3"><td/>
			          </tr>
			          <tr>
			              <td>付款方联系人：</td>
			              <td colspan="2">XXXXXXXX /></td>
			              <td>联系电话：</td>
			              <td colspan="2">
			                  021-0123456789</td>	
			              <td colspan="3"><td/>	
			          </tr>
			          <tr>	
			              <td>电子邮件：</td>
			              <td colspan="2">
			                  XXXX@XXXXXXX.XXX</td>		
			              <td colspan="6"><td/>	              
			          </tr>
			          <tr>
			              <td>项目：</td>
			              	<td colspan="2">G-001-01试验油料费用
			              	</td>
			              <td>单位：</td>
			              <td colspan="2">
			                  </td>		                                    
			              <td>金额：</td>
			              <td colspan="2">10.00元</td>
			          </tr>
			      </table>
			      <div style="margin:15px 0;"></div>
			      <table class="table-left" style="width:700px;height:80px">
			          <tr>
			              <td>发票号码：</td>
			              	<td><input class="easyui-text" type="text" name="name" /></td></td>
			              <td>开票时间：</td>
			              <td><input class="easyui-datebox" type="text" name="name"  /></td></td>
			              <td align="center">
			              						   <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确认开票</a>
			          </tr>

			          <tr>

			              <td>收款时间：</td>
			              <td><input class="easyui-datebox" type="text" name="name"  /></td></td>
			              <td align="center">
			              						   <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确认收款</a>
			              	</td>
			          </tr>
			      </table>
			      </span>
			      </form>
					</div>
					<div title="操作记录">
						<div style="margin:10px 0;"></div>
						<table  class="easyui-datagrid" title="" style="width:650;height:470px;padding:'0px 10px 0px 10px'"
								data-options="url:'datagrid/road.json',
								              rownumbers: 'true',
								              idField: 'id',treeField: 'name'">
							<thead>
								<tr>
									<th data-options="field:'isuse',width:90" >操作人</th>
									<th data-options="field:'name',width:90" >操作时间</th>
									<th data-options="field:'count',width:90">操作类型</th>
									<th data-options="field:'value',width:300">备注</th>						
								</tr>
							</thead>
						</table>
					</div>
				</div>
		</div>
</div>
<!--确认单弹出页面结束-->
<!--移除车辆弹出页面开始-->
<div id="child_1_1" class="easyui-window" title="移除车辆" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width: 250px; height: 160px; padding:10px 0 10px 0px">
		<div align='center'>
			   请选择要车辆要转入的项目
			   <div style="margin:5px 0;"></div><br> 
			   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="easyui-combobox" type="text" name="name" data-options="required:true" />
			   <div style="margin:5px 0;"></div><br>
			   <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确     认</a>
			   <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">取     消</a>
		</div>
</div>
<!--移除车辆弹出页面结束-->
<!--引入车辆弹出页面开始-->
<div id="child_1_2" class="easyui-window" title="移除车辆" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width: 750px; height: 480px; padding:10px 0 10px 0px">
       	 	  <div style="margin:10px 0;"></div> 
			      <table class="table-left">
			          <tr>
			              <td>选择项目：</td>
			              	<td colspan="2">
			              	<input class="easyui-combobox" type="text" name="name" data-options="required:true" />*</td>
			              	<td>
			              	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">查  询</a></td>
			          </tr>
			      </table>
			      <div style="margin:15px 0;"></div> 
			      <table  class="easyui-datagrid" title="" style="width:650;height:330px;padding:'0px 10px 0px 10px'"
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
						<div style="margin:15px 0;"></div> 
						<div align='center'>
			          <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提  交</a>
			          <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">取 消</a>
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
        tab.onmouseover = function () { clearInterval(MyMar) };
        tab.onmouseout = function () { MyMar = setInterval(Marquee, speed) };


        $(document).ready(function () {
            var root = $("#menu").children("ul").children("li");
						
            root.children("a").click(function () {

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