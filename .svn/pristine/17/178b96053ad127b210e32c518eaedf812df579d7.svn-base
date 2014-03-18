/**
 * name:MenuPermissionServiceImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/5
 */
package com.sgm.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sgm.dao.MenuPermissionDao;
import com.sgm.domain.TsMenuPermission;
import com.sgm.domain.TsRole;
import com.sgm.dto.MenuPermissionDTO;
import com.sgm.service.MenuPermissionService;

@Service(value = "menuPermissionService")
public class MenuPermissionServiceImpl extends
		BaseServiceImpl<TsMenuPermission, String> implements
		MenuPermissionService {

	private MenuPermissionDao menuPermissionDao;

	public MenuPermissionDao getMenuPermissionDao() {
		return menuPermissionDao;
	}

	@Autowired
	public void setMenuPermissionDao(MenuPermissionDao menuPermissionDao) {
		this.menuPermissionDao = menuPermissionDao;
		super.setBaseDao(menuPermissionDao);
	}

	@Override
	public List<MenuPermissionDTO> findList(String id) {
		List<MenuPermissionDTO> treegrid = new ArrayList<MenuPermissionDTO>();
		String hql = "from TsMenuPermission t where t.parentId is null ";
		if (id != null && !id.trim().equals("")) {
			hql = "from TsMenuPermission t where t.parentId = '" + id + "'";
		}
		List<TsMenuPermission> tsplist = menuPermissionDao.listByhql(hql);
		for (TsMenuPermission tmp : tsplist) {
			MenuPermissionDTO md = new MenuPermissionDTO();
			BeanUtils.copyProperties(tmp, md);

			if (getChildren(tmp.getMenuPermissionId()).size() > 0) {
				md.setState("closed");
			}
			treegrid.add(md);
		}

		return treegrid;
	}

	@Override
	public List<TsMenuPermission> getChildren(String pid) {
		// TODO Auto-generated method stub
		String hql = "";
		hql = "from TsMenuPermission where parentId = '" + pid + "'";
		List<TsMenuPermission> tsplist = menuPermissionDao.listByhql(hql);
		return tsplist;
	}

	/**
	 * 删除操作
	 */
	public void del(String menuPermissionId) {
		if (menuPermissionId != null) {
			recursiveDelete(menuPermissionId);
		}
	}

	/**
	 * 递归删除菜单
	 * 
	 * @param menuPermissionId
	 */
	private void recursiveDelete(String menuPermissionId) {
		TsMenuPermission tmp = menuPermissionDao.get(menuPermissionId);
		List<TsMenuPermission> tlist = this.getChildren(menuPermissionId);
		if (tlist != null) {
			for (TsMenuPermission tp : tlist) {
				String cid = tp.getMenuPermissionId();
				System.out.println("删除的cid 为：" + cid);
				// menuPermissionDao.deleteObject(tp);
				recursiveDelete(cid);
			}
		}
		
		Set<TsRole> ts = tmp.getTsRoles();
		if (ts.size() > 0) {
			for (TsRole tr : ts) {
				tr.getTsMenuPermissions().remove(tmp);
			}
		}

		menuPermissionDao.delete(TsMenuPermission.class, menuPermissionId);

	}

}
