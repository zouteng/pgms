/**
 * 文件名称：ActionPermissionController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 需要托管的action权限控制器类
 * 当前版本：1.0
 * 作          者：zot
 * 完成日期：2013/11/19
 */
package com.sgm.controller;

import java.util.Date;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.sgm.domain.TsActionPermission;
import com.sgm.domain.TsRole;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.Json;
import com.sgm.service.ActionPermissionService;

@Controller
public class ActionPermissionController extends BaseController {
	@Autowired
	ActionPermissionService actionPermissionService;

	/**
	 * 需要托管权限的action,datagrid显示
	 * 
	 * @param dg
	 * @param tsap
	 * @return
	 */
	@RequestMapping("actionPermission/datagrid")
	@ResponseBody
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TsActionPermission tsap) {
		return actionPermissionService.datagrid(dg, tsap);
	}

	/**
	 * 新增action
	 * 
	 * @param tsaction
	 * @return
	 */
	@RequestMapping("actionPermission/saveAction")
	@ResponseBody
	public Json add(TsActionPermission tsaction) {

		Json j = new Json();
		try {
			if (tsaction.getCreatetime() == null) {
				tsaction.setCreatetime(new Date());
			}
			tsaction.setIsdelete(false);
			actionPermissionService.save(tsaction);
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
	 * 修改权限action
	 * 
	 * @param tsaction
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("actionPermission/updateAction")
	@ResponseBody
	public Json update(TsActionPermission tsaction) throws Exception {
		Json j = new Json();
		try {
			actionPermissionService.updateTsaction(tsaction);
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
	 * 删除actionPermission
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("actionPermission/delAction")
	@ResponseBody
	public Json del(String id) throws Exception {
		Json j = new Json();
		try {
			// hibernate多对多被控方，删除
			TsActionPermission ts = actionPermissionService.get(
					TsActionPermission.class, id);
			Set<TsRole> st = ts.getTsRoles();
			for (TsRole tr : st) {
				tr.getTsActionPermissions().remove(ts);// 获取角色，角色中移除该action
			}
			actionPermissionService.delete(TsActionPermission.class, id);
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
