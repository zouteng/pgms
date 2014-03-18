/**
 * name:RoleService.java
 * version:1.0
 * Author:zot
 * Date:2013/11/8
 */
package com.sgm.service;

import java.util.List;

import com.sgm.domain.TsRole;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.EasyuiTreeNode;

public interface RoleService extends BaseService<TsRole, String> {

	List<EasyuiTreeNode> tree(String id);

	EasyuiDataGridJson datagrid(EasyuiDataGrid dg, TsRole role);

	void updateRole(TsRole rsrole);

	List<EasyuiTreeNode> menutree(String roleId);

}
