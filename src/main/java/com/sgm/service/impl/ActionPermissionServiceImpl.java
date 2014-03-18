/**
 * name:ActionPermissionServiceImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/5
 */
package com.sgm.service.impl;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sgm.dao.ActionPermissionDao;
import com.sgm.domain.TsActionPermission;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.service.ActionPermissionService;

@Service(value = "actionPermissionService")
public class ActionPermissionServiceImpl extends
		BaseServiceImpl<TsActionPermission, String> implements
		ActionPermissionService {
	private ActionPermissionDao actionPermissionDao;

	public ActionPermissionDao getActionPermissionDao() {
		return actionPermissionDao;
	}

	@Autowired
	public void setActionPermissionDao(ActionPermissionDao actionPermissionDao) {
		this.actionPermissionDao = actionPermissionDao;
		super.setBaseDao(actionPermissionDao);
	}

	/**
	 * 需要托管的权限action的 datagrid实现方法
	 */
	@Override
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TsActionPermission tsap) {

		EasyuiDataGridJson j = new EasyuiDataGridJson();
		List<TsActionPermission> tsactionlist = actionPermissionDao.listPage(
				dg.getPage(), dg.getRows());
		int totalRows = actionPermissionDao.countAll(TsActionPermission.class);
		j.setTotal((long) totalRows);
		j.setRows(tsactionlist);
		return j;
	}

	/**
	 * 修改权限action
	 */
	@Override
	public void updateTsaction(TsActionPermission tsaction) {
		TsActionPermission tsap = actionPermissionDao.get(tsaction
				.getActionPermissionId());
		tsap.setControllerName(tsaction.getControllerName());
		tsap.setDescription(tsaction.getDescription());
		tsap.setName(tsaction.getName());
		if (tsap.getCreatetime() == null) {
			tsap.setCreatetime(new Date());
		}
		actionPermissionDao.saveOrUpdate(tsap);
	}

}
