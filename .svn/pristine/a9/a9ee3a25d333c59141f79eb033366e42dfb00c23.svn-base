/**
 * name:MenuPermissionService.java
 * version:1.0
 * Author:zot
 * Date:2013/11/5
 */
package com.sgm.service;

import java.util.List;

import com.sgm.domain.TsMenuPermission;
import com.sgm.dto.MenuPermissionDTO;

public interface MenuPermissionService extends
		BaseService<TsMenuPermission, String> {

	
	List<MenuPermissionDTO> findList(String menuPermissionId);
	public List<TsMenuPermission> getChildren(String pid);
	public void del(String menuPermissionId);
}
