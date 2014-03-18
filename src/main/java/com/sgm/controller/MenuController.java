/**
 * 文件名称：MenuController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 菜单列表跳转控制器类
 * 当前版本：1.0
 * 作          者：zot
 * 完成日期：2013/11/19
 */
package com.sgm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController {
	/* 系统管理 */
	@RequestMapping("/userManage")
	public String jumpToUserManage() {
		return "/systemManage/userManage";
	}

	@RequestMapping("/roleManage")
	public String jumpToRoleManage() {
		return "/systemManage/roleManage";
	}

	@RequestMapping("/menuPermissionManage")
	public String jumpToMenuManage() {
		return "/systemManage/menuPermissionManage";
	}

	@RequestMapping("/actionPermissionManage")
	public String jumpToActionManage() {
		return "/systemManage/actionPermissionManage";
	}

	@RequestMapping("/paramsManage")
	public String jumpToParamsManage() {
		return "/systemManage/paramsManage";
	}

	@RequestMapping("/xxggfb")
	public String jumpToXxggfb() {
		return "/systemManage/xxggfb";
	}

	/* 业务数据 */
	@RequestMapping("/projectManage")
	public String jumpToXmgl() {
		return "/businessData/projectManage";
	}

	@RequestMapping("/enterprisesCustomers")
	public String jumpToKhqy() {
		return "/businessData/enterprisesCustomers";
	}

	@RequestMapping("/roadInfo")
	public String jumpToDlxx() {
		return "/businessData/roadInfo";
	}

	@RequestMapping("/priceManage")
	public String jumpToJgwh() {
		return "/businessData/priceManage";
	}

	@RequestMapping("/testSpecification")
	public String jumpToSygfgl() {
		return "/businessData/testSpecification";
	}

	@RequestMapping("/accessControlSetting")
	public String jumpToMjsx() {
		return "/businessData/accessControlSetting";
	}

	@RequestMapping("/deviceManage")
	public String jumpToSbgl() {
		return "/businessData/deviceManage";
	}

	@RequestMapping("/oilprices")
	public String jumpToYpjg() {
		return "/businessData/oilprices";
	}

	/* 试验人员 */
	@RequestMapping("/syrygl")
	public String jumpToSyrygl() {
		return "/testerManage/syrygl";
	}

	@RequestMapping("/sysqbl")
	public String jumpToSysqbl() {
		return "/testerManage/sysqbl";
	}

	@RequestMapping("/wgjl")
	public String jumpToWgjl() {
		return "/testerManage/wgjl";
	}

	@RequestMapping("/jsgzgx")
	public String jumpToJsgzgx() {
		return "/testerManage/jsgzgx";
	}

	@RequestMapping("/ksrc")
	public String jumpToKsrc() {
		return "/testerManage/ksrc";
	}

	/* 道路管理 */
	@RequestMapping("/xcjk")
	public String jumpToXcjk() {
		return "/roadManage/xcjk";
	}

	@RequestMapping("/sscl")
	public String jumpToSScl() {
		return "/roadManage/sscl";
	}

	@RequestMapping("/dlrccx")
	public String jumpToDlrccx() {
		return "/roadManage/dlrccx";
	}

	@RequestMapping("/dljhgl")
	public String jumpToDljhgl() {
		return "/roadManage/dljhgl";
	}

	@RequestMapping("/aqjl")
	public String jumpToAqjl() {
		return "/roadManage/aqjl";
	}

	@RequestMapping("/syjlmx")
	public String jumpToSyjlmx() {
		return "/roadManage/syjlmx";
	}

	/* 费用结算 */
	@RequestMapping("/nbylqrd")
	public String jumpToNbylqrd() {
		return "/settlementCost/nbylqrd";
	}

	@RequestMapping("/wbsjqrd")
	public String jumpToWbsjqrd() {
		return "/settlementCost/wbsjqrd";
	}

	@RequestMapping("/wbfyjsd")
	public String jumpToWbfyjsd() {
		return "/settlementCost/wbfyjsd";
	}

	@RequestMapping("/wbyljsd")
	public String jumpToWbyljsd() {
		return "/settlementCost/wbyljsd";
	}

	/* 车辆管理 */
	@RequestMapping("/cldj")
	public String jumpToCldj() {
		return "/vehicleManage/cldj";
	}

	@RequestMapping("/clzx")
	public String jumpToClzx() {
		return "/vehicleManage/clzx";
	}

	@RequestMapping("/clcx")
	public String jumpToClcx() {
		return "/vehicleManage/clcx";
	}

	/* 业务处理 */
	@RequestMapping("/ywsq")
	public String jumpToYwsq() {
		return "/businessHandling/ywsq";
	}

	@RequestMapping("/cdyd")
	public String jumpToCdyd() {
		return "/businessHandling/cdyd";
	}

	@RequestMapping("/hmdgl")
	public String jumpToHmdgl() {
		return "/businessHandling/hmdgl";
	}

	/* 首页 */
	@RequestMapping("/index")
	public String jumpToIndex() {
		return "/index";
	}
}
