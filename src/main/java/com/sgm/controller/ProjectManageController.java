/**
 * 文件名称：ProjectManageController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 项目管理控制器类
 * 当前版本：1.0
 * 作          者：zot
 * 完成日期：2013/11/19
 */
package com.sgm.controller;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.sgm.domain.TmProjectinfo;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.Json;
import com.sgm.service.ProjectManageService;

@Controller
public class ProjectManageController extends BaseController {
	@Autowired
	ProjectManageService projectManageService;

	// listall
	@RequestMapping("projectManage/listall")
	@ResponseBody
	public List<TmProjectinfo> getAllprojectInfo() {
		return projectManageService.listAll();
	}

	/**
	 * 项目信息datagird列表
	 * 
	 * @param dg
	 * @param tm
	 * @return
	 */
	@RequestMapping("projectManage/datagrid")
	@ResponseBody
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg, TmProjectinfo tm) {
		return projectManageService.datagrid(dg, tm);
	}

	/**
	 * 删除项目信息
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("projectManage/delProject")
	@ResponseBody
	public Json del(String id) throws Exception {
		Json j = new Json();
		try {
			projectManageService.delete(TmProjectinfo.class, id);
			j.setSuccess(true);
			j.setMsg("删除成功");

		} catch (Exception e) {
			e.printStackTrace();
			j.setSuccess(false);
			j.setMsg("删除失败");
		}
		return j;
	}

	/**
	 * 新增项目信息
	 * 
	 * @param tmproject
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("projectManage/saveProject")
	@ResponseBody
	public Json add(TmProjectinfo tmproject) {

		Json j = new Json();
		try {
			if (tmproject.getCreatetime() == null) {
				tmproject.setCreatetime(new Date());
			}
			tmproject.setIsdelete(false);
			projectManageService.save(tmproject);
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
	 * 修改项目信息
	 * 
	 * @param tp
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("projectManage/updateProject")
	@ResponseBody
	public Json update(TmProjectinfo tp) throws Exception {
		Json j = new Json();
		try {
			System.out.println("需要修改的projectId为" + tp.getProjectId());
			projectManageService.update(tp);
			j.setSuccess(true);
			j.setMsg("修改成功");

		} catch (Exception e) {
			j.setSuccess(false);
			j.setMsg("修改失败");
			e.printStackTrace();
		}
		return j;
	}
}
