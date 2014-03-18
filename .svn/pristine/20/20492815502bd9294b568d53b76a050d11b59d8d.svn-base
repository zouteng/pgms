/**
 * 文件名称：AccessControlSettingController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 门禁设置控制类
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
import com.sgm.domain.TmAccesscontrolsettings;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.Json;
import com.sgm.service.AccessControlSettingService;

@Controller
public class AccessControlSettingController {
	@Autowired
	AccessControlSettingService accessControlSettingService;

	/**
	 * 获取门禁设置的datagrid
	 * 
	 * @param dg
	 * @param tmaccess
	 * @return
	 */
	@RequestMapping("accessControlSetting/datagrid")
	@ResponseBody
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TmAccesscontrolsettings tmaccess) {
		return accessControlSettingService.datagrid(dg, tmaccess);
	}

	/**
	 * 新增门禁设置信息
	 * 
	 * @param tmacess
	 * @return
	 */
	@RequestMapping("accessControlSetting/saveAccess")
	@ResponseBody
	public Json add(TmAccesscontrolsettings tmacess) {

		Json j = new Json();
		try {
			if (tmacess.getCreatetime() == null) {
				tmacess.setCreatetime(new Date());
			}
			tmacess.setIsdelete(false);
			accessControlSettingService.save(tmacess);
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
	 * 修改门禁信息
	 * 
	 * @param tmaccess
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("accessControlSetting/updateAccess")
	@ResponseBody
	public Json update(TmAccesscontrolsettings tmaccess) throws Exception {
		Json j = new Json();
		try {
			accessControlSettingService.updateAccessSetting(tmaccess);
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
	 * 删除门禁信息
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("accessControlSetting/delAccess")
	@ResponseBody
	public Json del(String id) throws Exception {
		Json j = new Json();
		try {
			accessControlSettingService.delete(TmAccesscontrolsettings.class,
					id);
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
