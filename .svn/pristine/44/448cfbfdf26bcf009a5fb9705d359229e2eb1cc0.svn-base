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
    <title>试验人员查询---上海通用汽车/泛亚技术中心研发试验中心</title>
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
                        <h1>试验人员　>>　申请办理</h1>
                    </div>
                    <div class="table-t-r"></div>
                </div>
                <div class="table-m">
                    <div class="table-m-l"></div>
                    <div class="table-m-m">
												<div class="ywcx-content1">
                            <form action="#" method="post">
                                <table class="table-left" style="width: 100%">
                                    <tr>
                                        <td>姓名：</td>
                                        <td colspan="2">
                                            <input class="easyui-validatebox" type="text" name="name" data-options="required:false" /></td>
                                        <td>证件号：</td>
                                        <td colspan="2">
                                            <input class="easyui-validatebox" type="text" name="name" data-options="required:false" /></td>
                                        <td>所属企业：</td>
                                        <td colspan="2">
                                            <select class="easyui-combobox" type="text" name="name" data-options="required:false" /></td>
                                    </tr>
                                    <tr>
                                        <td>考试类别：</td>
                                        <td colspan="2">
                                            <select class="easyui-combobox" type="text" name="name" data-options="required:false" /></td>
                                        <td>考试级别</td>
                                        <td colspan="2">
                                            <select class="easyui-combobox" type="text" name="name" data-options="required:false" /><span class="databox"></span></td>
                                        <td>考试日期</td>
                                        <td colspan="2">
                                            <input class="easyui-datebox" type="text" name="name" data-options="required:false" /></td>
                                    </tr>
                                    <tr>
                                        <td>申请单状态：</td>
                                        <td colspan="2">
                                            <select class="easyui-combobox" type="text" name="name" data-options="required:false" /></td>
                                        <td colspan="3"></td>
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
										   		 	<table class="easyui-datagrid" title="" style="width:auto;height:300px;padding:5px"
																data-options="collapsible:true,maximizable:true,singleSelect:true,url:'datagrid/people.json',toolbar:'#tb',
																              pagination:true,pageSize:10">
															
															<thead>
																<tr>
																	<th data-options="field:'ck',checkbox:true" rowspan="2"></th>
																	<th data-options="field:'name',width:60,align:'center'" rowspan="2" >申请单号</th>
																	<th data-options="field:'name',width:60,align:'center'" rowspan="2">姓名</th>
																	<th data-options="field:'type1',width:60,align:'center'" rowspan="2">性别</th>
																	<th data-options="field:'type',width:60,align:'center'" rowspan="2">证件类型</th>
																	<th data-options="field:'NO',width:100,align:'center'" rowspan="2">证件号</th>
																	<th data-options="field:'name',width:60,align:'center'" rowspan="2">考试等级</th>
																	<th data-options="align:'center'" colspan="3">理论考试</th>
																	<th data-options="align:'center'" colspan="3">技能考试</th>
																	<th data-options="field:'type1',width:80,align:'center'" rowspan="2">申请单状态</th>
																</tr>
																<tr>
																	<th data-options="field:'type1',width:60,align:'center'">日期</th>
																	<th data-options="field:'type1',width:60,align:'center'">成绩</th>
																	<th data-options="field:'type1',width:60,align:'center'">通过</th>
																	<th data-options="field:'type1',width:60,align:'center'">日期</th>
																	<th data-options="field:'type1',width:60,align:'center'">成绩</th>
																	<th data-options="field:'type1',width:60,align:'center'">通过</th>
																</tr>																
															</thead>
														</table>
													<div id="tb" style="height:auto">
														<div >
															<a href="javascript:void(0)"  class="easyui-linkbutton" iconCls="icon-add" plain="true">取消申请</a>
															<a href="javascript:void(0)"  class="easyui-linkbutton" iconCls="icon-add" plain="true">打印申请列表</a>
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
  <!--新增申请的弹出页面开始-->
	<div class="ywcx-content2">
		<div id="wt" class="easyui-window" title="人员新增申请" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width: 730px; height: 420px; padding:10px 0 10px 0px">
      <table class="table-left" style="height:330px">
          <tr>
              <td>申请类别：</td>
              	<td colspan="2">
              	<strong>首次申请</strong></td>
              <td>申请驾驶权限等级：</td>
              <td colspan="2"><strong>Level I</strong></td>
              <td>试验项目号：</td>
              <td colspan="2">
                  <select class="easyui-combobox" type="text" name="name" data-options="required:true"/></td>

          </tr>
				          <tr>
				              <td>姓名：</td>
				              	<td colspan="2">
				              	<input class="easyui-validatebox" type="text" name="name" data-options="required:true" /></td>
				              <td>性别：</td>
				              <td colspan="2">
				                  男<input type="radio" id="sex" name="sex" value="0" checked="true"  />&nbsp;&nbsp;&nbsp;&nbsp;
				                  女<input type="radio" id="sex" name="planType" value="1" />
				                  	</td>
				              <td>出生日期：</td>
				              <td colspan="2"><input class="easyui-datebox" type="text" name="name" data-options="required:true" /></td>
				          </tr>
				          <tr>
				              <td>证件类型：</td>
				              <td colspan="2">
				                  身份证<input type="radio" id="type" name="planType" value="0" checked="true" />&nbsp;&nbsp;&nbsp;&nbsp;
				                  护照<input type="radio" id="type" name="planType" value="1"  /></td>		                                   
				              <td>证件号：</td>
				              <td colspan="2"><input class="easyui-validatebox" type="text" name="name" data-options="required:true" /></td>
				              <td>人员卡证号</td>
				              <td colspan="2">
				                  <input class="easyui-text" name="language" /></td>
				          </tr>
				          <tr>
				              <td>所属企业：</td>
				              <td colspan="2">
				                  <select class="easyui-combobox" type="text" name="name" data-options="required:true" /></td>		                                   
				              <td>所属部门：</td>
				              <td colspan="2"><input class="easyui-validatebox" type="text" name="name"  /></td>
				          		<td>联系电话：</td>
				              <td colspan="2">
				                  <input class="easyui-text" name="language" data-options="required:true" /></td>

				          </tr>
				          <tr>
				          		<td>驾驶证初次领证日期：</td>
				              <td colspan="2">
				                  <input class="easyui-datebox" name="language" data-options="required:true" /></td>
				              <td>驾驶证有效期：</td>
				              <td colspan="2">
				                  <input class="easyui-datebox" name="language" data-options="required:true" /></td>
				              <td>电子邮箱：</td>
				              <td colspan="2">
				                  <input class="easyui-validatebox" name="language" data-options="required:true" /></td>
				          </tr>
				          <tr>
				              <td>血型：</td>
				              <td colspan="2">
				                  <select class="easyui-combobox" name="language" data-options="required:true" /></td>
				              <td>过敏药物：</td>
				              <td colspan="2">
				                  <input class="easyui-validatebox" name="language" /></td>
				              <td>紧急联系人/家属</td>
				              <td colspan="2">
				                  <input class="easyui-validatebox" name="language" data-options="required:true" /></td>
				          </tr>
				          <tr>
				              <td>有无影响驾驶<br>安全疾病</td>
				              <td colspan="2">
				                  无<input type="radio" id="sex" name="sex" value="0" checked="true"  />&nbsp;&nbsp;&nbsp;&nbsp;
				                  有<input type="radio" id="sex" name="planType" value="1" /></td>
				              <td>说明</td>
				              <td colspan="5">
				                  <input class="easyui-text" name="language" size="55"  /></td>
				          </tr>
				          <tr>
				              <td>是否有其他试车场<br>颁发的驾驶资格证</td>
				              <td colspan="2">
				                  无<input type="radio" id="sex" name="sex" value="0" checked="true"  />&nbsp;&nbsp;&nbsp;&nbsp;
				                  有<input type="radio" id="sex" name="planType" value="1" /></td>
				              <td>说明</td>
				              <td colspan="5">
				                  <input class="easyui-text" name="language" size="55"  /></td>
				          </tr>
				          <tr>
				              <td>预期理论考试日期</td>
				              <td colspan="2">
				                  <select class="easyui-combobox" name="language"  data-options="required:true" /></td>
				              <td>说明</td>
				              <td colspan="5">
				                  <input class="easyui-text" name="language"/></td>
				          </tr>
				          <tr>
				              <td>预期技能考试日期</td>
				              <td colspan="2">
				                  <select class="easyui-combobox" name="language" data-options="required:true" /></td>
				              <td>说明</td>
				              <td colspan="5">
				                  <input class="easyui-text" name="language" size="55"/></td>
				          </tr>				          
      </table>
			<div style="margin:5px 0;"></div> 
			<div align='center'">
          <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交申请</a>
      		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">取  消</a>	
			</div>
		</div>
		<div id="wu" class="easyui-window" title="人员升级申请" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width: 828px; height: 500px; padding:10px 0 10px 0px">
      <table class="table-left" style="height:400px">
          <tr>
              <td>申请类别：</td>
              	<td colspan="2">
              	<strong>升级申请</strong></td>
              <td>申请驾驶权限等级：</td>
              <td colspan="2"><strong>Level II</strong></td>
              <td>试验项目号：</td>
              <td colspan="2">
                  <select class="easyui-combobox" type="text" name="name" data-options="required:true"/></td>

          </tr>
          <tr>
              <td>姓名：</td>
              	<td colspan="2">
              	<input class="easyui-validatebox" type="text" name="name" disabled /></td>
              <td>性别：</td>
              <td colspan="2">
                  男<input type="radio" id="sex" name="sex" value="0" checked="true" disabled />&nbsp;&nbsp;&nbsp;&nbsp;
                  女<input type="radio" id="sex" name="planType" value="1" disabled />
                  	</td>
              <td>出生日期：</td>
              <td colspan="2"><input class="easyui-datebox" type="text" name="name" disabled /></td>
          </tr>
          <tr>
              <td>证件类型：</td>
              <td colspan="2">
                  身份证<input type="radio" id="type" name="planType" value="0" checked="true" disabled />&nbsp;&nbsp;&nbsp;&nbsp;
                  护照<input type="radio" id="type" name="planType" value="1" disabled /></td>		                                   
              <td>证件号：</td>
              <td colspan="2"><input class="easyui-validatebox" type="text" name="name" disabled /></td>
              <td>人员卡证号</td>
              <td colspan="2">
                  <input class="easyui-text" name="language" disabled /></td>
          </tr>
          <tr>
              <td>所属企业：</td>
              <td colspan="2">
                  <select class="easyui-combobox" type="text" name="name" disabled /></td>		                                   
              <td>所属部门：</td>
              <td colspan="2"><input class="easyui-validatebox" type="text" name="name" disabled /></td>
          		<td>联系电话：</td>
              <td colspan="2">
                  <input class="easyui-text" name="language" data-options="required:true" /></td>

          </tr>
          <tr>
          		<td>驾驶证初次领证日期：</td>
              <td colspan="2">
                  <input class="easyui-datebox" name="language" data-options="required:true" /></td>
              <td>驾驶证有效期：</td>
              <td colspan="2">
                  <input class="easyui-datebox" name="language" data-options="required:true" /></td>
              <td>电子邮箱：</td>
              <td colspan="2">
                  <input class="easyui-validatebox" name="language" data-options="required:true" /></td>
          </tr>
          <tr>
              <td>血型：</td>
              <td colspan="2">
                  <select class="easyui-combobox" name="language" disabled /></td>
              <td>过敏药物：</td>
              <td colspan="2">
                  <input class="easyui-validatebox" name="language" /></td>
              <td>紧急联系人/家属</td>
              <td colspan="2">
                  <input class="easyui-validatebox" name="language" data-options="required:true" /></td>
          </tr>
          <tr>
              <td>有无影响驾驶<br>安全疾病</td>
              <td colspan="2">
                  无<input type="radio" id="sex" name="sex" value="0" checked="true"  />&nbsp;&nbsp;&nbsp;&nbsp;
                  有<input type="radio" id="sex" name="planType" value="1" /></td>
              <td>说明</td>
              <td colspan="5">
                  <input class="easyui-text" name="language" size="55"  /></td>
          </tr>
          <tr>
              <td>是否有其他试车场<br>颁发的驾驶资格证</td>
              <td colspan="2">
                  无<input type="radio" id="sex" name="sex" value="0" checked="true"  />&nbsp;&nbsp;&nbsp;&nbsp;
                  有<input type="radio" id="sex" name="planType" value="1" /></td>
              <td>说明</td>
              <td colspan="5">
                  <input class="easyui-text" name="language" size="55"  /></td>
          </tr>
          <tr >
              <td rowspan="2">工作经历</td>
              <td >整车耐久相关工作年数</td>
              <td colspan="2">
                  <input class="easyui-validatebox" name="language" data-options="required:true" /></td>
              <td rowspan="2">目前工作描述</td>
              <td colspan="3" rowspan="2">
                  <textarea name="message" style="height: 40px; width: 85%; text-align: left"> </textarea></td>
          </tr>
        	<tr border="true">
              <td >整车性能相关工作年数</td>
              <td colspan="2">
                  <input class="easyui-validatebox" name="language" data-options="required:true" /></td>
          </tr>				          
          <tr>
              <td>驾驶相关的操作或规范</td>
              <td colspan="7">
                  <input class="easyui-validatebox" name="language" size="80" data-options="required:true" /></td>
          </tr>
          <tr>
              <td>level2（G1）驾驶资质申请原因</td>
              <td colspan="7">
                  <input class="easyui-validatebox" name="language" size="80" data-options="required:true" /></td>
          </tr>				          
          <tr>
              <td>预期理论考试日期</td>
              <td colspan="2">
                  <select class="easyui-combobox" name="language" data-options="required:true" /></td>
              <td>说明</td>
              <td colspan="5">
                  <input class="easyui-text" name="language" size="55"/></td>
          </tr>					          <tr>
              <td>预期技能考试日期</td>
              <td colspan="2">
                  <select class="easyui-combobox" name="language" data-options="required:true" /></td>
              <td>说明</td>
              <td colspan="5">
                  <input class="easyui-text" name="language" size="55"/></td>
          </tr>				          
      </table>
			<div style="margin:5px 0;"></div> 
			<div align='center'">
          <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交申请</a>
      		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">取  消</a>	
			</div>
		</div>		
		<div id="wl" class="easyui-window" title="人员遗失补办申请" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width: 730px; height: 360px; padding:10px 0 10px 0px">
      <table class="table-left" style="height:280px">
          <tr>
              <td>申请类别：</td>
              	<td colspan="2">
              	<strong>遗失补办</strong></td>
              <td>申请驾驶权限等级：</td>
              <td colspan="2"><strong>Level I</strong></td>
              <td>试验项目号：</td>
              <td colspan="2">
                  <select class="easyui-combobox" type="text" name="name" data-options="required:true"/></td>

          </tr>
          <tr>
              <td>姓名：</td>
              	<td colspan="2">
              	<input class="easyui-validatebox" type="text" name="name" disabled /></td>
              <td>性别：</td>
              <td colspan="2">
                  男<input type="radio" id="sex" name="sex" value="0" checked="true" disabled />&nbsp;&nbsp;&nbsp;&nbsp;
                  女<input type="radio" id="sex" name="planType" value="1" disabled />
                  	</td>
              <td>出生日期：</td>
              <td colspan="2"><input class="easyui-datebox" type="text" name="name" disabled /></td>
          </tr>
          <tr>
              <td>证件类型：</td>
              <td colspan="2">
                  身份证<input type="radio" id="type" name="planType" value="0" checked="true" disabled />&nbsp;&nbsp;&nbsp;&nbsp;
                  护照<input type="radio" id="type" name="planType" value="1" disabled /></td>		                                   
              <td>证件号：</td>
              <td colspan="2"><input class="easyui-validatebox" type="text" name="name" disabled /></td>
              <td>人员卡证号</td>
              <td colspan="2">
                  <input class="easyui-text" name="language" disabled /></td>
          </tr>
          <tr>
              <td>所属企业：</td>
              <td colspan="2">
                  <select class="easyui-combobox" type="text" name="name" disabled  /></td>		                                   
              <td>所属部门：</td>
              <td colspan="2"><input class="easyui-validatebox" type="text" name="name" disabled  /></td>
          		<td>联系电话：</td>
              <td colspan="2">
                  <input class="easyui-text" name="language" data-options="required:true" /></td>

          </tr>
          <tr>
          		<td>GDPG驶证编号：</td>
              <td colspan="2">
                  <input class="easyui-validatebox" name="language" data-options="required:true" /></td>
              <td>GDPG驶证有效期：</td>
              <td colspan="2">
                  <input class="easyui-datebox" name="language" data-options="required:true" /></td>
              <td>电子邮箱：</td>
              <td colspan="2">
                  <input class="easyui-validatebox" name="language" data-options="required:true" /></td>
          </tr>
          <tr>
              <td>原因描述</td>
              <td colspan="8">
                  <textarea name="message" style="height: 70px; width: 99%; text-align: left"></textarea></td>
          </tr>				          
      </table>
			<div style="margin:5px 0;"></div> 
			<div align='center'">
          <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交申请</a>
      		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">取  消</a>	
			</div>
		</div>
		<div id="wc" class="easyui-window" title="人员延期申请" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width: 730px; height: 360px; padding:10px 0 10px 0px">
      <table class="table-left" style="height:280px">
          <tr>
              <td>申请类别：</td>
              	<td colspan="2">
              	<strong>延期</strong></td>
              <td>申请驾驶权限等级：</td>
              <td colspan="2"><strong>Level I</strong></td>
              <td></td>
              <td colspan="2">
                  </td>

          </tr>
          <tr>
              <td>姓名：</td>
              	<td colspan="2">
              	<input class="easyui-validatebox" type="text" name="name" disabled /></td>
              <td>性别：</td>
              <td colspan="2">
                  男<input type="radio" id="sex" name="sex" value="0" checked="true" disabled  />&nbsp;&nbsp;&nbsp;&nbsp;
                  女<input type="radio" id="sex" name="planType" value="1" disabled />
                  	</td>
              <td>出生日期：</td>
              <td colspan="2"><input class="easyui-datebox" type="text" name="name" disabled /></td>
          </tr>
          <tr>
              <td>证件类型：</td>
              <td colspan="2">
                  身份证<input type="radio" id="type" name="planType" value="0" checked="true" disabled />&nbsp;&nbsp;&nbsp;&nbsp;
                  护照<input type="radio" id="type" name="planType" value="1" disabled /></td>		                                   
              <td>证件号：</td>
              <td colspan="2"><input class="easyui-validatebox" type="text" name="name" disabled /></td>
              <td>人员卡证号</td>
              <td colspan="2">
                  <input class="easyui-text" name="language" disabled /></td>
          </tr>
          <tr>
              <td>所属企业：</td>
              <td colspan="2">
                  <select class="easyui-combobox" type="text" name="name" disabled /></td>		                                   
              <td>所属部门：</td>
              <td colspan="2"><input class="easyui-validatebox" type="text" name="name" disabled  /></td>
          		<td>联系电话：</td>
              <td colspan="2">
                  <input class="easyui-validatebox" name="language" data-options="required:true" /></td>

          </tr>
          <tr>
          		<td>GDPG驶证编号：</td>
              <td colspan="2">
                  <input class="easyui-validatebox" name="language" data-options="required:true" /></td>
              <td>GDPG驶证有效期：</td>
              <td colspan="2">
                  <input class="easyui-datebox" name="language" data-options="required:true" /></td>
              <td>电子邮箱：</td>
              <td colspan="2">
                  <input class="easyui-validatebox" name="language" data-options="required:true" /></td>
          </tr>
          <tr>
              <td>原因描述</td>
              <td colspan="8">
                  <textarea name="message" style="height: 70px; width: 99%; text-align: left"></textarea></td>
          </tr>				          
      </table>
			<div style="margin:5px 0;"></div> 
			<div align='center'">
          <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交申请</a>
      		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">取  消</a>	
			</div>
		</div>
		</div>
		<div id="wa" class="easyui-window" title="申请单信息" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width: 750px; height: 410px; padding:10px 0 10px 0px">
				<div class="easyui-tabs" style="width:auto;height:auto">
				   <div title="申请单基本信息">
					      <table class="table-left" style="height:330px">
					          <tr>
					              <td>申请类别：</td>
					              	<td colspan="2">
					              	<strong>首次申请</strong></td>
					              <td>申请驾驶权限等级：</td>
					              <td colspan="2"><strong>Level I</strong></td>
					              <td>试验项目号：</td>
					              <td colspan="2">
					                  <select class="easyui-combobox" type="text" name="name" disabled/></td>
					
					          </tr>
									          <tr>
									              <td>姓名：</td>
									              	<td colspan="2">
									              	<input class="easyui-validatebox" type="text" name="name" disabled /></td>
									              <td>性别：</td>
									              <td colspan="2">
									                  男<input type="radio" id="sex" name="sex" value="0" checked="true" disabled />&nbsp;&nbsp;&nbsp;&nbsp;
									                  女<input type="radio" id="sex" name="planType" value="1" disabled />
									                  	</td>
									              <td>出生日期：</td>
									              <td colspan="2"><input class="easyui-datebox" type="text" name="name" disabled /></td>
									          </tr>
									          <tr>
									              <td>证件类型：</td>
									              <td colspan="2">
									                  身份证<input type="radio" id="type" name="planType" value="0" checked="true" disabled />&nbsp;&nbsp;&nbsp;&nbsp;
									                  护照<input type="radio" id="type" name="planType" value="1" disabled /></td>		                                   
									              <td>证件号：</td>
									              <td colspan="2"><input class="easyui-validatebox" type="text" name="name" disabled /></td>
									              <td>人员卡证号</td>
									              <td colspan="2">
									                  <input class="easyui-text" name="language" disabled /></td>
									          </tr>
									          <tr>
									              <td>所属企业：</td>
									              <td colspan="2">
									                  <select class="easyui-combobox" type="text" name="name" disabled /></td>		                                   
									              <td>所属部门：</td>
									              <td colspan="2"><input class="easyui-validatebox" type="text" name="name" disabled  /></td>
									          		<td>联系电话：</td>
									              <td colspan="2">
									                  <input class="easyui-text" name="language"  disabled /></td>
					
									          </tr>
									          <tr>
									          		<td>驾驶证初次领证日期：</td>
									              <td colspan="2">
									                  <input class="easyui-datebox" name="language" disabled /></td>
									              <td>驾驶证有效期：</td>
									              <td colspan="2">
									                  <input class="easyui-datebox" name="language" disabled /></td>
									              <td>电子邮箱：</td>
									              <td colspan="2">
									                  <input class="easyui-validatebox" name="language"  disabled /></td>
									          </tr>
									          <tr>
									              <td>血型：</td>
									              <td colspan="2">
									                  <select class="easyui-combobox" name="language" disabled /></td>
									              <td>过敏药物：</td>
									              <td colspan="2">
									                  <input class="easyui-validatebox" name="language" disabled/></td>
									              <td>紧急联系人/家属</td>
									              <td colspan="2">
									                  <input class="easyui-validatebox" name="language" disabled /></td>
									          </tr>
									          <tr>
									              <td>有无影响驾驶<br>安全疾病</td>
									              <td colspan="2">
									                  无<input type="radio" id="sex" name="sex" value="0" checked="true" disabled />&nbsp;&nbsp;&nbsp;&nbsp;
									                  有<input type="radio" id="sex" name="planType" value="1" disabled /></td>
									              <td>说明</td>
									              <td colspan="5">
									                  <input class="easyui-text" name="language" size="55" disabled /></td>
									          </tr>
									          <tr>
									              <td>是否有其他试车场<br>颁发的驾驶资格证</td>
									              <td colspan="2">
									                  无<input type="radio" id="sex" name="sex" value="0" checked="true" disabled />&nbsp;&nbsp;&nbsp;&nbsp;
									                  有<input type="radio" id="sex" name="planType" value="1" disabled /></td>
									              <td>说明</td>
									              <td colspan="5">
									                  <input class="easyui-text" name="language" size="55" disabled  /></td>
									          </tr>
									          <tr>
									              <td>预期理论考试日期</td>
									              <td colspan="2">
									                  <select class="easyui-combobox" name="language"  disabled /></td>
									              <td>说明</td>
									              <td colspan="5">
									                  <input class="easyui-text" name="language"/ disabled></td>
									          </tr>
									          <tr>
									              <td>预期技能考试日期</td>
									              <td colspan="2">
									                  <select class="easyui-combobox" name="language" disabled /></td>
									              <td>说明</td>
									              <td colspan="5">
									                  <input class="easyui-text" name="language" size="55" disabled/></td>
									          </tr>				          
					      </table>
				   </div>
				   <div title="考试成绩">
              <div class="ywcx-content2" style="height: 180px;">
                  <table style="height: 80%;width:100%">
                      <thead>
                          <tr style="height: 30px; background: #e5efff">
                              <th>考核内容</th>
                              <th>考核次数</th>
                              <th>时间</th>
                              <th>成绩</th>
                              <th>考核者</th>
                              <th>考核结果</th>
                          </tr>
                      </thead>
                      <tr>
                          <td rowspan="2">驾驶规则</td>
                          <td>1</td>
                          <td><input class="easyui-datebox" type="text" name="name" data-options="required:false" /></td>
                          <td><select class="easyui-combobox" type="text" name="name" data-options="required:false" /></td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>2</td>
                          <td><input class="easyui-datebox" type="text" name="name" data-options="required:false" /></td>
                          <td><select class="easyui-combobox" type="text" name="name" data-options="required:false" /></td>
                          <td>&nbsp;</td>
													<td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td rowspan="2">驾驶技能</td>
                          <td>1</td>
                          <td><input class="easyui-datebox" type="text" name="name" data-options="required:false" /></td>
                          <td><select class="easyui-combobox" type="text" name="name" data-options="required:false" /></td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>2</td>
                          <td><input class="easyui-datebox" type="text" name="name" data-options="required:false" /></td>
                          <td><select class="easyui-combobox" type="text" name="name" data-options="required:false" /></td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>                          
                      </tr>
                  </table>
                  <div style="margin:5px 0;"></div> 
									<div align='center'">
						          <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提  交</a>
						      		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">取  消</a>	
									</div>
              </div>

								
				   </div>
				   <div title="合格证发放">
									<div style="margin:15px 0;"></div>
                  <table class="table-left" style="width: 100%;height:200px">
                      <tr>
                          <td>证件类型：</td>
                          <td colspan="2">
                              <input type="radio" id="card" name="sex" value="0" checked="true"  />GDPG驾驶证 &nbsp;&nbsp;&nbsp;&nbsp;
                              <input type="radio" id="card" name="sex" value="0" checked="true"  />临时驾驶证</td>
                          <td>发证时间：</td>
                          <td colspan="2">
                              <input class="easyui-datebox" type="text" name="name" data-options="required:true" /></td>
                      </tr>
                      <tr>
                          <td>情况说明：</td>
                          <td colspan="6">
                              <textarea name="message" style="height: 60px; width: 99%; text-align: left"></textarea></td>

                      </tr>
                      <tr>
                          <td>试车场驾驶证号：</td>
                          <td colspan="2">
                              <input class="easyui-validatebox" type="text" name="name" data-options="required:true" /></td>
                          <td>有效期至：</td>
                          <td colspan="2">
                              <input class="easyui-datebox" type="text" name="name" data-options="required:true" /></td>
                      </tr>
                      <tr>                      
                          <td>状态：</td>
                          <td colspan="2">
                              <input class="easyui-text" type="text" name="name" disabled /></td>
                      </tr>
                  </table>
                  <div style="margin:5px 0;"></div> 
									<div align='center'">
						          <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确认领取</a>
						      		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">取  消</a>	
									</div>
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
<script type="text/javascript">
		var editIndex1 = undefined;
		function endEditing1(){
			if (editIndex1 == undefined){return true}
			if ($('#dg').datagrid('validateRow', editIndex1)){
				var ed = $('#dg').datagrid('getEditor', {index:editIndex1,field:'begin'});
				var productname = $(ed.target).combobox('getText');
				$('#dg').datagrid('getRows')[editIndex1]['begin'] = productname;
				$('#dg').datagrid('endEdit', editIndex1);
				editIndex1 = undefined;
				return true;
			} else {
				return false;
			}
		}
		function onClickRow1(index){

			if (editIndex1 != index){
				if (endEditing1()){
					$('#dg').datagrid('selectRow', index)
							.datagrid('beginEdit', index);
					editIndex1 = index;
				} else {
					$('#dg').datagrid('selectRow', editIndex1);
				}
			}

		}
		var editIndex2 = undefined;
		function endEditing2(){
			if (editIndex2 == undefined){return true}
			if ($('#viecle').datagrid('validateRow', editIndex2)){
				var ed = $('#viecle').datagrid('getEditor', {index:editIndex2,field:'begin'});
				var productname = $(ed.target).combobox('getText');
				$('#viecle').datagrid('getRows')[editIndex2]['begin'] = productname;
				$('#viecle').datagrid('endEdit', editIndex2);
				editIndex2 = undefined;
				return true;
			} else {
				return false;
			}
		}
		function onClickRow2(index){

			if (editIndex2 != index){
				if (endEditing2()){
					$('#viecle').datagrid('selectRow', index)
							.datagrid('beginEdit', index);
					editIndex2 = index;
				} else {
					$('#viecle').datagrid('selectRow', editIndex2);
				}
			}

		}
		function append(){
			if (endEditing2()){
				$('#viecle').datagrid('appendRow',{status:'P'});
				editIndex2 = $('#viecle').datagrid('getRows').length-1;
				$('#viecle').datagrid('selectRow', editIndex2)
						.datagrid('beginEdit', editIndex2);
			}
		}
		function remove(){
			if (editIndex2 == undefined){return}
			$('#viecle').datagrid('cancelEdit', editIndex2)
					.datagrid('deleteRow', editIndex2);
			editIndex2 = undefined;
		}
		function accept(){
			if (endEditing()){
				$('#dg').datagrid('acceptChanges');
			}
		}
		function reject(){
			$('#dg').datagrid('rejectChanges');
			editIndex = undefined;
		}
		function getChanges(){
			var rows = $('#dg').datagrid('getChanges');
			alert(rows.length+' rows are changed!');
		}
		function openwindows() {
						$('#wa').window('open');
        };
</script>
<!--新增申请页面结束-->
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
</script>
</body>
</html>
