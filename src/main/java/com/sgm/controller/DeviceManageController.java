/**
 * 文件名称：DeviceManageController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 设备管理控制器类
 * 当前版本：1.0
 * 作          者：zot
 * 完成日期：2013/11/19
 */
package com.sgm.controller;

import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.sgm.domain.TmDevicemanagement;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.Json;
import com.sgm.service.DeviceManageService;

@Controller
public class DeviceManageController {
	@Autowired
	DeviceManageService deviceManageService;

	/**
	 * 设备管理datagrid
	 * 
	 * @param dg
	 * @param tmdevice
	 * @return
	 */
	@RequestMapping("deviceManage/datagrid")
	@ResponseBody
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TmDevicemanagement tmdevice) {
		return deviceManageService.datagrid(dg, tmdevice);
	}

	/**
	 * 新增设备管理信息
	 * 
	 * @param tmdevice
	 * @return
	 */
	@RequestMapping("deviceManage/saveDevice")
	@ResponseBody
	public Json add(TmDevicemanagement tmdevice) {

		Json j = new Json();
		try {
			if (tmdevice.getCreatetime() == null) {
				tmdevice.setCreatetime(new Date());
			}
			tmdevice.setIsdelete(false);
			deviceManageService.save(tmdevice);
			j.setSuccess(true);
			j.setMsg("添加成功");

		} catch (Exception e) {
			j.setSuccess(false);
			j.setMsg("添加失败");
			e.printStackTrace();
		}
		return j;
	}

	/**
	 * 修改设备信息
	 * 
	 * @param tmdevice
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("deviceManage/updateDevice")
	@ResponseBody
	public Json update(TmDevicemanagement tmdevice) throws Exception {
		Json j = new Json();
		try {
			deviceManageService.updateDevice(tmdevice);
			j.setSuccess(true);
			j.setMsg("修改成功");

		} catch (Exception e) {
			j.setSuccess(false);
			j.setMsg("修改失败");
			e.printStackTrace();
		}
		return j;
	}

	/**
	 * 删除设备信息
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("deviceManage/delDevice")
	@ResponseBody
	public Json del(String id) throws Exception {
		Json j = new Json();
		try {
			deviceManageService.delete(TmDevicemanagement.class, id);
			j.setSuccess(true);
			j.setMsg("删除成功");

		} catch (Exception e) {
			e.printStackTrace();
			j.setSuccess(false);
			j.setMsg("删除失败");
		}
		return j;
	}

}
