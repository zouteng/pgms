/**
 * 文件名称：MenuPermissionController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 菜单权限控制器类
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
import com.sgm.domain.TsMenuPermission;
import com.sgm.dto.Json;
import com.sgm.dto.MenuPermissionDTO;
import com.sgm.service.MenuPermissionService;

@Controller
public class MenuPermissionController extends BaseController {
	@Autowired
	MenuPermissionService menuPermissionService;

	/**
	 * 加载菜单treegrid
	 * @param id(id为treegrid默认传值)
	 * @return
	 */
	
	@RequestMapping("menuPermission/menutreegrid")
	@ResponseBody
	public List<MenuPermissionDTO> getTreeMenu(String id) {
		System.out.println("menuPermissionId的值为"+id);
		List<MenuPermissionDTO> menupermissionlist = menuPermissionService.findList(id);
		// 获取总记录数
		return menupermissionlist;
		
	}

	/**
	 * 新增menu方法
	 * @param tsmenu
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("menuPermission/saveMenu")
	@ResponseBody
	public Json addMenu(TsMenuPermission tsmenu)
			throws Exception {
		Json j = new Json();
		try {
			tsmenu.setCreatetime(new Date());
			tsmenu.setIsdelete(false);
			menuPermissionService.save(tsmenu);
			j.setSuccess(true);
			j.setMsg("添加成功!");
			
		} catch (Exception e) {
			j.setSuccess(false);
			j.setMsg("添加失败!");
			e.printStackTrace();
			throw e;
		}
		return j;
	}

	/**
	 * 修改菜单方法
	 * @param tsmenu
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("menuPermission/updateMenu")
	@ResponseBody
	public Json updateMenu(TsMenuPermission tsmenu) throws Exception {
	     	Json j = new Json();
		try {
			TsMenuPermission tmp=menuPermissionService.get(TsMenuPermission.class, tsmenu.getMenuPermissionId());
			
			tmp.setName(tsmenu.getName());
			tmp.setTreeCode(tsmenu.getTreeCode());
			tmp.setControllerName(tsmenu.getControllerName());
			tmp.setActionName(tsmenu.getActionName());
			tmp.setIcon1(tsmenu.getIcon1());
			tmp.setIcon2(tsmenu.getIcon2());
			tmp.setIndexField(tsmenu.getIndexField());
			tmp.setUrl(tsmenu.getUrl());
			tmp.setDescription(tsmenu.getDescription());
			
			menuPermissionService.saveOrUpdate(tmp);
			j.setSuccess(true);
			j.setMsg("修改成功!");
		} catch (Exception e) {
			e.printStackTrace();
			j.setSuccess(false);
			j.setMsg("修改失败!");
			throw e;
		}
		  return j;
	}
	
	/**
	 * 删除菜单的方法
	 * @param menuPermissionId
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("menuPermission/delMenu")
	@ResponseBody
	public Json delMenu(String menuPermissionId) throws Exception {
		
		System.out.println("删除传过来的值"+menuPermissionId);
		Json j = new Json();
		menuPermissionService.del(menuPermissionId);
		j.setSuccess(true);
		j.setMsg("删除成功!");
		return j;
	}
}
