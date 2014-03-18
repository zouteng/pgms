/**
 * 文件名称：RoleController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 角色管理控制器类
 * 当前版本：1.0
 * 作          者：zot
 * 完成日期：2013/11/19
 */
package com.sgm.controller;

import java.util.Date;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.sgm.domain.TsActionPermission;
import com.sgm.domain.TsMenuPermission;
import com.sgm.domain.TsRole;
import com.sgm.domain.TsUser;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.EasyuiTreeNode;
import com.sgm.dto.Json;
import com.sgm.service.ActionPermissionService;
import com.sgm.service.MenuPermissionService;
import com.sgm.service.RoleService;

@Controller
public class RoleController {
	@Autowired
	RoleService roleService;
	@Autowired
	ActionPermissionService actionPermissionService;
	@Autowired
	MenuPermissionService menuPermissionService;

	@RequestMapping("roleManage/getAllRoles")
	@ResponseBody
	public List<TsRole> getAllList() {
		return roleService.listAll();
	}

	@RequestMapping("roleManage/datagrid")
	@ResponseBody
	public EasyuiDataGridJson getRoles(EasyuiDataGrid dg, TsRole role) {
		return roleService.datagrid(dg, role);
	}

	/**
	 * 删除角色
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("roleManage/delRole")
	@ResponseBody
	public Json delRole(String id) throws Exception {
		Json j = new Json();
		try {
			TsRole ts = roleService.get(TsRole.class, id);
			Set<TsUser> st = ts.getTsUsers();
			for (TsUser tu : st) {
				tu.getTsRoles().remove(ts);
			}
			roleService.delete(TsRole.class, id);
			j.setSuccess(true);
			j.setMsg("删除角色成功!");
		} catch (Exception e) {
			e.printStackTrace();
			j.setSuccess(false);
			j.setMsg("删除角色失败!");
			throw e;
		}
		return j;
	}

	/**
	 * 新增角色
	 * 
	 * @param rsrole
	 * @return
	 */
	@RequestMapping("roleManage/saveRole")
	@ResponseBody
	public Json addUser(TsRole rsrole) {

		Json j = new Json();
		try {
			if (rsrole.getCreatetime() == null) {
				rsrole.setCreatetime(new Date());
			}
			rsrole.setIsdelete(false);
			roleService.save(rsrole);
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
	 * 修改角色
	 * @param rsrole
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("roleManage/updateRole")
	@ResponseBody
	public Json update(TsRole rsrole) throws Exception {
		Json j = new Json();
		try {
			roleService.updateRole(rsrole);
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
	 * 角色添加action权限（checkbox勾选）
	 * 
	 * @param roleId
	 * @param actionPermissionId
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("roleManage/savaRoleAction")
	@ResponseBody
	public Json addRoleAction(String roleId, String actionPermissionId)
			throws Exception {
		Json j = new Json();
		try {
			TsRole rsrole = roleService.get(TsRole.class, roleId);
			TsActionPermission tr = actionPermissionService.get(
					TsActionPermission.class, actionPermissionId);
			rsrole.getTsActionPermissions().add(tr);
			roleService.saveOrUpdate(rsrole);
			j.setSuccess(true);
			j.setMsg("添加action成功");
		} catch (Exception e) {
			e.printStackTrace();
			j.setSuccess(false);
			j.setMsg("添加action成功");
			throw e;
		}
		return j;
	}

	/**
	 * 角色删除action（checkbox去掉勾选）
	 * 
	 * @param roleId
	 * @param actionPermissionId
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("roleManage/delRoleAction")
	@ResponseBody
	public Json delRoleAction(String roleId, String actionPermissionId)
			throws Exception {
		Json j = new Json();
		try {
			TsRole rsrole = roleService.get(TsRole.class, roleId);
			TsActionPermission tr = actionPermissionService.get(
					TsActionPermission.class, actionPermissionId);
			rsrole.getTsActionPermissions().remove(tr);
			roleService.saveOrUpdate(rsrole);
			j.setSuccess(true);
			j.setMsg("删除action成功");
		} catch (Exception e) {
			e.printStackTrace();
			j.setSuccess(false);
			j.setMsg("删除action成功");
			throw e;
		}
		return j;
	}

	/**
	 * 角色添加menu权限（checkbox勾选）
	 * 
	 * @param roleId
	 * @param menuPermissionId
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("roleManage/savaRoleMenu")
	@ResponseBody
	public Json addRoleMenu(String roleId, String menuPermissionId)
			throws Exception {
		Json j = new Json();
		try {
			TsRole rsrole = roleService.get(TsRole.class, roleId);
			TsMenuPermission tm = menuPermissionService.get(
					TsMenuPermission.class, menuPermissionId);
			if (tm.getParentId() == null || tm.getParentId().length() == 0) {
				String hql = "from TsMenuPermission where parentId='"
						+ menuPermissionId + "'";
				List<TsMenuPermission> tsp = menuPermissionService
						.listByhql(hql);
				for (TsMenuPermission ts : tsp) {
					rsrole.getTsMenuPermissions().add(ts);
				}
			}
			rsrole.getTsMenuPermissions().add(tm);
			roleService.saveOrUpdate(rsrole);
			j.setSuccess(true);
			j.setMsg("添加menu成功");

		} catch (Exception e) {
			e.printStackTrace();
			j.setSuccess(false);
			j.setMsg("添加menu失败");
			throw e;
		}
		return j;
	}

	/**
	 * 角色删除menu（checkbox去掉勾选）
	 * 
	 * @param roleId
	 * @param menuPermissionId
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("roleManage/delRoleMenu")
	@ResponseBody
	public Json delRoleMenu(String roleId, String menuPermissionId)
			throws Exception {
		Json j = new Json();
		try {
			TsRole rsrole = roleService.get(TsRole.class, roleId);
			TsMenuPermission tm = menuPermissionService.get(
					TsMenuPermission.class, menuPermissionId);
			if (tm.getParentId() == null || tm.getParentId().length() == 0) {
				String hql = "from TsMenuPermission where parentId='"
						+ menuPermissionId + "'";
				List<TsMenuPermission> tsp = menuPermissionService
						.listByhql(hql);
				for (TsMenuPermission ts : tsp) {
					rsrole.getTsMenuPermissions().remove(ts);
				}
			}
			rsrole.getTsMenuPermissions().remove(tm);
			roleService.saveOrUpdate(rsrole);
			j.setSuccess(true);
			j.setMsg("删除menu成功");
		} catch (Exception e) {
			e.printStackTrace();
			j.setSuccess(false);
			j.setMsg("删除menu成功");
			throw e;
		}
		return j;
	}

	/**
	 * jQuery easyui tree
	 * @param roleId
	 * @return
	 */
	@RequestMapping("roleManage/menutree")
	@ResponseBody
	public List<EasyuiTreeNode> generateTree(String roleId) {
		return roleService.menutree(roleId);
	}



	/**
	 * 角色树(combotree)
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("roleManage/roletree")
	@ResponseBody
	public List<EasyuiTreeNode> tree(String id) {
		return roleService.tree(id);
	}
}
