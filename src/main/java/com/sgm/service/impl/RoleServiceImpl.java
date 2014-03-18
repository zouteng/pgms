/**
 * name:RoleServiceImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/8
 */
package com.sgm.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sgm.dao.MenuPermissionDao;
import com.sgm.dao.RoleDao;
import com.sgm.domain.TsMenuPermission;
import com.sgm.domain.TsRole;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.EasyuiTreeNode;
import com.sgm.service.RoleService;

@Service(value = "roleService")
public class RoleServiceImpl extends BaseServiceImpl<TsRole, String> implements
		RoleService {
	private RoleDao roleDao;

	private MenuPermissionDao menuPermissionDao;

	public RoleDao getRoleDao() {
		return roleDao;
	}

	@Autowired
	public void setRoleDao(RoleDao roleDao) {
		this.roleDao = roleDao;
		super.setBaseDao(roleDao);
	}

	public MenuPermissionDao getMenuPermissionDao() {
		return menuPermissionDao;
	}

	@Autowired
	public void setMenuPermissionDao(MenuPermissionDao menuPermissionDao) {
		this.menuPermissionDao = menuPermissionDao;
	}

	/**
	 * 角色tree
	 */
	public List<EasyuiTreeNode> tree(String id) {
		List<EasyuiTreeNode> tree = new ArrayList<EasyuiTreeNode>();

		List<TsRole> tsrole = roleDao.listAll();
		for (TsRole ts : tsrole) {
			EasyuiTreeNode node = new EasyuiTreeNode();
			node.setId(ts.getRoleId());
			node.setText(ts.getName());
			// 这里省略了子角色的查询,需进一步完善
			tree.add(node);
		}
		return tree;
	}

	/**
	 * 角色datagrid
	 */
	@Override
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg, TsRole role) {
		EasyuiDataGridJson j = new EasyuiDataGridJson();
		List<TsRole> rolelist = roleDao.listPage(dg.getPage(), dg.getRows());
		int totalRows = roleDao.countAll(TsRole.class);

		j.setRows(rolelist);
		j.setTotal((long) totalRows);
		return j;
	}

	/**
	 * 修改角色
	 */
	@Override
	public void updateRole(TsRole rsrole) {
		TsRole ts = roleDao.get(rsrole.getRoleId());

		if (ts.getCreatetime() == null) {
			rsrole.setCreatetime(new Date());
		} else {
			rsrole.setCreatetime(ts.getCreatetime());
		}
		rsrole.setIsdelete(false);
		BeanUtils.copyProperties(rsrole, ts);
		roleDao.saveOrUpdate(ts);
	}

	/**
	 * 菜单menutree
	 */
	public List<EasyuiTreeNode> menutree(String roleId) {

		String hql = "from TsMenuPermission where parentId is null ";
		ArrayList<EasyuiTreeNode> treeAry = new ArrayList<EasyuiTreeNode>();
		List<TsMenuPermission> tsp = menuPermissionDao.listByhql(hql);
		for (TsMenuPermission ts : tsp) {
			EasyuiTreeNode tn = new EasyuiTreeNode();
			tn.setId(ts.getMenuPermissionId());
			tn.setText(ts.getName());
			tn.setState("closed");
			tn.setChildren(this.getChildren(ts.getMenuPermissionId(), roleId));

			treeAry.add(tn);
		}
		return treeAry;
	}

	/**
	 * 递归得到某个节点的子节点 
	 * 
	 * @param id
	 * @param roleId
	 * @return
	 */
	private ArrayList<EasyuiTreeNode> getChildren(String id, String roleId) {
		TsRole role = roleDao.get(roleId);
		String hql = "from TsMenuPermission where parentId='" + id + "'";
		ArrayList<EasyuiTreeNode> treeAry = new ArrayList<EasyuiTreeNode>();
		List<TsMenuPermission> tsp = menuPermissionDao.listByhql(hql);
		for (TsMenuPermission ts : tsp) {
			EasyuiTreeNode tn = new EasyuiTreeNode();
			tn.setId(ts.getMenuPermissionId());
			tn.setText(ts.getName());
			if (role.getTsMenuPermissions().contains(ts)) {
				tn.setChecked(true);
			}
			// tn.setChildren(this.getChildren(ts.getMenuPermissionId()));
			treeAry.add(tn);
		}
		return treeAry;
	}
}
